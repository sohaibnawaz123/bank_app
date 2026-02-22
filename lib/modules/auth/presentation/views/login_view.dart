import 'package:delivery_app/component/app_bar/auth_appbar.dart';
import 'package:delivery_app/component/text/content.dart';
import 'package:delivery_app/component/text_field/label_content_feild.dart';
import 'package:delivery_app/core/resource/app_asset.dart';
import 'package:delivery_app/core/utils/extension/app_edge_insets.dart';
import 'package:delivery_app/core/utils/extension/app_padding.dart';
import 'package:delivery_app/core/utils/extension/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/core/resource/app_color.dart';
import 'package:delivery_app/modules/auth/presentation/blocs/login/login_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LoginView extends StatefulWidget {
  final LoginBloc bloc;
  const LoginView({super.key, required this.bloc});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.primary,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            /// Header
            AuthHeader(
              color: AppColor.white,
              title: 'Sign In',
            ).paddingSymmetric(
              // horizontal: context.pagePadding.left,
              vertical: context.pagePadding.top,
            ),

            /// Bottom Card
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.85,
                padding: EdgeInsets.symmetric(
                  horizontal: context.pagePadding.left,
                  vertical: 20,
                ),

                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),

                /// Scroll safe for keyboard
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(context.pagePadding.left),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Content(
                          data: 'Welcome to us,',
                          textStyle: context.headingText,
                          size: 28,
                        ),
                        const SizedBox(height: 10),
                        Content(
                          data: 'Hello there, create New account',
                          textStyle: context.bodyText,
                        ),

                        const SizedBox(height: 50),
                        Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            AppAsset.loginIcon,
                            width: 100,
                            height: 100,
                          ),
                        ),

                        // add your fields here
                        LabelContentField(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
