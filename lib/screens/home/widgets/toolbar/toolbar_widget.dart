import 'package:flutter/material.dart';

class ToolbarWidget extends StatelessWidget {
  const ToolbarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Boa noite",
            style: TextStyle(
              fontSize: 24,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.history, size: 28),
              SizedBox(width: 20),
              Icon(Icons.settings_outlined, size: 28),
            ],
          ),
        ],
      ),
    );
  }
}
