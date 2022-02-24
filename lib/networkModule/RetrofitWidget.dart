import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/networkModule/DataModel.dart';
import 'package:flutter_app/networkModule/RestClient.dart';

import 'dart:developer';

class RetrofitWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RetrofitWidgetState();
}

class RetrofitWidgetState extends State<RetrofitWidget> {
  late GitUserItems response;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Retrofit screen',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text("Retrofit screen"),
        ),
        body: getPage(),
      ),
    );
  }

  Widget getPage() {
    late Widget page;
    if(!isLoading) {
      page = page0();
      getData();
    }else {
      page = page1();
    }
    return page;
  }

  getData() {
    final dio = Dio();
    final client = RestClient(dio);
    client.getGitUserAPI(
        "application/vnd.github.v3+json",
        "items(login, avatar_url, html_url)")
      .then((it) {
        setState(() {
          response = ((it['items'] as List)[0]) as GitUserItems;
          isLoading = true;
          log('${response.login}');
        });
    });
  }

  Container page0() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Loading...',
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }

  ListView page1() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Image.network(response.avatar_url),
          title: Text(response.login),
          subtitle: Text(response.html_url),
          onTap: () {},
        )
      ],
    );
  }

}