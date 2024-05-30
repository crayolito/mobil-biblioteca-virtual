import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/config/bloc/registro/registro_form_bloc.dart';
import 'package:teslo_shop/config/constants/const.dart';

class RegistreScreen extends StatefulWidget {
  const RegistreScreen({super.key});

  @override
  State<RegistreScreen> createState() => _RegistreScreenState();
}

class _RegistreScreenState extends State<RegistreScreen> {
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
                'Registro',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: kBlackColor,
                    fontFamily: 'Courier',
                    fontSize: 39,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputNombre(),
              const SizedBox(
                height: 20,
              ),
              const InputEmail(),
              const SizedBox(
                height: 25,
              ),
              const InputContrasena(),
              const SizedBox(height: 15),
              const ButtonRegistrarse(),
            ],
          ),
        ),
      ),
    ));
  }
}

class ButtonRegistrarse extends StatefulWidget {
  const ButtonRegistrarse({
    super.key,
  });

  @override
  State<ButtonRegistrarse> createState() => _ButtonRegistrarseState();
}

class _ButtonRegistrarseState extends State<ButtonRegistrarse> {
  @override
  Widget build(BuildContext context) {
    final registroBloc = BlocProvider.of<RegistroBloc>(context, listen: true);

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
          registroBloc.add(OnSubmitRegistre(
              nombre: registroBloc.state.nombre,
              email: registroBloc.state.email,
              password: registroBloc.state.password));
          context.go('/todasCategorias');
        },
        child: const Text(
          'Registrar',
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
    final registroBloc = BlocProvider.of<RegistroBloc>(context, listen: true);

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
          registroBloc.add(OnChangePassword(value));
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

class InputNombre extends StatelessWidget {
  const InputNombre({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registroBloc = BlocProvider.of<RegistroBloc>(context, listen: true);

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
          registroBloc.add(OnChangeNombre(value));
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
              'Nombre',
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

class InputEmail extends StatelessWidget {
  const InputEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registroBloc = BlocProvider.of<RegistroBloc>(context, listen: true);

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
          registroBloc.add(OnChangeEmail(value));
        },
        cursorColor: Colors.white,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Courier',
            fontWeight: FontWeight.bold,
            fontSize: 25),
        decoration: InputDecoration(
            icon: const Icon(
              Icons.email,
              color: Colors.white,
            ),
            label: Text(
              'Email',
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
