import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';

class DoctorDescription extends StatefulWidget {
  final String descrition;
  const DoctorDescription({super.key, required this.descrition});

  @override
  State<DoctorDescription> createState() => _DoctorDescriptionState();
}

class _DoctorDescriptionState extends State<DoctorDescription> {
  late String firstHalf;

  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.descrition.length > 50) {
      firstHalf = widget.descrition.substring(0, 130);
      secondHalf = widget.descrition.substring(130, widget.descrition.length);
    } else {
      firstHalf = widget.descrition;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About doctor',
          style: TextStyles.semibold22.textColor(),
        ),
        const SizedBox(
          height: 10,
        ),
        secondHalf.isEmpty
            ? Text(firstHalf)
            : Column(
                children: <Widget>[
                  Text(flag ? ("$firstHalf...") : (firstHalf + secondHalf)),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          flag ? "show more" : "show less",
                          style: TextStyle(color: AppColors.accent()),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(
                        () {
                          flag = !flag;
                        },
                      );
                    },
                  ),
                ],
              ),
      ],
    );
  }
}
