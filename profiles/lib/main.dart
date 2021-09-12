import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget userStats(String caption, String number) {
      return Column(
        children: [
          Text(caption, style: TextStyle(fontFamily: 'Roboto Light')),
          Text(number, style: TextStyle(fontFamily: 'Roboto Bold'))
        ],
      );
    }

    Widget userStatDivider() {
      return Container(
          width: 1,
          height: 20,
          color: Colors.grey,
          margin: EdgeInsets.only(left: 10, right: 10));
    }

    Widget userStatsBox() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          userStats('Followers', '5.7M'),
          userStatDivider(),
          userStats('Following', '924'),
          userStatDivider(),
          userStats('Total Likes', '1.7K'),
        ],
      );
    }

    Widget userInfo(String name, String place) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontFamily: 'Roboto Regular')),
          Text(place,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontFamily: 'Roboto light')),
        ],
      );
    }

    Widget userProfilePic() {
      return Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 30, top: 30),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/profile.png'))));
    }

    Widget userInfoBox() {
      return Row(
        children: [userProfilePic(), userInfo("Emma Watson", "New York")],
      );
    }

    Widget screenHeading() {
      return Container(
          margin: EdgeInsets.only(left: 15, top: 30),
          child: Text("Profile", style: TextStyle(fontSize: 30)));
    }

    List<Widget> createList() {
      var listOfContainers = <Widget>[];

      var headings = <String>[
        'Live Broadcast',
        'My Wallet',
      ];

      for (var i = 0; i < 2; i++) {
        listOfContainers.add(Container(
          width: 150,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          ),
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Column(children: [
            Text(headings[i], style: TextStyle()),
          ]),
        ));
      }

      return listOfContainers;
    }

    Widget userOptions() {
      return new Container(
          margin: EdgeInsets.only(top: 50, bottom: 50),
          height: 100,
          child: new ListView(
              scrollDirection: Axis.horizontal, children: createList()));
    }

    Widget userDetails() {
      return DefaultTextStyle(
          style: TextStyle(color: Colors.white, fontFamily: 'Roboto Regular'),
          child: Container(
              width: 1000,
              height: 300,
              color: Colors.purple,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15, top: 30),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  screenHeading(),
                  userInfoBox(),
                  userStatsBox(),
                ],
              )));
    }

    Widget secondaryUserOptions() {
      return Expanded(
          child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.shutter_speed_outlined),
            title: Text('Memories'),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text('Favourites'),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Presents'),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          )
        ],
      ));
    }

    Widget fullScreen() {
      return Column(
          children: [userDetails(), userOptions(), secondaryUserOptions()]);
    }

    return MaterialApp(
        title: 'Welcome to Flutter', home: Scaffold(body: fullScreen())
        // )
        );
  }
}
