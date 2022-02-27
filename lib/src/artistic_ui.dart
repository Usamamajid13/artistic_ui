import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  var onPressed;
  var shadowColor;
  var text;
  var padding;
  var fontSize;
  var containerColor;
  var borderRadius;
  var borderColor;
  var borderWidth;
  var fontWeight;
  var width;
  var height;
  var textColor;
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
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: EdgeInsets.all(widget.padding ?? 10),
        decoration: BoxDecoration(
          border: Border.all(
              color: widget.borderColor ?? Colors.transparent,width: widget.borderWidth ?? 2),
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? 10),
          color: widget.containerColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              color: widget.shadowColor ?? Colors.black.withOpacity(0.6),
              blurRadius: 8,
            )
          ],
        ),
        child: Text(widget.text.toString(),style: TextStyle(color: widget.textColor ?? Colors.black,fontSize: widget.fontSize ?? 13,fontWeight: widget.fontWeight ?? FontWeight.bold),),
      ),
    );
  }
}
