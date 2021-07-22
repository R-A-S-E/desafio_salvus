import 'package:flutter/material.dart';
import 'package:salvus_site/shared/widgets/bar_salvus.dart';
import 'package:salvus_site/shared/widgets/input_text_widget.dart';
import 'package:salvus_site/shared/widgets/outlined_button_green.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BarSalvus(),
              Padding(
                padding: const EdgeInsets.fromLTRB(84, 34, 84, 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bem vindo",
                              style: TextStyle(
                                  fontSize: 42,
                                  color: Colors.green.shade900,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: 500,
                              child: Text(
                                "Conectando a Saúde para melhorar a Vida das Pessoas.",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.green.shade900,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: 500,
                              child: Text(
                                "Faça parte dessa rede de profissionais para que juntos"
                                " possamos melhoorar o cuidado, satisfação e qualidade "
                                "de vida de quem mais precisa.",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: 500,
                              child: Text(
                                "Através do sistema Salvus podemos direcionar"
                                " profissionais em diferente localidade do pais, de "
                                "forma rápida e segura.",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(34, 34, 34, 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Faça seu login",
                                    style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.green.shade900,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(height: 20),
                                  InputTextWidget(
                                    label: 'E-mail',
                                    validator: (value) =>
                                        value!.isEmpty ? 'Empty' : null,
                                    onChanged: (String value) {},
                                  ),
                                  SizedBox(height: 20),
                                  InputTextWidget(
                                      obscureText: true,
                                      label: 'Senha',
                                      validator: (value) =>
                                          value!.isEmpty ? "Empty" : null,
                                      onChanged: (value) {}),
                                  SizedBox(height: 20),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.24,
                                    height: 50,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green.shade900,
                                        ),
                                        onPressed: () {},
                                        child: Text("Login")),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Esqueceu a senha ?",
                                        style: TextStyle(
                                            color: Colors.blueGrey.shade600),
                                      )),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Crie sua conta já ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  OutlinedButtonGreen(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width *
                                        0.24,
                                    text: "Criar Conta",
                                    onPressed: () async =>
                                        await Navigator.pushNamed(
                                            context, "/Register"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
