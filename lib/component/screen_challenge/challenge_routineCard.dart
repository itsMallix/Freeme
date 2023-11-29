import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_challenge/model_routine.dart';

class BuildRoutineChallenge extends StatelessWidget {
  const BuildRoutineChallenge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<RoutineData> routineData = [
      RoutineData(
        title: "Workout Di Teras Kost",
        description:
            "Mencoba olahraga di terast kost karena masih malu kalau di luar, karena sering pmo dan ini adalah langkah pertama ku",
        start: "1",
        finish: "5",
      ),
      RoutineData(
        title: "Main Game Tidak Toxic",
        description:
            "Bermain game secukupnya, tidak toxic dan jangan lupa komitmen yang sudah ku buat dengan diriku sendiri 2 hari yang lalu",
        start: "1",
        finish: "5",
      ),
      RoutineData(
        title: "Sholat Berjamaah Di Masjid",
        description:
            "Sholat berjamaah untuk mendekatkan diri dengan tuhan dan orang-orang shaleh agar bisa didoakan menjadi yang lebih baik",
        start: "1",
        finish: "5",
      ),
      RoutineData(
        title: "Mandi 3 Kali Sehari",
        description:
            "Jangan malas mandi, karena kebersihan diri itu penting dan cara untuk menghindari penyakit kecanduan PMO",
        start: "1",
        finish: "5",
      ),
      RoutineData(
        title: "Mengatur Pola Makan",
        description:
            "Mencoba mengatur pola makan sehat, utamakan nasi, kurangi gula dan garam, kalau bisa puasa sunnah agar lambung sehat",
        start: "1",
        finish: "5",
      ),
    ];
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      itemCount: routineData.length,
      itemBuilder: (context, index) {
        return Container(
          height: 130,
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorSystem.secondary_grapePurple,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10.0),
                  ),
                  color: ColorSystem.secondary_rajah,
                ),
                child: Transform.scale(
                  scale: 1.8,
                  child: Checkbox(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(2.0),
                      ),
                      side: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    checkColor: ColorSystem.neutral_white,
                    fillColor: MaterialStateProperty.all(
                      ColorSystem.secondary_aztecGold,
                    ),
                    value: false,
                    onChanged: (_) {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      routineData[index].title,
                      style: TypographySystem.subtitle2.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        routineData[index].description,
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 14.0,
                ),
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10.0),
                  ),
                  color: ColorSystem.primary_darkPurple,
                ),
                child: Container(
                  height: 30,
                  width: 10,
                  decoration: BoxDecoration(
                    color: ColorSystem.secondary_rajah,
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        routineData[index].start,
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                        child: Divider(
                          thickness: 3,
                          height: 1,
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                      Text(
                        routineData[index].finish,
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
