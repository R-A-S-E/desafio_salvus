import 'package:flutter/material.dart';
import 'package:salvus_site/database/db.dart';
import 'package:salvus_site/model/contact.dart';

import 'package:salvus_site/shared/widgets/bar_salvus.dart';
import 'package:salvus_site/shared/widgets/input_text_widget.dart';
import 'package:salvus_site/shared/widgets/outlined_button_green.dart';

class RegisterPage extends StatefulWidget {
  final Contact? conta;
  const RegisterPage({Key? key, this.conta}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String nome;
  late String email;
  late String senha;
  late String cpf;
  late String nascimento;
  late String telefone;
  late String genero;
  late String cep;
  late String estado;
  late String cidade;
  late String rua;
  late String deslocamento;
  late String profissoa;
  late String crm;
  late String especialidade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
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
                      Text("Dados Pessoais",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          )),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Nome completo *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              nome = value;
                              print(nome);
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'E-mail *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              email = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            obscureText: true,
                            label: 'Senha *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              senha = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'CPF *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              cpf = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Data de nascimento',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              nascimento = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Telefone celular *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              telefone = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          hint: Text("Gênero *"),
                          items: ['Masculino', 'Feminino'].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            genero = value as String;
                            print(genero);
                          },
                        ),
                      ),
                      SizedBox(height: 60),
                      Divider(),
                      SizedBox(height: 30),
                      Text("Endereço Residencial",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          )),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Cep *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              cep = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Estado *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              estado = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Cidade *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              cidade = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Rua *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              rua = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          hint: Text("Deslocamento máximo *"),
                          items: ['10km', '25km', '50km'].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            deslocamento = value as String;
                          },
                        ),
                      ),
                      SizedBox(height: 60),
                      Divider(),
                      SizedBox(height: 30),
                      Text("Área de atuação",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          )),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          hint: Text("Profissão *"),
                          items: [
                            'Médico',
                            'Enfermeiro',
                            'Fonoaudiologia',
                            'Técnico de Enfermagem'
                          ].map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            profissoa = value as String;
                          },
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'CRM *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              crm = value;
                            }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputTextWidget(
                            label: 'Especialidade *',
                            validator: (value) =>
                                value!.isEmpty ? "Empty" : null,
                            onChanged: (value) {
                              especialidade = value;
                            }),
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.24,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green.shade900,
                            ),
                            onPressed: addContact,
                            child: Text("Cadastrar")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future addContact() async {
    final contact = Contact(
        nome: nome,
        email: email,
        senha: senha,
        cpf: cpf,
        nascimento: nascimento,
        telefone: telefone,
        genero: genero,
        cep: cep,
        estado: estado,
        cidade: cidade,
        rua: rua,
        deslocamento: deslocamento,
        profissoa: profissoa,
        crm: crm,
        especialidade: especialidade);

    await DatabaseHandler.instance.create(contact);
    Navigator.of(context).pop();
  }
}
