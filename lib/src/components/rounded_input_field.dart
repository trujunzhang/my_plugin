import 'package:flutter/material.dart';

// RoundedInputField(
//     textEditingController: controllerName,
//     hintText: "Your Email",
//     icon: Icons.email,
//     cursorColor: Colors.black,
//     editTextBackgroundColor: Colors.grey[200],
//     iconColor: Colors.black,
//     onChanged: (value) {
//       name = value;
//      },
//  )

// Rounded Input field
// https://github.com/Chromicle/awesome-flutter-ui/blob/master/widgets/rounded_input_field.dart
class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;
  final Color? cursorColor;
  final Color? iconColor;
  final Color? editTextBackgroundColor;

  const RoundedInputField(
      {Key? key,
      this.hintText,
      this.icon = Icons.person,
      this.onChanged,
      this.textEditingController,
      this.cursorColor,
      this.iconColor,
      this.editTextBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset(3, 3),
          ),
        ],
        color: editTextBackgroundColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        controller: textEditingController,
        onChanged: onChanged,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: iconColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
