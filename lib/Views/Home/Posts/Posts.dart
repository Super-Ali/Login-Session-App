import 'package:flutter/material.dart';

import '../../../Services/getPosts.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FutureBuilder(
              future: getPosts(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  );
                } else {
                  return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context, index) {
                        return Card(
                            color: Color.fromARGB(157, 0, 0, 0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(
                                  postList[index].title.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(postList[index].body.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 186, 192, 189))),
                              ),
                            )
                            //  Column(
                            //   children: [
                            //     Text(
                            //       postList[index].id.toString(),
                            //     ),
                            //     Text(
                            //       postList[index].title.toString(),
                            //     ),
                            //     Text(
                            //       postList[index].body.toString(),  ) ], ),
                            );
                      });
                }
              }),
        ),
      ],
    );
  }
}
