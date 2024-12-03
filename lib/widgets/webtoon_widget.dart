import 'package:flutter/material.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({super.key, required this.title, required this.thumb, required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 15,
                offset: const Offset(10, 10),
              ),
            ],
          ),
          child: Image.network(
            thumb,
            headers: const {
              'Referer': 'https://comic.naver.com',
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 250,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
