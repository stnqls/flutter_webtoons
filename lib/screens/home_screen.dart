import 'package:flutter/material.dart';
import 'package:webtoon/models/webtoon_model.dart';
import 'package:webtoon/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  Future<List<WebtoonModel>> webtoons = ApiService.getTodyasToons();

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("오늘의 웹툰", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          elevation: 2,
        ),
        body: FutureBuilder(
          future: webtoons,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('there is data');
            }
            return Text('Loading...');
          },
        ));
  }
}
