import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0XFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title, //'Lekan Okeowo',
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.subTitle, //   'demo@gmail.com',
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
