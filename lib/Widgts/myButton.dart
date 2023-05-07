import 'package:chat/Data/Consts.dart';
import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String label;
  final Function func;
  const myButton({
    required this.label,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    final _deviceHeight = MediaQuery.of(context).size.height;
    final _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: _deviceWidth * 0.65,
      height: _deviceHeight * 0.085,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          onPressed: () => func(),
          style: ButtonStyle(
            backgroundColor: buttonState,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
