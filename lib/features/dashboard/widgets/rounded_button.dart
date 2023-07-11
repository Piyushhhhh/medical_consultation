import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/text_styles.dart';

class RoundedButton extends StatefulWidget {
  final String? label;
  final IconData? icons;
  final Color? color;
  final Function()? ontap;
  const RoundedButton(
      {super.key, this.label, this.icons, this.color, this.ontap});

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.ontap,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(78)),
              child: Icon(
                widget.icons ?? Icons.ac_unit,
                size: 30,
                color: widget.color,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.label ?? '',
            style: TextStyles.semibold14.withFadeText(),
          )
        ],
      ),
    );
  }
}
