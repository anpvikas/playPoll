import 'package:flutter/material.dart';
import 'package:play_poll/presentation/create_event_page.dart';
import 'package:play_poll/presentation/search_event_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData.fallback().canvasColor,
        elevation: 0,
        title: AppBarWidget(),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueGrey,
            // size: 31.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Events",
                          style: TextStyle(
                              color: Colors.blueGrey[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      height: 180.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          MyEventCardWidget(),
                          SizedBox(
                            width: 8,
                          ),
                          MyEventCardWidget(),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Events",
                          style: TextStyle(
                              color: Colors.blueGrey[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      height: 180.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          RecentEventCardWidget(),
                          SizedBox(
                            width: 8,
                          ),
                          RecentEventCardWidget(),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.blueGrey[600],
                              heroTag: "CreateEvent",
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              child: Icon(Icons.add),
                              onPressed: () {
                                print("Create Event pressed");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return CreateEventPage();
                                  }),
                                );
                              },
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Create Event",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[600]),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.blueGrey[600],
                              heroTag: "SearchEvent",
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              child: Icon(Icons.search),
                              onPressed: () {
                                print("Search Event pressed");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return SearchEventPage();
                                  }),
                                );
                              },
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Search Event",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[600]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.person, size: 40),
          Icon(Icons.home, size: 40),
          Icon(Icons.menu, size: 40)
        ],
      ),
    );
  }
}

class RecentEventCardWidget extends StatelessWidget {
  const RecentEventCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: RadialGradient(
          center: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.8, 1],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.brown.withOpacity(0.5),
            Colors.brown[200],
            Colors.purple[100].withOpacity(0.4),
            Colors.deepPurpleAccent[400].withOpacity(0.4),
          ],
        ),
      ),
      width: 250.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 32,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "21st June, 2021 at 19:00",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/green_headphone.jpg'),
                        fit: BoxFit.fill),
                    // borderRadius:
                    //     BorderRadius.circular(15),
                    shape: BoxShape.circle,
                    // color: Colors.pinkAccent,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text("Birthday party for John",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 40,
                  ),
                  Expanded(
                      child: Text(
                    "Ruby's Tuesday Restaurant ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "1/25",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(Icons.public_outlined),
                    SizedBox(width: 4),
                    Text("Public"),
                  ],
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(Icons.videogame_asset_outlined),
                    SizedBox(width: 4),
                    Text("Game"),
                  ],
                ),
                // Container(
                //   height: 60,
                //   child: VerticalDivider(
                //     color: Colors.white,
                //     thickness: 2,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyEventCardWidget extends StatelessWidget {
  const MyEventCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: RadialGradient(
          center: Alignment.bottomRight,
          stops: [0.1, 0.5, 0.8, 1],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.blueGrey.withOpacity(0.5),
            Colors.indigo[200],
            Colors.blue[100],
            Colors.blueAccent[100],
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/green_headphone.jpg'),
                        fit: BoxFit.fill),
                    // borderRadius:
                    //     BorderRadius.circular(15),
                    shape: BoxShape.circle,
                    // color: Colors.pinkAccent,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    children: [
                      Text("Marriage Anniversary party for Alexander",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 20,
              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.white.withOpacity(0.4),
                // borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "14th March, 2021 at 19:00",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                  ),
                  Expanded(
                      child: Text(
                    "All Bar One One Restaurant",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "1/16",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.public_off_outlined, size: 16),
                    SizedBox(width: 4),
                    Text(
                      "Private",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(Icons.videogame_asset_outlined, size: 20),
                    SizedBox(width: 4),
                    Text(
                      "Game",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                // Container(
                //   height: 60,
                //   child: VerticalDivider(
                //     color: Colors.white,
                //     thickness: 2,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "PlayPoll",
      style: TextStyle(
          fontFamily: "FasterOne",
          fontWeight: FontWeight.w500,
          fontSize: 30,
          color: Colors.blueGrey),
    );
  }
}
