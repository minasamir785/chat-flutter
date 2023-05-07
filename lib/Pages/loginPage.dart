// // ignore_for_file: deprecated_member_use

// import 'package:chat/Data/Consts.dart';
// import 'package:chat/Providers/authenticationProvider.dart';
// import 'package:chat/Services/navigation.dart';
// import 'package:chat/Widgts/myButton.dart';
// import 'package:chat/Widgts/myTextinput.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class LoginPage extends StatelessWidget {
//   late String _email;
//   late String _password;
//   late double _deviceHeight;
//   late double _deviceWidth;
//   late AuthenticationProvider _auth;
//   late NavigationService _navigationService;
//   static const routename = "/LoginPage";
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     _auth = Provider.of<AuthenticationProvider>(context);
//     _deviceHeight = MediaQuery.of(context).size.height;
//     _deviceWidth = MediaQuery.of(context).size.width;

//     return buildUi(context);
//   }

//   Widget buildUi(ctx) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.symmetric(
//           vertical: _deviceHeight * 0.02,
//           horizontal: _deviceWidth * 0.03,
//         ),
//         width: _deviceWidth * 0.97,
//         height: _deviceHeight * 0.98,
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: childernUi(ctx),
//         ),
//       ),
//     );
//   }

//   List<Widget> childernUi(ctx) {
//     return [
//       Text(
//         "WhatsApp",
//         style: Theme.of(ctx).textTheme.headline3,
//       ),
//       const SizedBox(
//         height: 50,
//       ),
//       Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             ..._textFields(ctx),
//             myButton(
//               func: () => _submit(ctx),
//               label: "Login",
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text("Don't have an account?"),
//             ),
//           ],
//         ),
//       )
//     ];
//   }

//   List<Widget> _textFields(ctx) {
//     return [
//       myTextInput(
//         onSaveFunc: (value) {
//           _email = value;
//         },
//         validatorFunc: (value) {
//           if (RegExp(
//                   r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//               .hasMatch(value)) {
//             return null;
//           }
//           return "Enter a valid Email please.";
//         },
//         isPassWord: false,
//         inputType: TextInputType.emailAddress,
//         label: "Email",
//         myicon: Icons.person,
//         next: true,
//       ),
//       myTextInput(
//         onSaveFunc: (value) {
//           _password = value;
//         },
//         validatorFunc: (String value) {
//           if (value.length >= 6) {
//             return null;
//           }
//           return "Enter at least 6 characters please.";
//         },
//         isPassWord: true,
//         inputType: TextInputType.visiblePassword,
//         label: "Password",
//         myicon: Icons.password,
//         next: false,
//       ),
//     ];
//   }

//   void _submit(ctx) {
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }
//     _formKey.currentState!.save();

//     _auth.loginWithEmailAndPassword(email: _email, pass: _password);
//   }
// }
