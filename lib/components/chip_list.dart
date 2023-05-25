import 'package:flutter/material.dart';

import '../utils/hex_color.dart';

chipList() {
  return Padding(
    padding: const EdgeInsets.only(top: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildChip('Chalk Pink', HexColor('#F0DEC5')),
        _buildChip('Nectarine', HexColor('#FFC8B7')),
        _buildChip('Eucalyptus', HexColor('#5F8477')),
      ],
    ),
  );
}

Widget _buildChip(String label, Color color) {
  return Chip(
    avatar: CircleAvatar(
      backgroundColor: color,
    ),
    label: Text(
      label,
      style: TextStyle(
        color: HexColor('#9095A6'),
      ),
    ),
    backgroundColor: HexColor('#ffffff'),
    padding: const EdgeInsets.only(top: 12, bottom: 12, left: 8),
    shape: ContinuousRectangleBorder(
      side: BorderSide(color: HexColor('#9095A6')),
      borderRadius: BorderRadius.circular(24),
    ),
  );
}
