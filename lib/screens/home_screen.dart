import 'package:flutter/material.dart';
import 'package:find_flames/components/chats.dart';
import 'package:find_flames/components/stories.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Story('images/likes_story.png'),
                Story('images/tony_story.png'),
                Story('images/james_story.png'),
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
            Chat('images/jordan_chat.png', 'Jordan', 'Hii!',true),
            //first chat finished
            SizedBox(
              height: 20,
            ),
            Chat('images/tim_chat.png', 'Tim', 'Hii!',true),
            //second chat finish
            SizedBox(
              height: 20,
            ),
            Chat('images/james_chat.png', 'James', 'Hii!',false),
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



    );
  }
}
