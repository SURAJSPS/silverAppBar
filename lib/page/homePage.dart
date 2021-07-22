import 'package:flutter/material.dart';
import 'package:telegram/widget/text_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

bool _pinned = true;
bool _snap = false;
bool _floating = true;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: size.height * .60,
            collapsedHeight: size.height * .19,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
                    ),
                  ),
                  Hero(
                    tag: {"ker": "key1"},
                    child: Column(
                      children: [
                        Text('Name'),
                        Text('Last seen todat at 12:04 Pm'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconText(
                        icon: Icons.call,
                        text: 'Call',
                      ),
                      IconText(
                        icon: Icons.video_call,
                        text: 'Video',
                      ),
                      IconText(
                        icon: Icons.call,
                        text: 'Call',
                      ),
                      IconText(
                        icon: Icons.call,
                        text: 'Call',
                      ),
                      IconText(
                        icon: Icons.call,
                        text: 'Call',
                      ),
                    ],
                  )
                ],
              ),
              background: _background(context),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 70.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _background(context) {
  Size size = MediaQuery.of(context).size;
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        height: size.height * .57,
        fit: BoxFit.cover,
        width: size.width,
        image: NetworkImage(
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
        ),
      ),
      Hero(
        tag: {"ker": "key1"},
        child: Container(
          color: Colors.black,
          height: size.height * .57 - size.height * .49,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Last seen todat at 12:04 Pm',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                IconText(
                  icon: Icons.call,
                  text: 'hello',
                ),
                IconText(
                  icon: Icons.call,
                  text: 'hello',
                ),
                IconText(
                  icon: Icons.call,
                  text: 'hello',
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
