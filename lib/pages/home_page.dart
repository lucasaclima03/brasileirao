import 'package:brasileirao/pages/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var controller = HomeController();
  HomePage({Key? key}) : super(key: key);

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
          final tabela = controller.tabela;
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
