import 'package:flutter/material.dart';

class DXTable extends StatelessWidget {
  final VoidCallback? onClick;
  final Widget child;
  const DXTable({Key? key, this.onClick, required this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: _TablePaint(
          child: child,
        ),
      ),
    );
  }
}

class _TablePaint extends StatelessWidget {
  final Widget child;
  const _TablePaint({Key? key, required this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(constraints.maxWidth, constraints.maxWidth),
                painter: _MyPainter(),
              ),
              Container(
                width: constraints.maxWidth * (3.5/7),
                height: constraints.maxWidth * (3.5/7),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                alignment: Alignment.center,
                child: ClipOval(
                  child: child,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    const Color color = Colors.green;
    final Paint chairPaint = Paint();
    chairPaint.strokeWidth = size.width * (1/20);
    chairPaint.strokeCap = StrokeCap.round;
    chairPaint.color = color;
    canvas.drawLine(Offset(size.width * (3/10), size.height * (1/10)), Offset(size.width * (7/10), size.height * (1/10),), chairPaint,);//top chair
    canvas.drawLine(Offset(size.width * (1/10), size.height * (3/10)), Offset(size.width * (1/10), size.height * (7/10),), chairPaint,);//right chair
    canvas.drawLine(Offset(size.width * (3/10), size.height * (9/10)), Offset(size.width * (7/10), size.height * (9/10),), chairPaint,);//bottom chair
    canvas.drawLine(Offset(size.width * (9/10), size.height * (3/10)), Offset(size.width * (9/10), size.height * (7/10),), chairPaint,);//left chair

    final Paint tablePaint = Paint();
    tablePaint.color = color;
    canvas.drawCircle(Offset(size.width * (5 / 10), size.height * (5 / 10)), size.width * (3/10), tablePaint,);//table
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
