import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_base/common/di/injection.dart';
import 'package:flutter_bloc_base/core/const/constants+string.dart';
import 'package:flutter_bloc_base/core/util/size_util.dart';
import 'package:flutter_bloc_base/core/widget/core_widget_atom.dart';
import 'package:get_it/get_it.dart';
import 'package:google_ui/google_ui.dart';

import 'cubit/loginpage_cubit.dart';

class LoginPage extends StatelessWidget {
  final serviceLocator = GetIt.instance.get<InjectionDI>();
  
  TextEditingController emailC = new TextEditingController();
  TextEditingController passwordC = new TextEditingController();
  Color? textColor;
  Color? textColorDisabled;
  Color? disabledButton;

  setupTheme() {
    textColor = serviceLocator.getColorUtil().textColor;
    textColorDisabled = serviceLocator.getColorUtil().textDisabled;
    disabledButton = serviceLocator.getColorUtil().disabledButton;
  }

  @override
  Widget build(BuildContext context) {
    setupTheme();
    // TODO: implement build
    return CoreThemeBackgroundAtom(
      ListView(children:[
        Text(ConstantsString.LOGINTITLE),
        username(),
        SizedBox(height: SizeUtil.paddingVerticalNormal(context)),
        password(),
        SizedBox(height: SizeUtil.paddingVerticalNormal(context)),
        loginButton()

      ])
    );
  }

  Widget username(){
    return BlocProvider<LoginpageCubit>(
        create: (_) => serviceLocator.getLoginPageCubit(),
        child: BlocBuilder<LoginpageCubit, LoginpageState>(
            builder: (c, state) {
          return state.when(
              initial: () => GTextFormField(labelText: ConstantsString.EMAILANDPHONENUMBERLBL, controller: emailC, textColor: textColor),
              error: () => GTextFormField(labelText: ConstantsString.EMAILANDPHONENUMBERLBL, controller: emailC, textColor: textColor),
              loading: () => GTextFormField(labelText: ConstantsString.EMAILANDPHONENUMBERLBL, controller: emailC, readOnly: true, textColor: textColor));
        }));
  }

  Widget password() {
    return BlocProvider<LoginpageCubit>(
        create: (_) => serviceLocator.getLoginPageCubit(),
        child: BlocBuilder<LoginpageCubit, LoginpageState>(
            builder: (c, state) {
          return state.when(
              initial: () => GTextFormField(labelText: ConstantsString.PASSWORDLBL, controller: emailC, textColor: textColor, passwordField: true),
              error: () => GTextFormField(labelText: ConstantsString.PASSWORDLBL, controller: emailC, textColor: textColor, passwordField: true),
              loading: () => GTextFormField(labelText: ConstantsString.PASSWORDLBL, controller: emailC, readOnly: true, textColor: textColor, passwordField: true));
        }));
  }

  Widget loginButton() {
    return BlocProvider<LoginpageCubit>(
        create: (_) => serviceLocator.getLoginPageCubit(),
        child: BlocBuilder<LoginpageCubit, LoginpageState>(
            builder: (c, state) {
          return state.when(
              initial: () => GElevatedButton(
                            ConstantsString.LOGINBTNTITLE,
                            onPressed: () {
                              serviceLocator.getLoginPageCubit().loginEvent(emailC.text, passwordC.text);
                            },
                          ),
              error: () => GElevatedButton(
                            ConstantsString.LOGINBTNTITLE,
                            onPressed: () {
                              serviceLocator.getLoginPageCubit().loginEvent(emailC.text, passwordC.text);
                            },
                          ),
              loading: () => Container(
                height: SizeUtil.progressDialogHeightLogin(c),
                padding:EdgeInsets.only(left: SizeUtil.progressDialogPaddingLogin(c), right: SizeUtil.progressDialogPaddingLogin(c)), child:CircularProgressIndicator())
            );
        }));
  }

}