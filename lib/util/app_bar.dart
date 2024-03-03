import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/dialogs/success_dialog.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key, required this.title, this.bottom});

  final String title;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
      elevation: 0,
      actions: [
        // title == 'KYC Update'
        //     ? TextButton(
        //         onPressed: () async {
        //           bool? result = await SuccessDialog.show(
        //               context,
        //               'KYC Update Successful',
        //               'Your KYC has been updated successfully.You will receive an SMS with amount which  you qualify for.',
        //               'NEXT');

        //           if (result != null && result) {
        //             // print('svika');
        //             context.router.push(const HomeRoute());
        //           }
        //         },
        //         child: const Text(
        //           'DONE',
        //           style: TextStyle(color: Colors.white),
        //         ))
        //     : Container(),
        PopupMenuButton<String>(
          color: primaryWhite,
          padding: const EdgeInsets.all(0),
          onSelected: (String result) {
            // Handle the selection from the popup menu
            if (result == 'settings') {
              // Navigate to the settings screen
              // context.router.popAndPush(const SettingsRoute());
            } else if (result == 'updateKyc') {
              context.router.push(const KycUpdateRoute());
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'settings',
              padding: const EdgeInsets.all(0),
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                color: Colors.white,
                child: const ListTile(
                  title: Text('Settings'),
                ),
              ),
            ),
          ],
        ),
        // const SizedBox(width: 10),
      ],
      title: Text(
        title,
        style: const TextStyle(
          color: primaryWhite,
          fontSize: 20,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      bottom: bottom, // Set the color of the back icon
    );
  }
}
