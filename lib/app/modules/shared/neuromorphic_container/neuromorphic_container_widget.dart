import 'package:flutter/material.dart';

class NeuromorphicContainerWidget extends StatefulWidget {
  final Color color;
  final Widget child;
  final double height;
  final double width;

  final double radius;

  NeuromorphicContainerWidget(
      {Key key,
      @required this.color,
      this.child,
      this.height = 200,
      this.width = 200,
      this.radius = 15})
      : super(key: key);

  @override
  _NeuromorphicContainerWidgetState createState() =>
      _NeuromorphicContainerWidgetState();
}

class _NeuromorphicContainerWidgetState
    extends State<NeuromorphicContainerWidget> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          clicked = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          clicked = false;
        });
      },
      child: clicked
          ? ClickedButtom(
              color: widget.color,
              height: widget.height,
              width: widget.width,
              child: widget.child,
              radius: widget.radius)
          : IdleButtom(
              color: widget.color,
              height: widget.height,
              width: widget.width,
              child: widget.child,
              radius: widget.radius),
    );
  }
}

class IdleButtom extends StatelessWidget {
  final Color color;
  final Widget child;
  final double height;
  final double width;
  final double radius;

  const IdleButtom(
      {Key key, this.color, this.height, this.width, this.child, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
        gradient: LinearGradient(
            begin: Alignment(-1.0, -4.0),
            end: Alignment(1.0, 4.0),
            colors: [
              Color(0xFFF1F2F4),
              Color(0xFFEFF2F7),
            ]),
        boxShadow: [
          BoxShadow(
            offset: Offset(-6, -5),
            blurRadius: 5,
            color: Colors.white,
          ),
          BoxShadow(
            offset: Offset(6, 5),
            blurRadius: 5,
            color: Color.lerp(
                Color(0xff232522).withOpacity(.1), color.withOpacity(.2), .1),
          ),
        ],
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}

class ClickedButtom extends StatelessWidget {
  final Color color;
  final Widget child;
  final double height;
  final double width;
  final double radius;

  const ClickedButtom(
      {Key key, this.color, this.height, this.width, this.child, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(       
        borderRadius: BorderRadius.circular(radius / 2),       
        color: Colors.transparent,
        gradient: LinearGradient(
            begin: Alignment(-1.0, -4.0),
            end: Alignment(1.0, 4.0),
            colors: [
              Color(0xFFF1F2F4),
              Color(0xFFEFF2F7),
            ]),
        boxShadow: [
          BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 5,
              color: Colors.white,
              spreadRadius: -5),
          BoxShadow(
              offset: Offset(-2, -2),
              blurRadius: 5,
              color: Colors.black.withOpacity(.2),
              spreadRadius: -5),
          BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 3,
              color: color,
              spreadRadius: -5),        
        ],
      ),
      height: height,
      width: width,
      child: Transform.scale(
        scale: .9,
        child: child,
      ),
    );
  }
}
