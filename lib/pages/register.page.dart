import 'package:flutter/material.dart';
import 'package:login/validators/input.validator.dart';
import 'package:login/widgets/button.widget.dart';
import 'package:login/widgets/input.widget.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
      final _formkey = GlobalKey<FormState>();
      final _emailController = TextEditingController();
      final _cpfController = TextEditingController();
      final _passwordController = TextEditingController();
      final _phoneController = TextEditingController();
      final validators = TextFieldValidators();

    return SafeArea(
      //
      child: Scaffold(
        //
        appBar: AppBar(
          title: Text("Criar uma nova conta"),
          backgroundColor: Color.fromARGB(255, 255, 156, 230),
        ),
        //
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  InputWidget(
                    id: 3, 
                    label: "Digite seu telefone", 
                    controller: _phoneController, 
                    validator: (value) {
                    if (value!.isEmpty) return "Digite um telefone";
                    if (!validators.isValidEmail(value)) return "Telefone inválido";
                    return null;
                  },
                  prefixIcon: Icon(Icons.call),
                  ),
                  SizedBox(
                      height: 20,
                  ),
                  InputWidget(
                    id: 4, 
                    label: "Digite sua senha", 
                    controller: _passwordController, 
                    validator: (value) {
                      if (value!.isEmpty) return "Digite um email";
                      if (!validators.isValidEmail(value)) return "Email inválido";
                      return null;
                    },
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility),
                  ),  
                  SizedBox(
                    height: 20,
                  ),
                  InputWidget(
                    id: 4, 
                    label: "Confirme sua senha", 
                    controller: _passwordController, 
                    validator: (value) {
                      if (value!.isEmpty) return "Digite um email";
                      if (!validators.isValidEmail(value)) return "Email inválido";
                      return null;
                    },
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility),
                  ), 
                  SizedBox(
                    height: 20,
                  ), 
                  ButtonWidget(
                    id: 1, 
                    text: "Criar conta e entrar", 
                    textColor: Colors.white, 
                    buttonColor: Color.fromARGB(255, 92, 255, 166), 
                    onPressed: null
                    )
                ],
              ),
              
            ),
          ),
        ),
      ),
      //
    );
  }
}