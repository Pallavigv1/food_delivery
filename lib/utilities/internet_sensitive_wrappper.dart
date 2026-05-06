import "package:flutter/material.dart";

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:food_delivery/pages/no_wifi.dart';

class InternetSensitiveWrappper extends StatelessWidget {
  final Widget child;
  const InternetSensitiveWrappper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ConnectivityResult>>(
      stream: Connectivity().onConnectivityChanged,

      builder: (context, snapshot) {
        // if (!snapshot.hasData) {
        //   return NoWifi(onRetry: () {});
        // }
        final hasInternet =
            snapshot.data?.contains(ConnectivityResult.mobile) == true ||
            snapshot.data?.contains(ConnectivityResult.wifi) == true;

        return Stack(
          children: [
            child,
            if (!hasInternet) NoWifi(onRetry: () {}),
          ],
        );
      },
    );
  }
}
