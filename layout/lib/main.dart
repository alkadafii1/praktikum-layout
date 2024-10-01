import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


// @override
  Widget build(BuildContext context) {
  
    // tittlesection
    Widget tittlesection = Container(
  padding:
  const EdgeInsets.all(16.0),
  child: Row(
    children: [
    Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:const EdgeInsets.only(bottom: 8.0),
          child: const Text(
            '0eschinen Lake Campground',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ), // textstyle
          ), // text
        ),
      const Text('Kandersteg, Switzerland',
      style: TextStyle(
        color: Colors.grey,
      ),
      ),

      
      ],
      )
    ),

    Icon(
      Icons.star,
      color: Colors.red[500],
      ),
      const Text('41')
    ],
  )
    );
    Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Color color = Theme.of(context).primaryColor;
//buttonSection
Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
// textSection
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Carilah teks di internet yang sesuai '
    'dengan foto atau tempat wisata yang ingin '
    'Anda tampilkan. '
    'Tambahkan nama dan NIM Anda sebagai '
    'identitas hasil pekerjaan Anda. '
    'Selamat mengerjakan 🙂.',
    softWrap: true,
  ),
);
 return MaterialApp(
  title: 'Flutter Layout Demo',
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: const Text('ALKADAFI FIRNAWAN | 362358302108'),
    ),
    body: ListView(
      children: [
        Image.asset(
          'assets/danau.jpeg',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
        tittlesection,
        buttonSection,
        textSection,
      ],
    ),
    ),
  );
}
}