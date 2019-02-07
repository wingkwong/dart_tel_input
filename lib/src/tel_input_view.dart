import 'package:flutter/material.dart';
import './tel_input_model.dart';

class TelInputView extends TelInputViewModel {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Column(children: [Container(child: buildTelInputField(context))]));
  }
}
