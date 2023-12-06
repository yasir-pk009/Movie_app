import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/dependency_injection/injection.config.dart';


final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureIndjection() async{
  $initGetIt(getIt,environment: Environment.prod);
}

