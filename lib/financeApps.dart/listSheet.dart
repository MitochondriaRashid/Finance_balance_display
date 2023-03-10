import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListSheet extends StatelessWidget {
  const ListSheet(
      {super.key,
      required this.icnonka,
      required this.articleka,
      required this.subtitleka,
      required this.trailka});

  final icnonka;
  final articleka;
  final subtitleka;
  final trailka;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.00))),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8.00),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.50)),
            color: Colors.grey[300],
          ),
          child: icnonka,
        ),
        title: articleka,
        subtitle: subtitleka,
        trailing: trailka,
      ),
    );
  }
}
