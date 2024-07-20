import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_learn/common/routes/routes.dart';
import 'package:go_learn/common/values/constant.dart';
import 'package:go_learn/global.dart';
import 'package:go_learn/pages/application/bloc/app_blocs.dart';
import 'package:go_learn/pages/application/bloc/app_events.dart';
import 'package:go_learn/pages/profile/settings/bloc/settings_blocs.dart';
import 'package:go_learn/pages/profile/settings/bloc/settings_state.dart';
import 'package:go_learn/pages/profile/settings/widgets/settings_widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void removeUserData() {
    context.read<AppBlocs>().add(const TriggerAppEvent(0));
    Global.storageService.remove(AppConstants.STORAGE_USER_TOKEN_KEY);
    Navigator.of(context)
        .pushNamedAndRemoveUntil(AppRoutes.SIGN_IN, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBlocs, SettingsStates>(
            builder: (context, state) {
          return Container(
            child: Column(
              children: [settingsButton(context, removeUserData)],
            ),
          );
        }),
      ),
    );
  }
}
