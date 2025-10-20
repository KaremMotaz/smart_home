// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/core/theming/app_styles.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.darkerBlue, AppColors.darkBlue, AppColors.brown],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              children: [
                // ===== Header Section =====
                const SizedBox(height: 20),
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                    color: AppColors.orange2,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.home_rounded,
                    color: Colors.white,
                    size: 55,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Smart Home",
                  style: AppStyles.bold30.copyWith(
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Automate your life with style and simplicity.",
                  style: AppStyles.regular14.copyWith(
                    color: AppColors.lightGrey,
                  ),
                ),
                const SizedBox(height: 40),

                // ===== App Description Card =====
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Smart Home",
                        style: AppStyles.bold22.copyWith(
                          color: AppColors.orange2,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Smart Home is an intelligent automation platform "
                        "that lets you control lighting, climate, and security "
                        "from anywhere. Designed with clean architecture "
                        "and built for efficiency, it ensures your comfort "
                        "and safety with one touch.",
                        style: AppStyles.regular14.copyWith(
                          color: AppColors.lightGrey,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 35),

                // ===== Info Section =====
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.white.withOpacity(0.15)),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  child: const Column(
                    children: [
                      _InfoRow(
                        icon: Icons.update,
                        title: "Version",
                        value: "2.1.0",
                      ),
                      Divider(color: Colors.white24, height: 24),
                      _InfoRow(
                        icon: Icons.engineering_rounded,
                        title: "Developed by",
                        value: "Karem Motaz",
                      ),
                      Divider(color: Colors.white24, height: 24),
                      _InfoRow(
                        icon: Icons.email_outlined,
                        title: "Contact",
                        value: "support@smarthome.io",
                      ),
                      Divider(color: Colors.white24, height: 24),
                      _InfoRow(
                        icon: Icons.language_rounded,
                        title: "Website",
                        value: "www.smarthome.io",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // ===== Footer =====
                Column(
                  children: [
                    Text(
                      "© 2025 Smart Home Technologies",
                      style: AppStyles.medium14.copyWith(
                        color: AppColors.lightGrey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "All rights reserved",
                      style: AppStyles.regular12.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.orange2, size: 22),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            title,
            style: AppStyles.semiBold16.copyWith(color: Colors.white),
          ),
        ),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.end,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.regular14.copyWith(color: AppColors.lightGrey),
          ),
        ),
      ],
    );
  }
}
