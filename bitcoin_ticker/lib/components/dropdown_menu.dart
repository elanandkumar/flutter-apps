import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';

class DropdownMenu extends StatefulWidget {
  DropdownMenu({ @required this.data, this.handleOnChange });

  final Function handleOnChange;
  final List<String> data;

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String selectedCurrency = 'AUD';

androidDropDown() {
  List<DropdownMenuItem<String>> dropdownItems = [];

    for(int i = 0; i < widget.data.length; i++ ){
      final String currency = widget.data[i];
      var newItem = DropdownMenuItem(child: Text(currency), value: currency);
      dropdownItems.add(newItem);
    }

return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });

        if(widget.handleOnChange != null) {
          widget.handleOnChange(value);
        }
      },
    );
}

CupertinoPicker iOSPicker(){
    List<Text> pickerItems = [];
    for (String currency in widget.data) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.teal,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        String value = widget.data[selectedIndex];

        if(widget.handleOnChange != null) {
          widget.handleOnChange(value);
        }
      },
      children: pickerItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? iOSPicker() : androidDropDown();
  }
}