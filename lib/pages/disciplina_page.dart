import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sciencenotes/pages/biologia_page.dart';
import 'package:sciencenotes/pages/fisica_page.dart';
import 'package:sciencenotes/pages/quimica_page.dart';


class Disciplina extends StatefulWidget {
  const Disciplina({Key? key}) : super(key: key);

  @override
  State<Disciplina> createState() => _DisciplinaState();
}

class _DisciplinaState extends State<Disciplina> {
  List<Widget> _telas = [
    FisicaPage(),
    QuimicaPage(),
    BiologiaPage(),
  ];
  int selectedIndex = 0;
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Conteúdo',
          style: TextStyle(
              fontSize: 24, color: Colors.white,  fontFamily: 'Staatliches'),
        ),
        backgroundColor: const Color(0xFFA7AED3),
      ),
      body: _telas[0],
      //  const Center(
      //   child: Text('Página do Conteudo Específico',
      //     style: TextStyle(
      //         fontSize: 30
      //     ),
      //     textAlign: TextAlign.center,
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple.shade50,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_solid), label: 'Resumos',),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.video_camera_solid), label: 'Vídeos',),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.pencil_ellipsis_rectangle), label: 'Questões',),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_pencil), label: 'Simulado',),
        ],
      ),
    );
  }
}
