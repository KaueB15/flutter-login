import 'package:flutter/material.dart';
import 'package:login/pages/home.page.dart';
import 'package:login/pages/recover.page.dart';
import 'package:login/pages/register.page.dart';
import 'package:login/utils/image.utils.dart';
import 'package:login/validators/input.validator.dart';
import 'package:login/widgets/button.widget.dart';
import 'package:login/widgets/input.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entre na sua conta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Entre na sua conta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final validators = TextFieldValidators();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      //
      child: Scaffold(
        //
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 255, 156, 230),
        ),
        //
        body: Form(
          key: _formkey,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Container(
                    width: 150,
                    height: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(ImageUtils.IMG_AVATAR,),
                    ),
                  ),
                  //
                  SizedBox(
                    height: 40,
                  ),
                  //
                  InputWidget(
                    id: 1, 
                    label: "Digite seu email",
                    controller: _emailController,
                    validator: (value) {
                      if (value!.isEmpty) return "Digite um email";
                      if (!validators.isValidEmail(value)) return "Email inválido";
                      return null;
                    },
                  ),
                  //
                  SizedBox(
                    height: 20,
                  ),
                  //
                  InputWidget(
                    id: 2, 
                    label: "Digite sua senha", 
                    suffixIcon: Icon(Icons.visibility),
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) return "Digite uma senha";
                      if (!validators.isValidPassword(value)) return "Senha inválido";
                      return null;
                    },
                  ),
                  //
                  SizedBox(
                    height: 30,
                  ),
                  //
                  ButtonWidget(
                    id: 1, 
                    text: "Entrar", 
                    textColor: Colors.white, 
                    buttonColor: Color.fromARGB(255, 147, 197, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage())
                      );
                    }
                  ),
                  //
                  SizedBox(
                    height: 20
                  ),
                  Text("Ou"),
                  SizedBox(
                    height: 20
                  ),
                  //
                  ButtonWidget(
                    id: 2, 
                    text: "Criar uma nova conta", 
                    textColor: Colors.white, 
                    buttonColor: Color.fromARGB(255, 255, 125, 125),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage())
                      );
                    }
                    
                  ),
                  //
                  SizedBox(
                    height: 20
                  ),
                  //
                  ButtonWidget(
                    id: 3, 
                    text: "Recuperar conta", 
                    textColor: Color.fromARGB(255, 102, 102, 102), 
                    buttonColor: Color.fromARGB(255, 255, 192, 129),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RecoverPage())
                      );
                    }
                  ),
                  //
                        
                ],
              ),
            ),
          ),
        )
        //
      ),
    );
  }
}
