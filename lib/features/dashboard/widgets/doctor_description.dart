import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/features/dashboard/provider/dashboard_provider.dart';
import 'package:medical_consultation/features/shared/notifiers/base_provider.dart';
import 'package:medical_consultation/features/shared/widgets/error_snack_bar.dart';
import 'package:provider/provider.dart';

class DoctorDescription extends StatefulWidget {
  final String descrition;
  const DoctorDescription({super.key, required this.descrition});

  @override
  State<DoctorDescription> createState() => _DoctorDescriptionState();
}

class _DoctorDescriptionState extends State<DoctorDescription> {
  DashboardProvider dashboardProvider = DashboardProvider();
  late String firstHalf;

  late String secondHalf;

  @override
  void initState() {
    super.initState();
    // spliting the description text so if the text is long see seemore button
    if (widget.descrition.length > 130) {
      firstHalf = widget.descrition.substring(0, 130);
      secondHalf = widget.descrition.substring(130, widget.descrition.length);
    } else {
      firstHalf = widget.descrition;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseProvider.value(
      value: dashboardProvider,
      onError: (notifier, message) =>
          buildErrorSnackBar(context, message: message),
      builder: (context, child) {
        return Consumer<DashboardProvider>(
          builder: (context, provider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.aboutDoctor,
                  style: TextStyles.semibold22.textColor(),
                ),
                const SizedBox(
                  height: 10,
                ),
                secondHalf.isEmpty
                    ? Text(firstHalf)
                    : Column(
                        children: <Widget>[
                          Text(
                              provider.isDoctorDescriptionTextExtended
                                  ? ("$firstHalf...")
                                  : (firstHalf + secondHalf),
                              style: TextStyles.regular16.withFadeText()),
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  provider.isDoctorDescriptionTextExtended
                                      ? Strings.showMore
                                      : Strings.showLess,
                                  style: TextStyle(color: AppColors.accent()),
                                ),
                              ],
                            ),
                            onTap: () {
                              dashboardProvider
                                  .switchDoctorDescriptionTextExtended();
                            },
                          ),
                        ],
                      ),
              ],
            );
          },
        );
      },
    );
  }
}
