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
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 160.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[50],
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Joke App!',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.blue[900], fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0,),
            Text(
              'Enjoy a collection of fun jokes to brighten your day.',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.blue[800], fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16.0,),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Fetch Jokes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                elevation: 4,
              ),
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,

              ),
            )
          ],
        )
      )
    );
  }
}
