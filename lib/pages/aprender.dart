import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Olá",
                          style: TextStyle(fontSize: 25, color: Colors.black45),
                        ),
                        //terminarde codar(vai la)
                        Text(
                          "terminar",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 35,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 15,
                          right: 20,
                          bottom: 15,
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: CircleAvatar(
                            child: Icon(Icons.search),
                          ),
                        ),
                        hintText: "Pesquisar Amigos",
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(

                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width - 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(padding: EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor:
                                  index == 0 ? Colors.white : Colors.blue,
                            child: CircleAvatar(
                              radius: 33,
                              backgroundColor: Colors.white,
                              child: index == 0
                                  ? Icon(Icons.add)
                                  : Text("$index")),
                            ),
                            );
                          },
                          ),
                    )
                  ],
                ),
              )
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                ),
                height: MediaQuery.of(context).size.height / 2.4,
                child: Column(children: <Widget>[
                  Container(
                    height:  MediaQuery.of(context).size.height / 3.5,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container()
                ],
                ),
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
