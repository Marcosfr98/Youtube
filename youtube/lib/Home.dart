import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xffcccccc),
        ),
        title: Image.asset(
            "images/youtube_logo.png",
            width: 75,
            height: 50,
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.account_circle),
          ),
        ],
        elevation: 8,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (indice){
          setState(() {
            indiceAtual = indice;
          });
        },
        currentIndex: indiceAtual,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: "Em alta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "Enviar vídeo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: "Inscrições",
          ),
        ],
      ),
    );
  }
}
