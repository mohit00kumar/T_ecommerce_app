import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edge.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  final Widget child;
  const TCurvedEdgeWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdge(), child: child);
  }
}