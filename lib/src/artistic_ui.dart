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

class BorderTextField extends StatefulWidget {
  ///this is the controller which controls what happens to the text you type in text field
  final TextEditingController inputController;

  ///this is the title that comes on top outside the text field
  var title;

  ///this is the title font size
  var titleFontSize;

  ///this is the space between the text field and the title
  var spaceBetweenTitle;

  ///this is the height of the text field
  var textFieldHeight;

  ///this is the input hint given inside the text field
  String inputHint;

  ///this is the border color which is given to the text field
  var borderColor;

  ///this is the hint text color
  var inputHintColor;

  ///this is the title font weight (bold or italic, etc)
  var titleFontWeight;

  ///this is the icon color if the icon is given
  var prefixIconColor;

  ///this is the padding inside the text field
  var contextHorizontalPadding;

  ///this is the vertical content padding inside the text field
  var contextVerticalPadding;

  ///this is the input font size
  var inputFontSize;

  ///this is the color of the text written in the text field
  var inputColor;

  ///this is the width of the text field
  var textFieldWidth;

  ///this is the horizontal margin for the text field from the screen
  var horizontalMargin;

  ///this is the prefix icon
  var prefixIcon;

  ///this is the circular radius for the container. If you want to you can give it to the field
  var fieldBorderRadius;

  ///this is the color of the title text outside the text field
  var titleColor;

  ///this is the input type that specify the keyboard type when user click on the text field
  TextInputType inputType;

  ///constructor
  BorderTextField({
    Key? key,
    required this.inputController,
    this.title,
    this.textFieldWidth,
    this.contextHorizontalPadding,
    this.contextVerticalPadding,
    required this.inputHint,
    this.horizontalMargin,
    required this.borderColor,
    this.titleFontSize,
    required this.inputType,
    this.inputColor,
    this.inputHintColor,
    this.spaceBetweenTitle,
    this.fieldBorderRadius,
    this.inputFontSize,
    this.prefixIcon,
    this.prefixIconColor,
    this.textFieldHeight,
    this.titleColor,
    this.titleFontWeight,
  }) : super(key: key);

  @override
  State<BorderTextField> createState() => _BorderTextFieldState();
}

class _BorderTextFieldState extends State<BorderTextField> {
  @override
  Widget build(BuildContext context) {
    ///this is the main widget
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title?.toString() ?? "",
          style: TextStyle(
            fontSize: widget.titleFontSize?.toDouble() ?? 18,
            fontWeight: widget.titleFontWeight ?? FontWeight.bold,
            color: widget.titleColor ?? Colors.black,
          ),
        ),
        SizedBox(
          height: widget.spaceBetweenTitle?.toDouble() ?? 0,
        ),

        ///this is the text field widget
        Container(
          width: widget.textFieldWidth?.toDouble() ??
              MediaQuery.of(context).size.width,
          height: widget.textFieldHeight?.toDouble() ?? 50,
          margin: EdgeInsets.symmetric(
              horizontal: widget.horizontalMargin?.toDouble() ?? 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                widget.fieldBorderRadius?.toDouble() ?? 0),
            border: Border.all(color: widget.borderColor ?? Colors.red),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: widget.prefixIcon == null ? 0 : 20,
              ),
              widget.prefixIcon == null
                  ? Container()
                  : Icon(
                      widget.prefixIcon,
                      size: 20,
                      color: widget.prefixIconColor ??
                          widget.borderColor ??
                          Colors.black,
                    ),
              Expanded(
                child: TextField(
                  controller: widget.inputController,
                  keyboardType: widget.inputType,
                  style: TextStyle(
                      fontSize: widget.inputFontSize?.toDouble() ?? 14,
                      color: widget.inputColor ?? Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.inputHint,
                    hintStyle: TextStyle(
                        color: widget.inputHintColor ??
                            Colors.grey.withOpacity(.75)),
                    contentPadding: EdgeInsets.symmetric(
                        vertical:
                            widget.contextVerticalPadding?.toDouble() ?? 0.0,
                        horizontal:
                            widget.contextHorizontalPadding?.toDouble() ??
                                20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
