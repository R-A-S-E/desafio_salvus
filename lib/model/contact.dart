final String tableNotes = 'contact';

class ContactFields {
  static final List<String> values = [
    idC,
    nomeC,
    emailC,
    senhaC,
    cpfC,
    nascimentoC,
    telefoneC,
    generoC,
    cepC,
    estadoC,
    cidadeC,
    ruaC,
    deslocamentoC,
    profissaoC,
    crmC,
    especialidadeC
  ];
  static final String idC = "_idC";
  static final String nomeC = "nomeC";
  static final String emailC = "emailC";
  static final String senhaC = "senhaC";
  static final String cpfC = "cpfC";
  static final String nascimentoC = "nascimentoC";
  static final String telefoneC = "telefoneC";
  static final String generoC = "generoC";
  static final String cepC = "cepC";
  static final String estadoC = "estadoC";
  static final String cidadeC = "cidadeC";
  static final String ruaC = "ruaC";
  static final String deslocamentoC = "deslocamentoC";
  static final String profissaoC = "profissaoC";
  static final String crmC = "crmC";
  static final String especialidadeC = "especialidadeC";
}

class Contact {
  int? id;
  String nome;
  String email;
  String senha;
  String cpf;
  String nascimento;
  String telefone;
  String genero;
  String cep;
  String estado;
  String cidade;
  String rua;
  String deslocamento;
  String profissoa;
  String crm;
  String especialidade;

  Contact({
    this.id,
    required this.nome,
    required this.email,
    required this.senha,
    required this.cpf,
    required this.nascimento,
    required this.telefone,
    required this.genero,
    required this.cep,
    required this.estado,
    required this.cidade,
    required this.rua,
    required this.deslocamento,
    required this.profissoa,
    required this.crm,
    required this.especialidade,
  });

  Contact copy({
    int? id,
    String? nome,
    String? email,
    String? senha,
    String? cpf,
    String? nascimento,
    String? telefone,
    String? genero,
    String? cep,
    String? estado,
    String? cidade,
    String? rua,
    String? deslocamento,
    String? profissoa,
    String? crm,
    String? especialidade,
  }) =>
      Contact(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        email: email ?? this.email,
        senha: senha ?? this.senha,
        cpf: cpf ?? this.cpf,
        nascimento: nascimento ?? this.nascimento,
        telefone: telefone ?? this.telefone,
        genero: genero ?? this.genero,
        cep: cep ?? this.cep,
        estado: estado ?? this.estado,
        cidade: cidade ?? this.cidade,
        rua: rua ?? this.rua,
        deslocamento: deslocamento ?? this.deslocamento,
        profissoa: profissoa ?? this.profissoa,
        crm: crm ?? this.crm,
        especialidade: especialidade ?? this.especialidade,
      );

  static Contact fromJson(Map<String, Object?> json) => Contact(
        id: json[ContactFields.idC] as int,
        nome: json[ContactFields.nomeC] as String,
        email: json[ContactFields.emailC] as String,
        senha: json[ContactFields.senhaC] as String,
        cpf: json[ContactFields.cpfC] as String,
        nascimento: json[ContactFields.nascimentoC] as String,
        telefone: json[ContactFields.telefoneC] as String,
        genero: json[ContactFields.generoC] as String,
        cep: json[ContactFields.cepC] as String,
        estado: json[ContactFields.estadoC] as String,
        cidade: json[ContactFields.cidadeC] as String,
        rua: json[ContactFields.ruaC] as String,
        deslocamento: json[ContactFields.deslocamentoC] as String,
        profissoa: json[ContactFields.profissaoC] as String,
        crm: json[ContactFields.crmC] as String,
        especialidade: json[ContactFields.especialidadeC] as String,
      );

  Map<String, Object?> toJson() => {
        ContactFields.idC: id,
        ContactFields.nomeC: nome,
        ContactFields.emailC: email,
        ContactFields.senhaC: senha,
        ContactFields.cpfC: cpf,
        ContactFields.nascimentoC: nascimento,
        ContactFields.telefoneC: telefone,
        ContactFields.generoC: genero,
        ContactFields.cepC: cep,
        ContactFields.estadoC: estado,
        ContactFields.cidadeC: cidade,
        ContactFields.ruaC: rua,
        ContactFields.deslocamentoC: deslocamento,
        ContactFields.profissaoC: profissoa,
        ContactFields.crmC: crm,
        ContactFields.especialidadeC: especialidade
      };
}
