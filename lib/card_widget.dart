import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(this.title, this.subtitle, this.img);
  final String title;
  final String subtitle;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7),
      width: 300,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 140,
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.grey),
              overflow: TextOverflow.clip,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
