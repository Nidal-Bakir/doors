import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class MaxDistanceSlider extends StatefulWidget {
  final void Function(double maxDistance) onMaxDistanceChanged;
  const MaxDistanceSlider({
    Key? key,
    required this.onMaxDistanceChanged,
  }) : super(key: key);

  @override
  State<MaxDistanceSlider> createState() => _MaxDistanceSliderState();
}

class _MaxDistanceSliderState extends State<MaxDistanceSlider> {
  double _maxDistance = 0.0;
  @override
  Widget build(BuildContext context) {
    return SfSliderTheme(
      data: SfSliderThemeData(
          inactiveTrackHeight: 3,
          activeTrackHeight: 3,
          tickSize: Size.zero,
          minorTickSize: const Size(1, 3),
          activeMinorTickColor: Colors.black,
          inactiveMinorTickColor: Colors.black),
      child: SfSlider(
        min: 0.0,
        max: 300.0,
        interval: 50,
        labelPlacement: LabelPlacement.onTicks,
        showLabels: true,
        thumbShape: _SfThumbShape(),
        showDividers: true,
        labelFormatterCallback: (dynamic actualValue, String formattedText) {
          if (actualValue == 0.0 || actualValue == 300.0) {
            return formattedText + ' km';
          }
          return '';
        },
        minorTicksPerInterval: 1,
        activeColor: Colors.black,
        inactiveColor: Colors.black.withOpacity(0.6),
        showTicks: true,
        dividerShape: _DividerShape(),
        value: _maxDistance,
        onChanged: (dynamic maxDistance) {
          setState(() {
            _maxDistance = maxDistance;
          });
          widget.onMaxDistanceChanged(maxDistance);
        },
      ),
    );
  }
}

class _SfThumbShape extends SfThumbShape {
  @override
  void paint(PaintingContext context, Offset center,
      {required RenderBox parentBox,
      required RenderBox? child,
      required SfSliderThemeData themeData,
      SfRangeValues? currentValues,
      dynamic currentValue,
      required Paint? paint,
      required Animation<double> enableAnimation,
      required TextDirection textDirection,
      required SfThumb? thumb}) {
    final Path path = Path();

    TextSpan span = TextSpan(
        text: (currentValue as double).toStringAsFixed(0) + ' km',
        style: const TextStyle(
          color: Colors.black,
        ));
    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    var _offset = Offset(center.dx - 20, center.dy - 30);

    tp.paint(context.canvas, _offset);

    path.moveTo(center.dx, center.dy);
    path.lineTo(center.dx + 10, center.dy - 15);
    path.lineTo(center.dx - 10, center.dy - 15);

    path.close();
    context.canvas.drawPath(
        path,
        Paint()
          ..color = themeData.activeTrackColor!
          ..style = PaintingStyle.fill
          ..strokeWidth = 2);
  }
}

class _DividerShape extends SfDividerShape {
  @override
  void paint(PaintingContext context, Offset center, Offset? thumbCenter,
      Offset? startThumbCenter, Offset? endThumbCenter,
      {required RenderBox parentBox,
      required SfSliderThemeData themeData,
      SfRangeValues? currentValues,
      dynamic currentValue,
      required Paint? paint,
      required Animation<double> enableAnimation,
      required TextDirection textDirection}) {
    bool isActive;

    switch (textDirection) {
      case TextDirection.ltr:
        isActive = center.dx <= thumbCenter!.dx;
        break;
      case TextDirection.rtl:
        isActive = center.dx >= thumbCenter!.dx;
        break;
    }

    context.canvas.drawCircle(
        center,
        5,
        Paint()
          ..isAntiAlias = true
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = isActive ? Colors.black : Colors.black);

    context.canvas.drawCircle(
        center,
        5,
        Paint()
          ..isAntiAlias = true
          ..style = PaintingStyle.fill
          ..color = Colors.white);
  }
}
