import 'package:flutter/material.dart';
import 'package:login/validators/input.validator.dart';
import 'package:login/widgets/button.widget.dart';
import 'package:login/widgets/input.widget.dart';

class RecoverPage extends StatelessWidget {
  RecoverPage({
    super.key
    });

  @override
  Widget build(BuildContext context) {

    final _formkey = GlobalKey<FormState>();
    final _emailController = TextEditingController();
    final _cpfController = TextEditingController();
    final validators = TextFieldValidators();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recuperar conta"),
          backgroundColor: Color.fromARGB(255, 255, 156, 230),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Form(
              child: Column(
                children: [
                  InputWidget(
                        id: 1, 
                        label: "Digite seu email", 
                        controller: _emailController, 
                        validator: (value) {
                          if (value!.isEmpty) return "Digite um email";
                          if (!validators.isValidEmail(value)) return "Email inválido";
                          return null;
                        },
                        prefixIcon: Icon(Icons.alternate_email),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InputWidget(
                    id: 2, 
                    label: "Digite seu cpf", 
                    controller: _cpfController, 
                    validator: (value) {
                      if (value!.isEmpty) return "Digite um cpf";
                      if (!validators.isValidCPF(value)) return "Cpf inválido";
                      return null;
                    },
                    prefixIcon: Icon(Icons.badge),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    id: 1, 
                    text: "Recuperar Senha", 
                    textColor: Colors.white,
                    buttonColor: Color.fromARGB(255, 147, 197, 255),
                    onPressed: null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}