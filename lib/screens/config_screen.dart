import 'package:flutter/material.dart';
import 'package:usersave/prefereces/preferences.dart';
import 'package:usersave/widgets/index.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextFieldWidget(
              initialValue: Preferences.img,
              keyboardType: TextInputType.text,
              hintText: 'Imagen',
              prefixIcon: const Icon(Icons.photo),
              onChanged: (value) {
                Preferences.img = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.nombre,
              keyboardType: TextInputType.name,
              hintText: 'Nombre',
              prefixIcon: const Icon(Icons.person),
              onChanged: (value) {
                Preferences.nombre = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.apellido,
              keyboardType: TextInputType.name,
              hintText: 'Apellido',
              prefixIcon: const Icon(Icons.person),
              onChanged: (value) {
                Preferences.apellido = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.ciudad,
              keyboardType: TextInputType.name,
              hintText: 'Ciudad',
              prefixIcon: const Icon(Icons.location_city),
              onChanged: (value) {
                Preferences.ciudad = value;
                setState(() {});
              },
            ),
            CustomTextFieldWidget(
              initialValue: Preferences.pais,
              keyboardType: TextInputType.name,
              hintText: 'Pais',
              prefixIcon: const Icon(Icons.location_on),
              onChanged: (value) {
                Preferences.pais = value;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              value: 1,
              groupValue: Preferences.genero,
              title: const Text('Masculino'),
              onChanged: (value) {
                Preferences.genero = value ?? 1;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.green,
              value: 2,
              groupValue: Preferences.genero,
              title: const Text('Femenino'),
              onChanged: (value) {
                Preferences.genero = value ?? 2;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
