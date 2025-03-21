import 'package:flutter/material.dart';
import 'package:toiec_learning_app/core/configs/constant.dart';
import 'package:toiec_learning_app/core/configs/reponsive.dart';

class DialogManager {
  static BuildContext? _dialogContext;

  static void show(BuildContext context,
      {required String message, bool isLoading = false}) {
    dismiss();
    showDialog(
      context: context,
      barrierDismissible: !isLoading,
      builder: (BuildContext dialogContext) {
        _dialogContext = dialogContext;
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            padding: EdgeInsets.all(10),
            width: Responsive.width(35, context),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isLoading) ...[
                  SizedBox(
                    height: 50,
                    child: Image.asset(icLoading2, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 20)
                ] else
                  SizedBox(
                    height: 50,
                    child: Image.asset(icError, fit: BoxFit.cover),
                  ),
                const SizedBox(height: 14),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                if (!isLoading) ...[
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () => dismiss(),
                      child: Text("OK",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  static void dismiss() {
    if (_dialogContext != null) {
      if (_dialogContext!.mounted) {
        Navigator.of(_dialogContext!, rootNavigator: true).pop();
      }
      _dialogContext = null;
    }
  }
}
