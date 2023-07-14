import 'package:flutter/material.dart';

class UIControlsScreen extends StatefulWidget {
  static const name = 'controls'; //Nombre comun de ruta

  const UIControlsScreen({super.key});

  @override
  State<UIControlsScreen> createState() => _UIControlsScreenState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsScreenState extends State<UIControlsScreen> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantBreakgfast = false;
  bool wantLunch = false;
  bool wantDinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          SwitchListTile(
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            },
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
          ),
          ExpansionTile(
            title: const Text('Vehiculos de transporte'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
                  title: const Text('By Car'),
                  subtitle: const Text("Viajas por carro"),
                  value: Transportation.car,
                  groupValue: selectedTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectedTransportation = Transportation.car;
                    });
                  }),
              RadioListTile(
                  title: const Text('By boat'),
                  subtitle: const Text("Viajas por bote"),
                  value: Transportation.boat,
                  groupValue: selectedTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectedTransportation = Transportation.boat;
                    });
                  }),
              RadioListTile(
                  title: const Text('By Submarino'),
                  subtitle: const Text("Viajas por Submarino"),
                  value: Transportation.submarine,
                  groupValue: selectedTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectedTransportation = Transportation.submarine;
                    });
                  }),
              RadioListTile(
                  title: const Text('By Plane'),
                  subtitle: const Text("Viajas por avion"),
                  value: Transportation.plane,
                  groupValue: selectedTransportation,
                  onChanged: (value) {
                    setState(() {
                      selectedTransportation = Transportation.plane;
                    });
                  })
            ],
          ),
          CheckboxListTile(
              value: wantLunch,
              title: const Text('Almuerzo?'),
              onChanged: (value) {
                setState(() {
                  wantLunch = !wantLunch;
                });
              }),
          CheckboxListTile(
              value: wantBreakgfast,
              title: const Text('Desayuno?'),
              onChanged: (value) => {
                    setState(() {
                      wantBreakgfast = !wantBreakgfast;
                    })
                  }),
          CheckboxListTile(
              value: wantDinner,
              title: const Text('Cena?'),
              onChanged: (value) => setState(() {
                    wantDinner = !wantDinner;
                  }))
        ],
      ),
    );
  }
}
