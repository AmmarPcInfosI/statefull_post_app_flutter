import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  Color c1=Colors.grey;
  Color c2=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Posts'),
      ),
      body: Column(children: [
        Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://images.pexels.com/photos/18082106/pexels-photo-18082106/free-photo-of-man-in-black-clothes-sitting-with-camera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            radius: 20,
          ),
          Text("Ammar Al Hasani",style: TextStyle(fontSize: 20),)
        ],),
        Image(image: NetworkImage("https://images.pexels.com/photos/18129270/pexels-photo-18129270/free-photo-of-neushwanstein-castle-on-a-cloudy-day.jpeg")),
        Row(
          children:[

          Column(
          children: [
            IconButton(onPressed: (){
              setState(() {
                c1=Colors.red;
              });
            }, icon: Icon(Icons.favorite,color: c1)),
            Text('100',style: TextStyle(fontSize: 10),)
          ],
        ),
        Column(
          children: [
            IconButton(onPressed: (){
              setState(() {
                c2=Colors.red;
              });
            }, icon: Icon(Icons.comment,color: c2)),
            Text('100',style: TextStyle(fontSize: 10),)
          ],
        )
          ],
        ),
      ],
      ),
    );
  }
}
