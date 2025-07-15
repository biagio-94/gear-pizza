import 'package:flutter/material.dart';

class PhonePrefixInput extends StatefulWidget {
  final TextEditingController prefixController;
  final TextEditingController numberController;
  final ValueChanged<String>? onChanged;

  const PhonePrefixInput({
    super.key,
    required this.prefixController,
    required this.numberController,
    this.onChanged,
  });

  @override
  State<PhonePrefixInput> createState() => _PhonePrefixInputState();
}

class _PhonePrefixInputState extends State<PhonePrefixInput> {
  String selectedCountryCode = '+39';
  String selectedFlag = '🇮🇹';

  String? errorText;

  final List<Map<String, String>> countries = [
    {'code': '+1', 'flag': '🇺🇸'},
    {'code': '+39', 'flag': '🇮🇹'},
    {'code': '+91', 'flag': '🇮🇳'},
    {'code': '+44', 'flag': '🇬🇧'},
  ];

  @override
  void initState() {
    super.initState();
    widget.prefixController.text = selectedCountryCode;
  }

  void _showCountryPicker() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ListView(
        children: countries.map((country) {
          return ListTile(
            leading: Text(country['flag'] ?? ''),
            title: Text(country['code'] ?? ''),
            onTap: () {
              setState(() {
                selectedCountryCode = country['code']!;
                selectedFlag = country['flag']!;
                widget.prefixController.text = selectedCountryCode;
              });
              Navigator.pop(context);
            },
          );
        }).toList(),
      ),
    );
  }

  void _validate(String value) {
    String? message;
    if (value.isEmpty) {
      message = 'Numero obbligatorio';
    } else if (!RegExp(r'^\d+$').hasMatch(value)) {
      message = 'Il numero può contenere solo cifre';
    } else if (value.length != 10) {
      message = 'Il numero deve contenere esattamente 10 cifre';
    }
    setState(() {
      errorText = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:
          BorderSide(color: colorScheme.onSurface.withOpacity(0.4), width: 1.0),
    );

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: _showCountryPicker,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: colorScheme.onSurface.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Text(selectedFlag, style: const TextStyle(fontSize: 20)),
                      const SizedBox(width: 8),
                      Text(selectedCountryCode,
                          style: TextStyle(color: colorScheme.onSurface)),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextFormField(
                  controller: widget.numberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Numero di telefono',
                    filled: true,
                    fillColor: colorScheme.surface,
                    border: border,
                    enabledBorder: border,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    // Non mostrare errori nel campo numero
                    errorText: null,
                  ),
                  onChanged: (value) {
                    _validate(value);
                    if (widget.onChanged != null) widget.onChanged!(value);
                  },
                ),
              ),
            ],
          ),
          if (errorText != null)
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 12, right: 12),
              child: Text(
                errorText!,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.error, fontSize: 12),
                textAlign: TextAlign.left,
              ),
            ),
        ],
      ),
    );
  }
}
