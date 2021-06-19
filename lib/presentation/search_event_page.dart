import 'package:flutter/material.dart';
import 'package:play_poll/infrastructure/recent_events_data.dart';
import 'package:play_poll/presentation/constants.dart';

class SearchEventPage extends StatelessWidget {
  // const SearchEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Container(
          // height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    // gradient: mLinearGradient,
                    boxShadow: [boxTopShadow, boxBotomShadow],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Enter search text ...',
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                // Text(
                //   'TestTestTestTest',
                //   style: TextStyle(fontSize: 200),
                // ),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  // scrollDirection: Axis.vertical,
                  itemCount: eventName.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 2,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                boxShadow: [boxTopShadow, boxBotomShadow],
                                image: DecorationImage(
                                    image: AssetImage(
                                      '${images[index]}',
                                    ),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${eventName[index]}',
                                    style: TextStyle(
                                        // fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('${location[index]}'),
                                  Text('${dateTime[index]}'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                print('Join the event from search result');
                              },
                              child: Container(
                                width: 80,
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.group_add,
                                      size: 32,
                                    ),
                                    Text(
                                      'JOIN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green.shade800),
                                    ), // Change it to Joined on click
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
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
      "Search Event",
      style: TextStyle(
          // fontFamily: "FasterOne",
          fontWeight: FontWeight.w500,
          // fontSize: 30,
          color: Colors.blueGrey),
    );
  }
}
