import 'package:delivery_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:delivery_app/core/constant/app_url.dart';
import 'package:delivery_app/core/network/network.dart';
import 'package:delivery_app/core/network/network_service.dart';
import 'package:delivery_app/modules/onboarding/data/datasource/onboarding_remote_data_source.dart';
import 'package:delivery_app/modules/onboarding/data/datasource/onboarding_remote_data_source_impl.dart';
import 'package:delivery_app/modules/onboarding/data/rest_api/onboarding_rest_api_repo.dart';
import 'package:delivery_app/modules/onboarding/domain/repository/onboarding_repo.dart';
import 'package:delivery_app/modules/onboarding/domain/usecase/onboarding_use_case.dart';
import 'package:delivery_app/modules/onboarding/presentation/blocs/onboarding/onboarding_bloc.dart';
import 'package:delivery_app/modules/onboarding/presentation/routes/onboarding_view_initial_params.dart';

import 'package:delivery_app/modules/auth/data/datasource/login_remote_data_source.dart';
import 'package:delivery_app/modules/auth/data/datasource/login_remote_data_source_impl.dart';
import 'package:delivery_app/modules/auth/data/rest_api/login_rest_api_repo.dart';
import 'package:delivery_app/modules/auth/domain/repository/login_repo.dart';
import 'package:delivery_app/modules/auth/domain/usecase/login_use_case.dart';
import 'package:delivery_app/modules/auth/presentation/blocs/login/login_bloc.dart';
import 'package:delivery_app/modules/auth/presentation/routes/login_view_initial_params.dart';

void getInstance(BuildContext context) {
  getIt = GetIt.instance;
  getIt.registerSingleton<Network>(NetworkService());
  getIt.registerSingleton<AppUrl>(AppUrl());

  // <<<<<<<<<<<<<<<<<<<<<<<  Onboarding  >>>>>>>>>>>>>>>>>>>>>>>
  getIt.registerSingleton<OnboardingRemoteDataSource>(
    OnboardingRemoteDataSourceImpl(getIt(), getIt()),
  );

  getIt.registerSingleton<OnboardingRepo>(OnboardingRestApiRepo(getIt()));

  getIt.registerSingleton<OnboardingUseCase>(OnboardingUseCase(getIt()));

  getIt.registerFactoryParam<
    OnboardingBloc,
    OnboardingViewInitialParams,
    dynamic
  >((params, _) => OnboardingBloc(params, getIt()));
  // <<<<<<<<<<<<<<<<<<<<<<<  Login  >>>>>>>>>>>>>>>>>>>>>>>
  getIt.registerSingleton<LoginRemoteDataSource>(
    LoginRemoteDataSourceImpl(getIt(), getIt()),
  );

  getIt.registerSingleton<LoginRepo>(LoginRestApiRepo(getIt()));

  getIt.registerSingleton<LoginUseCase>(LoginUseCase(getIt()));

  getIt.registerFactoryParam<LoginBloc, LoginViewInitialParams, dynamic>(
    (params, _) => LoginBloc(params, getIt()),
  );
}
