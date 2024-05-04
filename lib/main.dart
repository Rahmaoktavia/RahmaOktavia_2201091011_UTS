import 'package:coba/Latihansatu2201091011.dart';
import 'package:coba/screen_page/page_register_api.dart';
import 'package:coba/screen_page/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless : widget statis
//statef
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(), // Atau ganti dengan halaman lain jika diperlukan
      debugShowCheckedModeBanner: false,

    );
  }
}

//untuk membuat class --> ketik st
//contoh hirarki single

// class PageUtama extends StatelessWidget {
//   const PageUtama({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text('Project MI2C'),
//       ),
//       body: Center(
//         child: Text('Ini adalah Project Pertama'),
//       ),
//     );
//   }
// }

//contoh hirarki multiple
class PageUtama extends StatelessWidget {
  const PageUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Project MI2C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              fit: BoxFit.contain,
              height: 200,
              width: 200,
      ),
            Text('Program Studi: Manajemen Informatika 2C'),
            Text('Kampus Politeknik Negeri Padang'),
            // MaterialButton(onPressed:(){},
            //   child: Text('Explore More',
            //   style: TextStyle))
          ],
        ),

      ),
    );
  }
}

// class PageHome extends StatelessWidget {
//   const PageHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       //appBar : property
//       //AppBar : Widget
//
//       appBar: AppBar(
//         title: Text('Ini Project Pertama'),
//         backgroundColor: Colors.deepOrangeAccent,
//       ),
//       body: Container(
//         //child : cuma bisa menampung 1 widget
//         //children : bisa menampung lebih dari 1 widget (column, list, stack)
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text('Jurusan Teknologi Informasi',
//                 style: TextStyle(color: Colors.deepOrangeAccent,
//                     fontSize: 30, fontWeight: FontWeight.bold
//                 ),
//               ),
//               SizedBox(height: 30,),
//               Text('Program Studi Manajemen Informatika'),
//               Text('Kelas MI 2C'),
//               Text('Politeknik Negeri Padang',
//                 style: TextStyle(
//                     color: Colors.green,
//                     fontSize: 12
//                 ),
//               ),
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//}