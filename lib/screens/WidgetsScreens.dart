import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//! TEXTFIELD WIDGET

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.width,
    required this.usernameController,
    required this.hintText,
  }) : super(key: key);

  final double width;
  final TextEditingController usernameController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextFormField(
        style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
        controller: usernameController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey[500]),
          filled: true,
          fillColor: Colors.grey.shade300,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xfff5f5f5))),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xfff5f5f5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xfff5f5f5))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Color(0xfff5f5f5))),
        ),
      ),
    );
  }
}

//! BUTTON WIDGET

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.textSize,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height / 16,
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(06)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.arvo(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: textSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

//! HEADER WIDGETS

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(20),
      child: Text(
        text,
        style: GoogleFonts.arvo(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 34,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

//! Text WIDGETS

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.width,
    required this.text,
    required this.textSize,
    required this.textColor,
  }) : super(key: key);

  final double width;
  final String text;
  final double textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.arvo(
          textStyle: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

//! TEXT lINKS

class TextLinkWidget extends StatelessWidget {
  const TextLinkWidget({
    Key? key,
    required this.width,
    required this.text,
    required this.textSize,
    required this.textColor,
  }) : super(key: key);

  final double width;
  final String text;
  final double textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Text(
        text,
        style: GoogleFonts.arvo(
          textStyle: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
