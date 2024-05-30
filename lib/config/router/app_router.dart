import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/auth/presentation/screens/login_screen.dart';
import 'package:teslo_shop/features/auth/presentation/screens/register_screen.dart';
import 'package:teslo_shop/features/auth/presentation/screens/welcome.dart';
import 'package:teslo_shop/features/books/audioLibro/presentation/screens/traductor-libro.dart';
import 'package:teslo_shop/features/books/categoriaLibro/presentation/screens/categoria-especifica.dart';
import 'package:teslo_shop/features/books/categoriasLibros/presentation/screens/todas-categorias-screen.dart';
import 'package:teslo_shop/features/books/libreria-personal/presentation/screens/personal-space.dart';
import 'package:teslo_shop/features/books/buscadorGeneral/presentation/screens/buscador-general.dart';
import 'package:teslo_shop/features/books/membresia/presentation/screens/membresia-page.dart';
import 'package:teslo_shop/features/books/traductorLibro/presentation/screens/audio-libro.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => WelcomScreen(),
    ),
    GoRoute(
      path: '/auth/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/auth/registre',
      builder: (context, state) => RegistreScreen(),
    ),
    GoRoute(
      path: '/todasCategorias',
      builder: (context, state) => const CategoriasLibrosScreen(),
    ),
    GoRoute(
      path: '/espacioPersonal',
      builder: (context, state) => const PersonalSpace(),
    ),
    GoRoute(
      path: '/categoriaEspecifica',
      builder: (context, state) => const CategoriaEspecifica(),
    ),
    GoRoute(
      path: '/buscadorGeneral',
      builder: (context, state) => const BuscadorGeneralPage(),
    ),
    GoRoute(
      path: '/audioLibro',
      builder: (context, state) => const AudioLibroPage(),
    ),
    GoRoute(
      path: '/traductorLibro',
      builder: (context, state) => const TraductorLibroPage(),
    ),
    GoRoute(
      path: '/paqueteMembresia',
      builder: (context, state) => const MembresiaPage(),
    ),
  ],
);

// final Map<String, Widget Function(BuildContext)> appRoutes = {
//   '/': (_) => HomeScreen(),
//   'prueba': (_) => PosterComisaria(),
//   'categorias': (_) => CategoriasSelection(),
//   'mapaPolicial': (_) => MapsScreen(),
//   'registre': (_) => RegistreScreen(),
//   'login': (_) => LoginScreen(),
//   'usuarios': (_) => UsuariosPagee(),
//   'lista': (_) => ListPublicacionsPage(),
//   'chatSala': (_) => SalaNotificacion(),
//   'publicacion': (_) => PublicacionPage(),
//   'perfil': (_) => PerfilScreen(),
//   'comisaria': (_) => PublicacionPage(),
//   'posterPatrulla': (_) => PosterComisaria(),
//   'alerta': (_) => AlertaScreen()
// };