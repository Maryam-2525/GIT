import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerDelegate: RouterDelegate(RoutesBuilder: (_)),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> screens = [
    Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text('welcome to the home page'),
    ),
    Container(
      color: const Color.fromARGB(255, 173, 200, 222),
      alignment: Alignment.center,
      child: const Text('welcome to the favourite page'),
    ),
    Container(
      color: const Color.fromARGB(255, 128, 171, 186),
      alignment: Alignment.center,
      child: const Text('welcome to the settings page'),
    ),
  ];
  int selectedindex = 0;
  var _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter == 1) {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.settings),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.person),
          ),
        ],
        backgroundColor: Colors.blueAccent,
        leading: const Icon(
          Icons.shop_2,
          color: Colors.white,
        ),
        title: const Text(
          'Bamuri investment',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        //  Theme.of(context).colorScheme.inversePrimary,

        // title: Text(widget.title),
      ),
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            selectedIndex: selectedindex,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('home'),
              ),
              NavigationRailDestination(
                  icon: Icon(Icons.favorite), label: Text('favourite')),
              NavigationRailDestination(
                  icon: Icon(Icons.settings), label: Text('settings')),
            ],
            // leading: const Column(
            //   children: [
            //     SizedBox(
            //       height: 8,
            //     ),
            //     CircleAvatar(
            //       radius: 20,
            //       child: Icon(Icons.person),
            //     )
            //   ],
            // ),

            //  (value) {
            //   setState(() {
            //     index = value;
            //     const MyHome();
            //     Navigator.pop(context);
            //     // print(index);
            //   });
            // },
          ),
          Expanded(child: screens[selectedindex])
        ],
      )
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     const Text(
      //       'You have pushed the button this many times:',
      //     ),
      //     Text(
      //       '$_counter',
      //       style: Theme.of(context).textTheme.headlineMedium,
      //     ),
      //     const MyWidget()
      //   ],
      // ),
      ,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
          const ButtonWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'decrement',
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ButtonNavBar(),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          print('thank you');
        },
        child: const Icon(Icons.home));
  }
}

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(
          icon: Icon(Icons.contact_emergency), label: 'Contact'),
    ]);
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hello'),
        SizedBox(
          height: 50,
        ),
        Text('Ruqayya'),
        SizedBox(
          height: 50,
        ),
        Text('welcome')
      ],
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({super.key});

  @override
  State<MyHomeWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomeWidget> {
  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


























































// // class MyHome extends StatelessWidget {
// //   const MyHome({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Scaffold(
// //       backgroundColor: Colors.white,
// //       body: MaterialApp(
// //           home: Center(
// //         child: Column(
// //           children: [Text('welcome home')],
// //         ),
// //       )),
// //     );
// //   }
// // }

// class MyFavourite extends StatelessWidget {
//   const MyFavourite({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: MaterialApp(
//           home: Center(
//         child: Column(
//           children: [Text('welcome to favourite')],
//         ),
//       )),
//     );
//   }
// }

// class MySettings extends StatelessWidget {
//   const MySettings({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: MaterialApp(
//           home: Center(
//         child: Column(
//           children: [Text('welcome to settings')],
//         ),
//       )),
//     );
//   }
// }

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('hi'),
//       ),
//     );
//   }
// }

