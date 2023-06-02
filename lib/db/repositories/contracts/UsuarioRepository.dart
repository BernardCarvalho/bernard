import 'package:bernard/model/Usuario.dart';

abstract class UsuarioRepository {
  bool createUser(Usuario userData);
  List<Usuario> getAll();
  List<Usuario> findByEmail(String email);
  bool updateUsuario(Usuario userOldData, Usuario userNewData);
  bool deleteUsuario(Usuario userData);
}