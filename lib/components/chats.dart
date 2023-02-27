import 'package:flutter/material.dart';

Widget Chat(String img, String name, String message, bool verification) {
  if (verification == false) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Image(
          height: 80,
          width: 80,
          image: AssetImage(img),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          //chat name and value column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //row for verification icon in chat

              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                style: TextStyle(
                  fontSize: 15,
                ),
                message),
          ],
        ),
      ],
    );
  } else {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Image(
          height: 80,
          width: 80,
          image: AssetImage(img),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          //chat name and value column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //row for verification icon in chat

              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(color: Colors.blue, Icons.verified),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                style: TextStyle(
                  fontSize: 15,
                ),
                message),
          ],
        ),
      ],
    );
  }
}
