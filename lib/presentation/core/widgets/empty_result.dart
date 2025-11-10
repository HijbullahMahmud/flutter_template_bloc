import 'package:apple_gadgets/application/assets_utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyResultView extends StatelessWidget {
  final String? message;
  final VoidCallback? onRetryPressed;
  final TextStyle? messageTextStyle;
  const EmptyResultView({
    super.key,
    this.message,
    this.onRetryPressed,
    this.messageTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.sizeOf(context);
    return Container(
      // color: Colors.amber,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(AssetsUtils.emptyResult, height: 150, width: 150),
          Text(
            message ?? '',
            textAlign: TextAlign.center,
            style: messageTextStyle ?? Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: onRetryPressed != null,
            child: ElevatedButton(
              onPressed: onRetryPressed,
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              child: const Text("Retry"),
            ),
          ),
        ],
      ),
    );
  }
}
