import 'package:flutter/material.dart';

import 'package:usersave/prefereces/preferences.dart';
import 'package:usersave/widgets/index.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfíl Screen'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Center(
        child: Column(
          children: [
            (Preferences.img == '')
                ? const CircleAvatar(
                    radius: 80,
                    child: Icon(Icons.photo, size: 50),
                  )
                : CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(Preferences.img),
                  ),
            Text('Mi Nombre es: ${Preferences.nombre}'),
            Text('Mi Nombre es: ${Preferences.apellido}'),
            Text('Mi Nombre es: ${Preferences.ciudad}'),
            Text('Mi Nombre es: ${Preferences.pais}'),
            (Preferences.genero != 1)
                ? const Text('Genero: Femenino')
                : const Text('Genero: Masculino'),
          ],
        ),
      ),
    );
  }
}
