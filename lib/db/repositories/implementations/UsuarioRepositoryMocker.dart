import 'package:bernard/model/Usuario.dart';
import '../contracts/UsuarioRepository.dart';

class UsuarioRepositoryMocker implements UsuarioRepository {

  static final List<Usuario> userList = List.of(
    Iterable.generate(3, (index) =>
     Usuario("Bernard","bernardsawc@gmail.com","teste","(63) 97070-7070",true, false)
    )
  ,growable: true);

  static UsuarioRepository mock(){
    return UsuarioRepositoryMocker();
  }


  @override
  List<Usuario> getAll() {
    return userList;
  }



  @override
  bool createUser(Usuario userData) {
    try{
      userList.add(userData);
      return true;
    }catch(e){
      return false;
    }
  }

  @override
  bool deleteUsuario(Usuario userData) {
    try{
      userList.remove(userData);
      return true;
    }catch(e){
      return false;
    }
  }

  @override
  bool updateUsuario(Usuario userOldData, Usuario userNewData) {
    // TODO: implement updateUsuario
    throw UnimplementedError();
  }

  @override
  List<Usuario> findByEmail(String email) {
    return userList.where((element) => element.email==email).toList(growable: true);
  }
}