import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                //  padding: const EdgeInsets.all(14),
                // width: 60,
                // height: 60,
                decoration: ShapeDecoration(
                  color: imageBackground ?? const Color(0XFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0XFF4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(Icons.arrow_back_ios_new_outlined,
              color: imageColor == null
                  ? const Color(0XFF064061)
                  : Colors.white //Color(0XFF064061),
              ),
        ),
      ],
    );
  }
}
