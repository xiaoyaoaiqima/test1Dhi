import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:test1/presentation/change_password_screen/models/change_password_model.dart';part 'change_password_state.dart';final changePasswordNotifier = StateNotifierProvider<ChangePasswordNotifier, ChangePasswordState>((ref) => ChangePasswordNotifier(ChangePasswordState(passwordController: TextEditingController(), newpasswordController: TextEditingController(), newpasswordController1: TextEditingController(), changePasswordModelObj: ChangePasswordModel())));
/// A notifier that manages the state of a ChangePassword according to the event that is dispatched to it.
class ChangePasswordNotifier extends StateNotifier<ChangePasswordState> {ChangePasswordNotifier(ChangePasswordState state) : super(state);

 }
