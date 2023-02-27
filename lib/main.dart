import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());


}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [

              Image(
                image: AssetImage(
                  'images/profile.png',
              ),
                width: 50,
                height: 50,
              ),
              SizedBox(width: 75,),
              Text(
                'Find Flames',
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.tune),
              color: Colors.black,
              tooltip: 'Air it',
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image(
                    width: 125,
                    height: 125,
                    image: AssetImage('images/likes_story.png'),),
                  Image(
                    width: 125,
                    height: 125,
                    image: AssetImage('images/tony_story.png'),),
                  Image(
                    width: 125,
                    height: 125,
                    image: AssetImage('images/james_story.png'),),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                 Text('Likes'),
                  SizedBox(
                    width: 90,
                  ),
                  Text('Tony'),

                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    color:Colors.blue,
                      Icons.verified),
                  SizedBox(
                    width: 45,
                  ),
                  Text('James'),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                      color:Colors.blue,
                      Icons.verified),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(

                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    height: 80,
                    width: 80,
                    image: AssetImage('images/jordan_chat.png'),),
                  SizedBox(
                    width: 10,
                  ),
                  Column( //chat name and value column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row( //row for verification icon in chat

                        children: [
                          Text(
                            'Jordan',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            color:Colors.blue,
                              Icons.verified),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        style:TextStyle(
                          fontSize: 15,
                        ),
                          'Hii!'),
                    ],
                  ),
                ],
              ),
              //first chat finished
              SizedBox(
                height: 20,
              ),
              Row(

                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    height: 80,
                    width: 80,
                    image: AssetImage('images/tim_chat.png'),),
                  SizedBox(
                    width: 10,
                  ),
                  Column( //chat name and value column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row( //row for verification icon in chat

                        children: [
                          Text(
                            'Tim',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                              color:Colors.blue,
                              Icons.verified),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          style:TextStyle(
                            fontSize: 15,
                          ),
                          'Hii!'),
                    ],
                  ),
                ],
              ),
              //second chat finish
              SizedBox(
                height: 20,
              ),
              Row(

                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    height: 80,
                    width: 80,
                    image: AssetImage('images/james_chat.png'),),
                  SizedBox(
                    width: 10,
                  ),
                  Column( //chat name and value column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row( //row for verification icon in chat

                        children: [
                          Text(
                            'James',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          style:TextStyle(
                            fontSize: 15,
                          ),
                          'Hii!'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                size:30,
                  Icons.home_filled  ),
              label: '',
            ),

            BottomNavigationBarItem(
              icon: Icon(
                  size:30,
                  Icons.search_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size:30,
                  Icons.calendar_today),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  size:30,
                  Icons.messenger_outline),
              label: '',
            ),



          ],
        ),



      ),
    );
  }
}
