import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../utils/constant.dart';
import '../../utils/dimensions.dart';
import '../../utils/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/common_button.dart';
import 'bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: baseColor,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: -screenHeight * 0.0786,
              right: -screenWidth * 0.4370,
              child: Container(
                width: screenWidth * 0.8703,
                height: screenHeight * 0.3368,
                decoration:  ShapeDecoration(
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0xFF00F0FF).withOpacity(0.3),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: Offset(0, 10),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF00F0FF), // Cyan
                      Color(0xFF6C4DFF), // Biru ke ungu
                      Color(0xFFFF46B9), // Pink
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),

                ),
              ),
            ),
            Positioned(
              bottom: -screenHeight * 0.0786,
              left: -screenWidth * 0.4370,
              child: Container(
                width: screenWidth * 0.8703,
                height: screenHeight * 0.3368,
                decoration:  ShapeDecoration(
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0xFF00F0FF).withOpacity(0.3),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: Offset(0, 10),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF00F0FF),
                      Color(0xFF6C4DFF),
                      Color(0xFFFF46B9),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),

                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSizeLarge,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: Dimensions.marginSizeLarge),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Welcome \nBack', style: txtHeadingTitleAuth),
                          Image.asset(
                            logoHashChat,
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                      const SizedBox(height: Dimensions.marginSizeSuperExtraLarge),

                      BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            error: (message) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    message ?? 'Login failed',
                                    style: txtSecondaryTitle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: baseColor,
                                    ),
                                  ),
                                  backgroundColor: redMedium,
                                ),
                              );
                              context.read<AuthBloc>().add(const AuthEvent.reset());
                            },
                            success: (user) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Welcome, ${user.name}!',
                                    style: txtSecondaryTitle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: baseColor,
                                    ),
                                  ),
                                  backgroundColor: greenMedium,
                                ),
                              );
                              context.goNamed('navbar', pathParameters: {'pageIndex': '0'});
                            },
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return CommonButton(
                                text: 'Login with Google',
                                onPressed: () {
                                  context.read<AuthBloc>().add(const AuthEvent.loginWithGoogle());
                                },
                                borderRadius: 10,
                                height: 55,
                                width: MediaQuery.of(context).size.width,
                                fontSize: 18,
                                backgroundColor: Colors.deepPurple,
                              );
                            },
                            loading: () {
                              return CommonButton(
                                text: 'Login with Google',
                                onPressed: () {},
                                borderRadius: 10,
                                height: 55,
                                width: MediaQuery.of(context).size.width,
                                fontSize: 18,
                                widget: LoadingAnimationWidget.staggeredDotsWave(
                                  color: baseColor,
                                  size: 40,
                                ),
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: Dimensions.marginSizeLarge),

                    ],
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
