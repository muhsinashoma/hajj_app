//lib/features/hajj/presentation/pages/home/ten_days_zil_hajj.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/hajj/hajj_cubit.dart';
import '../../cubit/hajj/hajj_state.dart';
//import 'package:hajj_app/core/constants/app_strings.dart';

class TenDaysZilHajjPage extends StatelessWidget {
  const TenDaysZilHajjPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        final lang = state.language;
        final isArabic = lang == "ar";

        return Directionality(
          textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
          child: Scaffold(
            backgroundColor: const Color(0xFFF8F8F8),

            // ================= APP BAR =================
            appBar: AppBar(
              backgroundColor: const Color(0xFF0F4C5C),
              centerTitle: true,
              title: Text(
                lang == "bn"
                    ? "১০ দিন জিলহজ"
                    : lang == "ar"
                        ? "عشر ذي الحجة"
                        : "10 Days of Zil Hajj",
              ),
              elevation: 0,
            ),

            // ================= BODY =================
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildHeader(lang),
                const SizedBox(height: 16),
                _buildDayCard(
                  lang: lang,
                  day: "1",
                  titleBn: "১ম দিন",
                  titleAr: "اليوم الأول",
                  titleEn: "Day 1",
                  descBn: "এই দিনে বেশি বেশি ইবাদত করুন",
                  descAr: "أكثر من العبادة في هذا اليوم",
                  descEn: "Increase worship on this day",
                ),
                _buildDayCard(
                  lang: lang,
                  day: "2",
                  titleBn: "২য় দিন",
                  titleAr: "اليوم الثاني",
                  titleEn: "Day 2",
                  descBn: "দোয়া ও জিকির বৃদ্ধি করুন",
                  descAr: "أكثر من الدعاء والذكر",
                  descEn: "Increase dua and remembrance",
                ),
                _buildDayCard(
                  lang: lang,
                  day: "3",
                  titleBn: "৩য় দিন",
                  titleAr: "اليوم الثالث",
                  titleEn: "Day 3",
                  descBn: "নফল নামাজ বেশি পড়ুন",
                  descAr: "أكثر من الصلاة النافلة",
                  descEn: "Perform extra voluntary prayers",
                ),
                _buildDayCard(
                  lang: lang,
                  day: "4",
                  titleBn: "৪র্থ দিন",
                  titleAr: "اليوم الرابع",
                  titleEn: "Day 4",
                  descBn: "ইস্তেগফার করুন বেশি করে",
                  descAr: "أكثر من الاستغفار",
                  descEn: "Seek forgiveness more",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ================= HEADER =================
  Widget _buildHeader(String lang) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: Text(
        lang == "bn"
            ? "জিলহজ মাসের ১০ দিনের আমল"
            : lang == "ar"
                ? "أعمال عشر ذي الحجة"
                : "Good deeds of first 10 days of Zil Hajj",
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // ================= DAY CARD =================
  Widget _buildDayCard({
    required String lang,
    required String day,
    required String titleBn,
    required String titleAr,
    required String titleEn,
    required String descBn,
    required String descAr,
    required String descEn,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFF0F4C5C),
            child: Text(
              day,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang == "bn"
                      ? titleBn
                      : lang == "ar"
                          ? titleAr
                          : titleEn,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  lang == "bn"
                      ? descBn
                      : lang == "ar"
                          ? descAr
                          : descEn,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
