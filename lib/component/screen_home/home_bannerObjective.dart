import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class BannerObjective extends StatelessWidget {
  const BannerObjective({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff412871),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: ColorSystem.primary_electricIndigo,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 5),
            SvgPicture.asset("assets/images/component/blink.svg"),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                  width: 280,
                  child: Row(
                    children: [
                      Text(
                        "Misi Objektif",
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ColorSystem.primary_darkPurple.withOpacity(
                            0.5,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.paid_rounded,
                              size: 15,
                              color: ColorSystem.primary_pastelOrange,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              "100",
                              style: TypographySystem.caption
                                  .copyWith(color: ColorSystem.neutral_white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 20,
                  width: 280,
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width * 0.55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 20,
                        width: 40,
                        child: Text(
                          "0/5",
                          style: TypographySystem.subtitle2.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
