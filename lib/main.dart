import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> stuName = [
    {
      "name": "bhola",
      "msg": "hello..",
      "img": "lib/assets/images/a.png",
      "time":"09:41"
    },
    {
      "name": "mrinmayee",
      "msg": "maltake tol",
      "img": "lib/assets/images/b.png",
      "time":"07:37"

    },
    {
      "name": "Bidyut",
      "msg": "kmon achis?",
      "img": "lib/assets/images/c.png",
      "time":"10:55"
    },
    {
      "name": "mohanty",
      "msg": "chol bari chol",
      "img": "lib/assets/images/d.png",
      "time":"06:00"
    },
    {
      "name": "Barudang",
      "msg": "kothai re?",
      "img": "lib/assets/images/e.png",
      "time":"yesterday"
    },
    {
      "name": "siyarchanda",
      "msg": "ha",
      "img": "lib/assets/images/f.png",
      "time":"yesterday"
    },
    {
      "name": "toyo",
      "msg": "dekha hobe",
      "img": "lib/assets/images/g.png",
      "time":"yesterday"
    },
    {
      "name": "bing",
      "msg": "ok",
      "img": "lib/assets/images/h.png",
      "time":"09:41"
    },
    {
      "name": "sukri",
      "msg": "kotha bolchis na kno?",
      "img": "lib/assets/images/i.png",
      "time":"06/09/23"
    },
    {
      "name": "leora",
      "msg": "hii",
      "img": "lib/assets/images/j.png",
      "time":"08/03/24"
    },
    {
      "name": "hopen",
      "msg": "kothai achis?",
      "img": "lib/assets/images/k.png",
      "time":"28/03/24"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Whatsapp',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:ListView.builder(
            itemCount: stuName.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Row(
                  children: [Expanded(flex: 1,
                    child: CircleAvatar(
                      radius:35,
                      backgroundImage:AssetImage(stuName[index]['img']),
                    ),
                  ),

                    Expanded(flex:4,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${stuName[index]['name']}',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('${stuName[index]['msg']}'),


                        ],
                      ),
                    ),

                    Expanded(flex: 1,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${stuName[index]['time']}'),
                          CircleAvatar(radius: 8,backgroundColor: Colors.green,child: Text("2"),),
                        ],
                      ),
                    ),


                  ],
                ),
                  margin: EdgeInsets.all(4),
                  height: 80,
                  width: double.infinity,

                ),
              );
            }
        )

    );
  }
}
