import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teste_tecnico01_escribo/modules/presenters/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 45, right: 45, top: 20),
        child: Column(children: [
          Observer(
            builder: (_) => TextField(
              decoration: new InputDecoration(labelText: "Enter your number"),
              keyboardType: TextInputType.number,
              // value: controller.editAccountStore.phone,
              onChanged: homeController.editAccountStore.setnumero,
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Column(
              children: [
                Observer(builder: (_) {
                  return Text(
                    homeController.editAccountStore.resultado.toString() ?? "0",
                    style: TextStyle(color: Colors.black54, fontSize: 28),
                  );
                }),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      homeController.validate();
                    },
                    child: Text("Calcular"))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
