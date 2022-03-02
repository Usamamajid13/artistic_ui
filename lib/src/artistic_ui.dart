// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  ///this is the on press property
  var onPressed;

  ///this is the shadow color of the button
  var shadowColor;

  ///this is the button text
  var text;

  ///this is the inside padding of button
  var padding;

  //t/his is the font size of the text
  var fontSize;

  ///this is the button color
  var containerColor;

  ///this is the on press property
  var borderRadius;

  ///this is the border color if given to the button
  var borderColor;

  ///this is the border width or thickness of the button's border
  var borderWidth;

  ///this is the font weight of the button text
  var fontWeight;

  ///this is the width of the button
  var width;

  ///this is the height of the button
  var height;

  ///this is the text color of the button
  var textColor;

  ///constructor for the class
  CustomButton(
      {Key? key,
      required this.onPressed,
      this.textColor,
      this.fontWeight,
      this.fontSize,
      this.borderRadius,
      this.width,
      this.height,
      required this.text,
      this.borderColor,
      this.borderWidth,
      this.containerColor,
      this.padding,
      this.shadowColor})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    ///this is the main widget
    return GestureDetector(
      onTap: widget.onPressed ?? () {},
      child: Container(
        width: widget.width?.toDouble(),
        height: widget.height?.toDouble(),
        padding: EdgeInsets.all(
            widget.padding == null ? 10 : widget.padding.toDouble()),
        decoration: BoxDecoration(
          border: Border.all(
              color: widget.borderColor ?? Colors.transparent,
              width: widget.borderWidth == null
                  ? 2
                  : widget.borderWidth.toDouble()),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          color: widget.containerColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              color: widget.shadowColor ?? Colors.black.withOpacity(0.6),
              blurRadius: 8,
            )
          ],
        ),
        child: Text(
          widget.text.toString(),
          style: TextStyle(
              color: widget.textColor ?? Colors.black,
              fontSize:
                  widget.fontSize == null ? 13.0 : widget.fontSize.toDouble(),
              fontWeight: widget.fontWeight ?? FontWeight.bold),
        ),
      ),
    );
  }
}

class CustomButtonDoubleText extends StatefulWidget {
  ///this is the on press property
  var onPressed;

  ///this is the shadow color of the button
  var shadowColor;

  ///this is the button upper text
  var upperText;

  ///this is the button upper text
  var lowerText;

  ///this is the button inside padding
  var padding;

  ///this is the button upper text font size
  var upperTextFontSize;

  ///this is the button lower text font size
  var lowerTextFontSize;

  ///this is the button color
  var containerColor;

  ///this is the button border radius if given
  var borderRadius;

  ///this is the button border color if given
  var borderColor;

  ///this is the button border thickness or width
  var borderWidth;

  ///this is the button upper text font weight
  var upperTextFontWeight;

  ///this is the button lower text font weight
  var lowerTextFontWeight;

  ///this is the button width
  var width;

  ///this is the button height
  var height;

  ///this is the button upper text color
  var upperTextColor;

  ///this is the button lower text color
  var lowerTextColor;

  ///this is the space in between the two texts widget that are given to the button
  var spaceBetweenText;

  ///constructor
  CustomButtonDoubleText(
      {Key? key,
      required this.onPressed,
      this.borderRadius,
      this.spaceBetweenText,
      this.width,
      this.height,
      required this.upperText,
      required this.lowerText,
      this.upperTextColor,
      this.lowerTextColor,
      this.upperTextFontSize,
      this.lowerTextFontSize,
      this.borderColor,
      this.borderWidth,
      this.containerColor,
      this.padding,
      this.shadowColor})
      : super(key: key);

  @override
  State<CustomButtonDoubleText> createState() => _CustomButtonDoubleTextState();
}

class _CustomButtonDoubleTextState extends State<CustomButtonDoubleText> {
  @override
  Widget build(BuildContext context) {
    ///this is the main widget
    return GestureDetector(
      onTap: widget.onPressed ?? () {},
      child: Container(
        width: widget.width?.toDouble(),
        height: widget.height?.toDouble(),
        padding: EdgeInsets.all(
            widget.padding == null ? 10.0 : widget.padding.toDouble()),
        decoration: BoxDecoration(
          border: Border.all(
              color: widget.borderColor ?? Colors.transparent,
              width: widget.borderWidth == null
                  ? 2.0
                  : widget.borderWidth.toDouble()),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          color: widget.containerColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              color: widget.shadowColor ?? Colors.black.withOpacity(0.6),
              blurRadius: 8,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.upperText.toString(),
              style: TextStyle(
                  color: widget.upperTextColor ?? Colors.black,
                  fontSize: widget.upperTextFontSize == null
                      ? 16.0
                      : widget.upperTextFontSize.toDouble(),
                  fontWeight: widget.upperTextFontWeight ?? FontWeight.bold),
            ),
            SizedBox(
              height: widget.spaceBetweenText == null
                  ? 10
                  : widget.spaceBetweenText.toDouble(),
            ),
            Text(
              widget.lowerText.toString(),
              style: TextStyle(
                  color: widget.lowerTextColor ?? Colors.black,
                  fontSize: widget.lowerTextFontSize == null
                      ? 13.0
                      : widget.lowerTextFontSize.toDouble(),
                  fontWeight: widget.lowerTextFontWeight == null
                      ? FontWeight.normal
                      : widget.lowerTextFontWeight.toDouble()),
            ),
          ],
        ),
      ),
    );
  }
}
