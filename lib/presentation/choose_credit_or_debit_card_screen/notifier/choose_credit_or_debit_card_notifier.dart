import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/user_item_model.dart';import 'package:test1/presentation/choose_credit_or_debit_card_screen/models/choose_credit_or_debit_card_model.dart';part 'choose_credit_or_debit_card_state.dart';final chooseCreditOrDebitCardNotifier = StateNotifierProvider<ChooseCreditOrDebitCardNotifier, ChooseCreditOrDebitCardState>((ref) => ChooseCreditOrDebitCardNotifier(ChooseCreditOrDebitCardState(sliderIndex: 0, chooseCreditOrDebitCardModelObj: ChooseCreditOrDebitCardModel(userItemList: List.generate(1, (index) => UserItemModel())))));
/// A notifier that manages the state of a ChooseCreditOrDebitCard according to the event that is dispatched to it.
class ChooseCreditOrDebitCardNotifier extends StateNotifier<ChooseCreditOrDebitCardState> {ChooseCreditOrDebitCardNotifier(ChooseCreditOrDebitCardState state) : super(state);

 }
