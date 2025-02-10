import 'package:flutter/material.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({super.key});

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Deal of the Day',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          'https://images.unsplash.com/file-1715714113747-b8b0561c490eimage?w=416&dpr=2&auto=format&fit=crop&q=60',
          height: 235,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 10,
            top: 5,
            right: 40,
          ),
          child: const Text(
            'Unsplash Studio',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
                'https://unsplash.com/photos/a-black-and-white-photo-of-a-bathroom-sink-I0ySJXR9rMQ',),
            Image.network(
                'https://unsplash.com/photos/a-table-and-chairs-in-a-room-with-a-picture-on-the-wall-x-Y3MrcgYFE'),
            Image.network(
                'https://images.unsplash.com/photo-1738676524296-364cf18900a8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fE04alZiTGJUUndzfHxlbnwwfHx8fHw%3D'),
            Image.network(
                'https://plus.unsplash.com/premium_photo-1734543932100-96cf06f153c3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fE04alZiTGJUUndzfHxlbnwwfHx8fHw%3D'),
          ],
        )
      ],
    );
  }
}
