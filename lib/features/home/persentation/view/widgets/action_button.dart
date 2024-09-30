import 'package:bookly_app/features/home/persentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
              ),
              backgroundColor: Colors.white,
              colorText: Colors.black,
              text: 'free',
            ),
          ),
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
              ),
              backgroundColor: Color(0xffEF8262),
              colorText: Colors.white,
              text: 'free preveiw',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
