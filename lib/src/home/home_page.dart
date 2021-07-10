import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:salvus_site/shared/widgets/input_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(84, 34, 0, 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'data:image/png;base64,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',
                  scale: 2,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    SizedBox(width: 150),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(34, 34, 34, 0),
                        child: Container(
                          height: 400,
                          width: 350,
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
                                width: 350,
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
                              Container(
                                width: 350,
                                height: 50,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            width: 2, color: Colors.green),
                                        primary: Colors.green),
                                    onPressed: () {},
                                    child: Text(
                                      "Criar Conta",
                                      style: TextStyle(fontSize: 20),
                                    )),
                              )
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
        ),
      ),
    );
  }
}
