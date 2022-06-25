import 'package:flutter/material.dart';

class StylishAppBar extends StatelessWidget {
  final title;
  final subtitle;
  final number;
  final image;
  Function logout;
  StylishAppBar(
      {Key? key,
      this.title,
      this.subtitle,
      this.image,
      required this.logout,
      this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
            title: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              children: [
                Text(
                  number,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(subtitle,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ],
            ),
            leading: Container(
              width: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  image,
                ),
                radius: 50,
              ),
            ),
            trailing: FloatingActionButton.extended(
              backgroundColor: Color.fromARGB(255, 6, 126, 10),
              onPressed: logout(),
              icon: Icon(Icons.exit_to_app),
              label: Text("exit"),
            )),
      ),
    );
  }
}
