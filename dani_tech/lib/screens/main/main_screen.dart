import 'package:dani_tech/screens/categories/categories_screen.dart';
import 'package:dani_tech/screens/favorites/favorites_screen.dart';
import 'package:dani_tech/screens/home_screen/home_screen.dart';
import 'package:dani_tech/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

// Navegação entre as páginas usando o NavBar
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Estado inicial ao carregar o app - chamado para iniciar na home
  int defaultPageIndex = 0;

  // Lista de navegação da navbar
  List<Widget> pageList = <Widget>[
    const HomeScreen(),
    const CategoriesScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // Comando para chamar o estado inicial - HomePage
        body: pageList[defaultPageIndex],

        // Personalização
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
              labelTextStyle:
                  MaterialStatePropertyAll(TextStyle(fontFamily: 'Inter'))),

          // Personalização dos ícones da navbar
          child: NavigationBar(
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.list), label: 'Categorias'),
              NavigationDestination(
                  icon: Icon(Icons.favorite), label: 'Favoritos'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
            ],

            // Comando para alterar a página de acordo com o valor do index
            selectedIndex: defaultPageIndex,
            onDestinationSelected: (value) {
              setState(() {
                defaultPageIndex = value;
              });
            },
          ),
        ));
  }
}
