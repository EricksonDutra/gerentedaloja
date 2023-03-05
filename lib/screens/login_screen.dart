import 'package:flutter/material.dart';
import 'package:gerentedaloja/blocs/login_bloc.dart';
import 'package:gerentedaloja/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginBloc = LoginBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    Icons.store,
                    size: 150,
                    color: Colors.pinkAccent,
                  ),
                  InputField(
                    icon: Icons.person_outline,
                    hint: "Usuário",
                    obscure: false,
                    stream: _loginBloc.outEmail,
                    onChanged: _loginBloc.changeEmail,
                  ),
                  InputField(
                    icon: Icons.lock_outlined,
                    hint: "Senha",
                    obscure: true,
                    stream: _loginBloc.outPassword,
                    onChanged: _loginBloc.changePassword,
                  ),
                  const SizedBox(height: 32),
                  StreamBuilder<Object>(
                      stream: _loginBloc.outSubmitValid,
                      builder: (context, snapshot) {
                        return SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: snapshot.hasData ? () {} : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent,
                              textStyle: const TextStyle(color: Colors.white),
                              disabledBackgroundColor:
                                  Colors.pinkAccent.withAlpha(140),
                            ),
                            child: const Text('Entrar'),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
