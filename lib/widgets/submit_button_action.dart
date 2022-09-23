import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/custom_text.dart';

typedef SubmitFunction = void Function();

class SubmitButtonAction extends StatelessWidget {
  final SubmitFunction _submit;

  const SubmitButtonAction({
    required Function() submit,
    super.key,
  }) : _submit = submit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SizedBox(
        height: 50,
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: _submit,
          style: _getButtonStyle(),
          child: const CustomText(
            color: Colors.white,
            fontSize: 20,
            text: 'Submit recipe',
          ),
        ),
      ),
    );
  }

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: AppColors.pastelPink,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        AppColors.pastelPink,
      ),
    );
  }
}
