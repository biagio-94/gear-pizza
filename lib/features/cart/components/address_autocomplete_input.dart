import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_google_places_hoc081098/google_maps_webservice_places.dart';
import 'package:gearpizza/common/components/custom_input.dart';

class AddressAutocompleteInput extends StatefulWidget {
  final TextEditingController? controller;

  const AddressAutocompleteInput({Key? key, this.controller}) : super(key: key);

  @override
  State<AddressAutocompleteInput> createState() =>
      _AddressAutocompleteInputState();
}

class _AddressAutocompleteInputState extends State<AddressAutocompleteInput>
    with TickerProviderStateMixin {
  late final TextEditingController _autocompleteController;
  final FocusNode _focusNode = FocusNode();
  final GoogleMapsPlaces _places =
      GoogleMapsPlaces(apiKey: dotenv.env['GOOGLE_PLACES_API_KEY']);
  List<Prediction> _suggestions = [];
  OverlayEntry? _overlayEntry;
  Timer? _debounce;

  // Controllers for prefilled fields
  final _streetController = TextEditingController();
  final _numberController = TextEditingController();
  final _cityController = TextEditingController();
  final _capController = TextEditingController();
  final _provinceController = TextEditingController();

  bool _showFields = false;

  @override
  void initState() {
    super.initState();
    _autocompleteController = widget.controller ?? TextEditingController();
    _focusNode.addListener(_onFocusChanged);
    _autocompleteController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _removeOverlay();
    if (widget.controller == null) {
      _autocompleteController.dispose();
    }
    _streetController.dispose();
    _numberController.dispose();
    _cityController.dispose();
    _capController.dispose();
    _provinceController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    if (!_focusNode.hasFocus) return;
    if (_showFields) {
      setState(() {
        _showFields = false;
        _suggestions.clear();
        _streetController.clear();
        _numberController.clear();
        _cityController.clear();
        _capController.clear();
        _provinceController.clear();
      });
    }

    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () async {
      final input = _autocompleteController.text;
      if (input.isEmpty) {
        setState(() => _suggestions.clear());
        _removeOverlay();
        return;
      }

      final res = await _places.autocomplete(
        input,
        language: 'it',
        components: [Component(Component.country, 'it')],
      );

      if (res.isOkay) {
        setState(() => _suggestions = res.predictions);
        _showOverlay();
      }
    });
  }

  void _onFocusChanged() {
    if (!_focusNode.hasFocus) _removeOverlay();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _showOverlay() {
    if (_showFields) return;
    _overlayEntry?.remove();
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height + 5,
        width: size.width,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: _suggestions.length,
            itemBuilder: (context, index) {
              final prediction = _suggestions[index];
              return ListTile(
                leading: Icon(Icons.location_on,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text(prediction.description ?? ''),
                onTap: () async {
                  _autocompleteController.text = prediction.description ?? '';
                  _removeOverlay();
                  _suggestions.clear();
                  _focusNode.unfocus();

                  final details =
                      await _places.getDetailsByPlaceId(prediction.placeId!);
                  if (details.status == 'OK') {
                    _fillAddressFields(details.result.addressComponents);
                    setState(() => _showFields = true);
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void _fillAddressFields(List<AddressComponent> components) {
    for (var c in components) {
      if (c.types.contains('route')) _streetController.text = c.longName;
      if (c.types.contains('street_number'))
        _numberController.text = c.longName;
      if (c.types.contains('locality')) _cityController.text = c.longName;
      if (c.types.contains('postal_code')) _capController.text = c.longName;
      if (c.types.contains('administrative_area_level_2'))
        _provinceController.text = c.longName;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextInput(
          labelText: 'Cerca indirizzo...',
          controller: _autocompleteController,
          focusNode: _focusNode,
          enabled: true,
          validator: (_) => null,
        ),
        const SizedBox(height: 16),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: _showFields
              ? Column(
                  children: [
                    CustomTextInput(
                      labelText: 'Via',
                      controller: _streetController,
                      enabled: false,
                      validator: (_) => null,
                    ),
                    CustomTextInput(
                      labelText: 'Numero',
                      controller: _numberController,
                      enabled: false,
                      validator: (_) => null,
                    ),
                    CustomTextInput(
                      labelText: 'Città',
                      controller: _cityController,
                      enabled: false,
                      validator: (_) => null,
                    ),
                    CustomTextInput(
                      labelText: 'CAP',
                      controller: _capController,
                      enabled: false,
                      validator: (_) => null,
                    ),
                    CustomTextInput(
                      labelText: 'Provincia',
                      controller: _provinceController,
                      enabled: false,
                      validator: (_) => null,
                    ),
                  ],
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}
