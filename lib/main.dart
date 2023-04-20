import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'No Country For Old Men',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Dirigida por: Ethan Coen, Joel Coen',
                  style: TextStyle(
                    color: Color(0xff141414),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Text(
            '93',
          ),
          Icon(
            Icons.percent,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.purple, Icons.movie, 'Ver'),
          _buildButtonColumn(Colors.purple, Icons.info, 'Sinopsis'),
          _buildButtonColumn(Colors.purple, Icons.library_add, 'Calificar'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lo que resalta en toda la película es la maldad de Chigurh, sí.'
        'Pero aún más impactante es lo que provoca en el espectador.'
        'Chigurh nunca se toca el corazón ante sus víctimas; ni aún cuando'
        'para asesinarlo, tapa la cara de un narcotraficante mientras éste le suplica “no me'
        'mates por favor”. La maldad que profesa Chigurgh tiene que ver con la diversión, con'
        'comparar el asesinato con algo tan fácil como respirar  o lanzar una moneda al aire.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.blueGrey)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              const Text('Blockbuster', style: TextStyle(color: Colors.yellow)),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/No_country.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

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
}
