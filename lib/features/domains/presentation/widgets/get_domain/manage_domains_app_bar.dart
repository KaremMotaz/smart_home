import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/core/theming/app_styles.dart';
import 'package:smart_home/features/domains/manager/get_all_domains_cubit/get_all_domains_cubit.dart';

class ManageDomainsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ManageDomainsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Projects", style: AppStyles.bold18),
      backgroundColor: Colors.white,
      actions: [
        TextButton(
          onPressed: () async {
            final result = await context.push(Routes.addDomainView);
            if (result == true) {
              if (context.mounted) {
                context.read<GetAllDomainsCubit>().getAllDomains();
              }
            }
          },
          child: Text(
            "Create Project",
            style: AppStyles.bold18.copyWith(color: AppColors.grey),
          ),
        ),
      ],
      leading: Navigator.of(context).canPop()
          ? IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios, size: 20),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
