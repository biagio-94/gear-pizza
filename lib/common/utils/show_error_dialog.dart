import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/utils/services_setup.dart';

void showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.2),
    useRootNavigator: false, // rimane nel Navigator interno
    builder: (ctx) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: ErrorDialogContent(message: message),
      ),
    ),
  );
}

class ErrorDialogContent extends StatefulWidget {
  final String message;

  const ErrorDialogContent({super.key, required this.message});

  @override
  ErrorDialogContentState createState() => ErrorDialogContentState();
}

class ErrorDialogContentState extends State<ErrorDialogContent> {
  bool _showIcon = false;

  @override
  void initState() {
    super.initState();
    // Callback asincrono che rispetta il mounted check
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (!mounted) return;
      setState(() => _showIcon = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showIcon
        ? SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 18.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'ERRORE',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  widget.message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Svuota l'eccezione e chiude solo il dialog
                    getIt<ExceptionBloc>().clearException();
                    Navigator.of(context, rootNavigator: false).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Chiudi',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        : SizedBox(
            height: 200, // altezza fissa per l'animazione
            child: Center(
              child: Lottie.asset(
                'assets/animations/errorAnimation.json',
                fit: BoxFit.contain,
              ),
            ),
          );
  }
}
