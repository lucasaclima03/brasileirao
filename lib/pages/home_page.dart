import 'package:brasileirao/models/time.dart';
import 'package:brasileirao/pages/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Brasileirão'),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, int i) {
          final List<Time> tabela = controller.tabela;
          return ListTile(
            leading: Image.network(
              tabela[i].brasao,
            ),
            title: Text(tabela[i].nome),
            trailing: Text(tabela[i].pontos.toString()),
          );
        },
        separatorBuilder: (_, __) => Divider(),
        itemCount: controller.tabela.length,
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
