import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:my_eccommerce_user/core/assets/app_lottie_assets.dart';
import 'package:my_eccommerce_user/core/request_status.dart';

class RequestStatusView extends StatelessWidget {
  const RequestStatusView(
      {super.key,
      required this.requestStatus,
      required this.child,
      required this.onErrorTap});

  final RequestStatus requestStatus;
  // if the request if success or none
  final Widget child;
  final void Function() onErrorTap;

  @override
  Widget build(BuildContext context) {
    double lottieHeight = Get.height * 0.4;
    BorderRadius borderRadius = BorderRadius.circular(15);
    switch (requestStatus) {
      case RequestStatus.loading:
        return SizedBox(
            height: Get.height,
            child: Center(
                child: Lottie.asset(AppLottieAssets.loading,
                    height: lottieHeight)));
      case RequestStatus.empty:
        return SizedBox(
            height: Get.height,
            child: Center(
                child:
                    Lottie.asset(AppLottieAssets.empty, height: lottieHeight)));
      case RequestStatus.internetConnectionError:
        return SizedBox(
          height: Get.height,
          child: Center(
            child: InkWell(
              borderRadius: borderRadius,
              onTap: onErrorTap,
              child:
                  Lottie.asset(AppLottieAssets.offline, height: lottieHeight),
            ),
          ),
        );
      case RequestStatus.serverError:
        return SizedBox(
          height: Get.height,
          child: Center(
            child: InkWell(
                borderRadius: borderRadius,
                onTap: onErrorTap,
                child: Lottie.asset(AppLottieAssets.serverError,
                    height: lottieHeight)),
          ),
        );
      case RequestStatus.serverException:
        return SizedBox(
          height: Get.height,
          child: Center(
            child: InkWell(
                borderRadius: borderRadius,
                onTap: onErrorTap,
                child: Lottie.asset(AppLottieAssets.serverError, height: 200)),
          ),
        );

      default:
        return child;
    }
  }
}
