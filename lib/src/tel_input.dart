import 'package:flutter/material.dart';
import './tel_input_view.dart';

class TelInput extends StatefulWidget {
  TelInput({this.onChange, this.dialCode, this.includeDialCode});

  final Function onChange;
  final String dialCode;
  final bool includeDialCode;

  @override
  TelInputView createState() => TelInputView();
}
