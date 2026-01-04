import 'dart:ui';

enum OverlayType { image, text }

class OverlayItem {
  final String id;
  final OverlayType type;
  String data;
  Offset position;
  double scale;
  double rotation;
  int zIndex;

  OverlayItem({
    required this.id,
    required this.type,
    required this.data,
    this.position = Offset.zero,
    this.scale = 1.0,
    this.rotation = 0.0,
    this.zIndex = 0,
  });
}
