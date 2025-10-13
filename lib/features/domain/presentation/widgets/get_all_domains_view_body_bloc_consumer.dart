// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/widgets/custom_error_widget.dart';
import 'package:smart_home/features/domain/manager/get_all_domains_cubit/get_all_domains_cubit.dart';
import 'package:smart_home/features/domain/presentation/widgets/get_all_domains_view_body.dart';

import '../../../../core/functions/error_dialog.dart';

class GetAllDomainsViewBodyBlocConsumer extends StatelessWidget {
  const GetAllDomainsViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllDomainsCubit, GetAllDomainsState>(
      listenWhen: (previous, current) {
        return current is GetAllDomainsFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          getAllDomainsFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      buildWhen: (previous, current) => current is! GetAllDomainsLoading,
      builder: (context, state) {
        return state.when(
          getAllDomainsLoading: () {
            return const Center(child: CircularProgressIndicator());
          },
          getAllDomainsSuccess: (getAllDomainsResponseBody) {
            return GetAllDomainsViewBody(
              getAllDomainsResponseBody: getAllDomainsResponseBody,
            );
          },
          getAllDomainsFailure: (apiErrorModel) {
            return CustomErrorWidget(
              apiErrorModel: apiErrorModel,
              onTryAgain: () {
                BlocProvider.of<GetAllDomainsCubit>(context).getAllDomains();
              },
            );
          },
        );
      },
    );
  }
}
