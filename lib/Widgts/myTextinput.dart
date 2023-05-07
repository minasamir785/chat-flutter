import 'package:chat/Data/Consts.dart';
import 'package:flutter/material.dart';

class myTextInput extends StatelessWidget {
  final String label;
  final IconData myicon;
  final bool next;
  final bool isPassWord;
  final Function validatorFunc;
  final Function onSaveFunc;
  final TextInputType? inputType;

  const myTextInput({
    required this.label,
    required this.myicon,
    required this.next,
    required this.isPassWord,
    required this.inputType,
    required this.validatorFunc,
    required this.onSaveFunc,
  });

  @override
  Widget build(BuildContext context) {
    final _deviceHeight = MediaQuery.of(context).size.height;
    final _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0.01,
      ),
      child: textIn(context),
    );
  }

  Widget textIn(ctx) {
    var boderFouce = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(20),
    );
    return TextFormField(
      onSaved: (newValue) => onSaveFunc(newValue),
      validator: (value) => validatorFunc(value),
      cursorColor: Colors.white,
      obscureText: isPassWord,
      textInputAction: next ? TextInputAction.next : TextInputAction.done,
      keyboardType: inputType,
      style: Theme.of(ctx).textTheme.headline6!.copyWith(color: Colors.white),
      decoration: InputDecoration(
          label: Text(label),
          fillColor: myblack,
          filled: true,
          prefixIcon: Icon(
            myicon,
            color: myWhite,
          ),
          labelStyle: Theme.of(ctx).textTheme.headline6,
          focusedErrorBorder: boderFouce,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: boderFouce),
    );
  }
}
