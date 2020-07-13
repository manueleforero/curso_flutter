import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/2841023032/f1840ece48c241855b0edc0a236a692b.png'),
                radius: 25,
              ),
            ),
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/cuborubik.gif'),
            image: NetworkImage(
                'https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/11/16142614/Spiderman-1920.jpg'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }));
  }
}
