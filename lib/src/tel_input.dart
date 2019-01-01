import 'package:flutter/material.dart';
import './tel_input_view.dart';

class TelInput extends StatefulWidget {
  TelInput({
    this.onChange,
    this.dialCode
  });

  final Function onChange;
  final String dialCode;

  @override
  TelInputView createState() => TelInputView();
}