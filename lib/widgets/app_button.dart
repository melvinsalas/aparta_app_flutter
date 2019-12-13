import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final Color color;
  final Function onPressed;
  final String title;
  final bool outline;

  AppButton({
    Key key,
    this.color,
    this.onPressed,
    this.title,
    this.outline = false,
  }) : super(key: key);

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(16),
        elevation: 0,
        color: widget.outline ? Colors.white : widget.color,
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 18,
            color: widget.outline
                ? widget.color
                : Theme.of(context).textTheme.subtitle.color,
          ),
        ),
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: widget.outline
              ? BorderSide(color: widget.color)
              : BorderSide.none,
        ),
      ),
    );
  }
}
