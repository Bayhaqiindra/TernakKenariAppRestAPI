import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pertemuan10/core/components/custom_text_field.dart';
import 'package:pertemuan10/core/components/spaces.dart';
import 'package:pertemuan10/core/constants/colors.dart';
import 'package:pertemuan10/core/core.dart';
import 'package:pertemuan10/data/model/request/auth/login_request_model.dart';
import 'package:pertemuan10/presentation/admin/admin_confirm_screen.dart';
import 'package:pertemuan10/presentation/auth/bloc/login/login_bloc.dart';
import 'package:pertemuan10/presentation/auth/register_screen.dart';
import 'package:pertemuan10/presentation/buyer/profile/buyer_profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormState> _key;
  bool isShowPassword = false;