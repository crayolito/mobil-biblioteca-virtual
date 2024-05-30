import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/config/bloc/login/login_form_bloc.dart';
import 'package:teslo_shop/config/bloc/registro/registro_form_bloc.dart';
import 'package:teslo_shop/config/constants/const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: size.height,
        width: size.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/biblioteca3.jpg'),
                fit: BoxFit.fill)),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: size.height * .58,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.70),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Login',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: kBlackColor,
                    fontFamily: 'Courier',
                    fontSize: 39,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputCodigo(),
              const SizedBox(
                height: 25,
              ),
              const InputContrasena(),
              const SizedBox(height: 15),
              const ButtonIngresar(),
              const DireccionamientoRegistro()
            ],
          ),
        ),
      ),
    ));
  }
}

class DireccionamientoRegistro extends StatelessWidget {
  const DireccionamientoRegistro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              child: Text(
                "Don't have an count? \n",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: kBlackColor, fontFamily: 'Courier', fontSize: 20),
              ),
            ),
            SizedBox(
              height: 40,
              child: TextButton(
                  onPressed: () {
                    context.go('/auth/registre');
                  },
                  child: Text(
                    "!Register here!",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: kBlackColor,
                        fontFamily: 'Courier',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )),
            )
          ],
        ));
  }
}

class ButtonIngresar extends StatefulWidget {
  const ButtonIngresar({
    super.key,
  });

  @override
  State<ButtonIngresar> createState() => _ButtonIngresarState();
}

class _ButtonIngresarState extends State<ButtonIngresar> {
  @override
  Widget build(BuildContext context) {
    final loginFormBloc = BlocProvider.of<LoginFormBloc>(context, listen: true);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      height: 60,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: kBlackColor.withOpacity(.80),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: GestureDetector(
        onTap: () {
          loginFormBloc.add(OnFormSubmit());
          context.go('/todasCategorias');
        },
        child: const Text(
          'Ingresar',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Courier',
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
    );
  }
}

class InputContrasena extends StatelessWidget {
  const InputContrasena({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginFormBloc = BlocProvider.of<LoginFormBloc>(context, listen: true);

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 10, left: 10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kBlackColor.withOpacity(.80),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        onChanged: (value) {
          loginFormBloc.add(OnPasswordChanged(value));
        },
        cursorColor: Colors.white,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Courier',
            fontWeight: FontWeight.bold,
            fontSize: 25),
        decoration: InputDecoration(
            icon: const Icon(
              Icons.password,
              color: Colors.white,
            ),
            label: Text(
              'Password',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontFamily: 'Courier',
                  fontWeight: FontWeight.bold),
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}

class InputCodigo extends StatelessWidget {
  const InputCodigo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginFormBloc = BlocProvider.of<LoginFormBloc>(context, listen: true);

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 10, left: 10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kBlackColor.withOpacity(.80),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        onChanged: (value) {
          loginFormBloc.add(OnEmailChange(value));
        },
        cursorColor: Colors.white,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Courier',
            fontWeight: FontWeight.bold,
            fontSize: 25),
        decoration: InputDecoration(
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: Text(
              'Codigo',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontFamily: 'Courier',
                  fontWeight: FontWeight.bold),
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
