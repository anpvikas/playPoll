import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
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
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      height: 280.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 250.0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/green_headphone.jpg'),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            shape: BoxShape.rectangle,
                                            // color: Colors.pinkAccent,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: Text(
                                              "Marriage Anniversary party for Alexander",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      // Icon(Icons.group_add),
                                      // Icon(Icons.delete_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 160.0,
                            color: Colors.yellow,
                          ),
                          Container(
                            width: 160.0,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Joined / Recently Created Public Events"),
                    Row(
                      children: [Text("Joined Events")],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
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
                        onPressed: () {},
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
                        onPressed: () {},
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
            )
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
