import 'package:flutter/material.dart';
import 'package:flutter_listviewbuilder/model.dart';

import 'Detail.dart';

class MyList extends StatelessWidget {
  final list = People.generate();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(list[index].photo),
            ),
            title: Text(list[index].name),
            subtitle: Text(list[index].email),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Detail(list[index]);
              }));
            },
          );
        });
  }
}
