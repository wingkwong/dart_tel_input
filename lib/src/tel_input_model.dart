import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './tel_input_data.dart';
import './tel_input.dart';

abstract class TelInputViewModel extends State<TelInput> {
  String _selectedDialCode;
  String _phoneNumberHintText;
  String _phoneNumber;
  final String _defaultDialCode = '+852';
  final Map<String, String> _dialCodeHintTextMapping = TelInputData().getDialCodeHintTextMapping();
  final List<String> _validDialCodes = TelInputData().getValidDialCode();

  @override
  void initState() {
    super.initState();
    _selectedDialCode = ![null, false].contains(widget.dialCode) ? widget.dialCode : _defaultDialCode;

    if(!_selectedDialCode.startsWith('+')) {
      _selectedDialCode = '+' + _selectedDialCode;
    }

    if(!_validDialCodes.contains(_selectedDialCode)) {
      throw new Exception('Invalid Dial Code');
    }

    String val = _getHintTextByDialCode();
    _updatePhoneNumberHintText(val);
  }

  Widget buildTelSelectInputField(BuildContext context) {
    List<TelInputCountry> countries = TelInputData().getTelInputData();

    return (
        new DropdownButton<String>(
          hint: Text("Dial Code"),
          value: _selectedDialCode,
          items: countries.map((TelInputCountry country){
            String name = country.name;
            String dialCode = "+" + country.dialCode;
            return new DropdownMenuItem<String>(
              value: dialCode,
              child:  new SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: new Text(
                    name + ' ' + dialCode
                  )
              ),
            );
          }).toList(),
          onChanged: (String val) {
            _onSelectChange(val);
          },
        )
    );
  }

  Widget buildTelInputField(BuildContext context) {
    return (
      TextField(
        onChanged: (String val) => _onTextChange(val),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: _phoneNumberHintText
        )
      )
    );
  }

  void _onSelectChange(String val) {
    setState(() {
      _selectedDialCode = val;
    });

    _updatePhoneNumberHintText(val);
  }

  void _onTextChange(String val) {
    _phoneNumber = val;

    if(widget.onChange is Function) {
      widget.onChange(_phoneNumber);
    }
  }

  void _updatePhoneNumberHintText(val) {
    _phoneNumberHintText = val;
  }

  String _getHintTextByDialCode() {
    return ![null, false].contains(_dialCodeHintTextMapping[_selectedDialCode]) ? _dialCodeHintTextMapping[_selectedDialCode] : _dialCodeHintTextMapping[_defaultDialCode];
  }
}