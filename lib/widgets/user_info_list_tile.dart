import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0XFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title, //'Lekan Okeowo',
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle, //   'demo@gmail.com',
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
