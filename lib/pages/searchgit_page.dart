import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_text_form_field.dart';
import 'package:flutter_app/networkModule/RetrofitWidget.dart';

class SearchPage extends StatelessWidget {
  final List searchKeyword = ["aaa", "bbb", "ccc", "ddd", "eee"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Search Git User"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DefaultSearchField(),
            // RetrofitWidget(),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical:10),
              height: 400,
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                    child: SizedBox(
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                        // child: ListTile(
                          // leading: Image.network(RetrofitWidget().createState().response.avatar_url),
                          // title: Text(RetrofitWidget().createState().response.login),
                          // subtitle: Text(RetrofitWidget().createState().response.html_url),
                          searchKeyword[index],
                          style : TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    thickness: 0.5,
                    height: 0,
                  ),
                  itemCount: searchKeyword.length),
            )
          ],
        ),
      ),
    );
  }
}
