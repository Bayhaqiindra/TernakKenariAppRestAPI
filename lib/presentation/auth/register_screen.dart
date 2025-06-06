import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pertemuan10/core/components/buttons.dart';
import 'package:pertemuan10/core/components/custom_text_field.dart';
import 'package:pertemuan10/core/components/spaces.dart';
import 'package:pertemuan10/core/constants/colors.dart';
import 'package:pertemuan10/core/core.dart';
import 'package:pertemuan10/data/model/request/auth/register_request_model.dart';
import 'package:pertemuan10/presentation/auth/bloc/register/register_bloc.dart';
import 'package:pertemuan10/presentation/auth/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController namaController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormState> _key;
  bool isShowPassword = false;
