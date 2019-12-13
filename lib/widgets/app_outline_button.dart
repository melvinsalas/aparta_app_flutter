import 'package:flutter/material.dart';

class AppOutlineButton extends StatefulWidget {
  final IconData icon;
  final Color color;
  final Function onPressed;

  AppOutlineButton({
    Key key,
    this.icon,
    this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  _AppOutlineButtonState createState() => _AppOutlineButtonState();
}

class _AppOutlineButtonState extends State<AppOutlineButton> {
  @override
  Widget build(BuildContext context) {
    Color color = widget.color;
    if (color == null) color = Theme.of(context).primaryColor;

    return Container(
      margin: EdgeInsets.all(8),
      height: 48,
      width: 48,
      child: RaisedButton(
        child: Icon(widget.icon, color: color, size: 36,),
        color: Colors.white,
        elevation: 0,
        onPressed: widget.onPressed,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: color),
        ),
      ),
    );
  }
}
