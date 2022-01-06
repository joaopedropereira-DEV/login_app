import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final bool isPassword;
  final TextEditingController controller;
  final String hintTxt;
  final Icon icon;

  const Inputs({
    Key? key,
    required this.isPassword,
    required this.controller,
    required this.hintTxt,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isPassword
        ? _buildMaterialForm(controller, hintTxt, icon)
        : _buildMaterialPasswordForm(controller, hintTxt, icon);
  }

  Widget _buildMaterialForm(
    TextEditingController controller,
    String hintTxt,
    Icon icon,
  ) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: hintTxt,
            icon: icon,
            border: InputBorder.none,
          ),
        ),
        const Divider(
          height: 1,
          color: Colors.black,
        )
      ],
    );
  }

  Widget _buildMaterialPasswordForm(
    TextEditingController controller,
    String hintTxt,
    Icon icon,
  ) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintTxt,
            icon: icon,
          ),
        ),
        const Divider(
          height: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
