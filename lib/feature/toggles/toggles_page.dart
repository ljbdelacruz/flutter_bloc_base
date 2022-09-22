



import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_base/common/di/injection.dart';
import 'package:flutter_bloc_base/feature/error/atom/error_template.dart';
import 'package:flutter_bloc_base/feature/loading/atom/loading_page.dart';
import 'package:get_it/get_it.dart';

import 'cubit/toggles_manager_cubit.dart';

class TogglesPage extends StatelessWidget {
  final serviceLocator = GetIt.instance.get<InjectionDI>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<TogglesManagerCubit>(
        create: (_) => serviceLocator.getTogglesManagerCubit(),
        child: BlocBuilder<TogglesManagerCubit, TogglesManagerState>(
            builder: (c, state) {
          return state.when(
              initial: () => togglesBody(c),
              error: () => ErrorPage(),
              loading: () => LoadingPage()
          );
        }));
  }


  Widget togglesBody(BuildContext context) {
    return ListView(children:[
      Text("Toggles here")
    ]);
  }
  
}