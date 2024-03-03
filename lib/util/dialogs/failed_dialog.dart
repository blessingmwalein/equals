import 'package:flutter/material.dart';

class ErrorDialog {
  static Future<bool?> show(BuildContext context, String title, String message,
      String buttonName) async {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 100,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop(true); // Close the dialog
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              buttonName,
                              style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
