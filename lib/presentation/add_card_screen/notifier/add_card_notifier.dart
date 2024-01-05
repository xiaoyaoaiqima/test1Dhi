import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:test1/presentation/add_card_screen/models/add_card_model.dart';part 'add_card_state.dart';final addCardNotifier = StateNotifierProvider<AddCardNotifier, AddCardState>((ref) => AddCardNotifier(AddCardState(cardNumberController: TextEditingController(), expirationDateController: TextEditingController(), securityCodeController: TextEditingController(), cardNumberController1: TextEditingController(), addCardModelObj: AddCardModel())));
/// A notifier that manages the state of a AddCard according to the event that is dispatched to it.
class AddCardNotifier extends StateNotifier<AddCardState> {AddCardNotifier(AddCardState state) : super(state);

 }
