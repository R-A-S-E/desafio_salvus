import 'package:flutter/material.dart';
import 'package:salvus_site/shared/widgets/bar_salvus.dart';
import 'package:salvus_site/shared/widgets/input_text_widget.dart';
import 'package:salvus_site/shared/widgets/outlined_button_green.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          BarSalvus(),
          Padding(
            padding: const EdgeInsets.fromLTRB(140, 34, 140, 34),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButtonGreen(
                      height: 60,
                      width: 120,
                      text: "Voltar",
                      onPressed: () => Navigator.pop(context),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Registro",
                      style: TextStyle(
                          fontSize: 42,
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 30),
                    Divider(),
                    SizedBox(height: 30),
                    InputTextWidget(
                        obscureText: true,
                        label: 'Senha',
                        validator: (value) => value!.isEmpty ? "Empty" : null,
                        onChanged: (value) {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
