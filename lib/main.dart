import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: JokeListPage(),
    );
  }
}

class JokeListPage extends StatelessWidget {
  const JokeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Joke App'),
       // backgroundColor: Colors.deepOrangeAccent[100],
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16.0,64.0,16.0,16.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff870160),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xff1f005c),
                Color(0xffffb56b),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
        alignment: Alignment.topCenter,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.orange[900],
                fontWeight: FontWeight.w900,
                fontFamily: 'ComicSans',
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 16.0,),
            Icon(Icons.face_2_sharp, size: 50.0, color: Colors.blue),
            const SizedBox(height: 16.0,),
            Text(
              'Enjoy a collection of fun jokes to brighten your day.',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16.0,),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Jokes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                elevation: 10,
              ),
            ),
            const SizedBox(height: 32.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Programming',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Why don’t skeletons fight each other?',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
