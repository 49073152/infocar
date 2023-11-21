
import 'package:flutter/material.dart';

class PageCar extends StatefulWidget {
  const PageCar({Key? key}) : super(key: key);

  @override
  State<PageCar> createState() => _PageCarState();
}

class _PageCarState extends State<PageCar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 35, 8, 0),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(212, 212, 212, 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Marcas",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Ver todas",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(53, 85, 255, 1),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                GridView.count(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  children: [
                    MarcaItem("Acura"),
                    MarcaItem("Acura"),
                    MarcaItem("Acura"),
                    MarcaItem("Acura"),
                    MarcaItem("Acura"),
                    MarcaItem("Acura"),
                    MarcaItem("Acura"),
                    MarcaItem("Acura"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget MarcaItem(String titulo) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/car.png", // Substitua pelo caminho da sua imagem
              width: 48,
            ),
            Text(
              titulo,
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      );
}

class CarroItem {
  final String modelo;
  final String marca;

  CarroItem({required this.modelo, required this.marca});
}

class MyApp extends StatelessWidget {
  final List<CarroItem> carros = [
    CarroItem(modelo: 'Modelo 1', marca: 'Marca A'),
    CarroItem(modelo: 'Modelo 2', marca: 'Marca B'),
    // Adicione mais itens conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Carros Disponíveis'),
        ),
        body: Column(
          children: [
            ListTile(
              title: const Text('Carros Disponíveis'),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Confira a lista completa',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text(
                      'Ver Todos',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: carros.length,
                itemBuilder: (context, index) {
                  return CarroItemWidget(carro: carros[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarroItemWidget extends StatelessWidget {
  final CarroItem carro;

  CarroItemWidget({required this.carro});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${carro.marca} - ${carro.modelo}'),
      subtitle: const Text('Detalhes do carro'),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        
        print('Clicou em ${carro.modelo}');
      },
    );
  }
}
