import 'package:flutter/material.dart';
import 'package:shared_preferences_settings/shared_preferences_settings.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SettingsScreen(
      title: "Application Settings",
      children: [
        RadioSettingsTile(
          settingKey: 'key-of-your-setting',
          title: 'Select one option',
          values: {
            'a': 'Option A',
            'b': 'Option B',
            'c': 'Option C',
          },
        ),
        TextFieldModalSettingsTile(
          settingKey: 'key-of-your-setting',
          title: 'Type your email',
          defaultValue: 'This is by default.',
          cancelCaption: 'Cancel',
          okCaption: 'Save Email',
          keyboardType: TextInputType.emailAddress,
        ),
        RadioSettingsTile(
          settingKey: 'key-of-your-setting',
          title: 'Select one option',
          values: {
            'a': 'Option A',
            'b': 'Option B',
            'c': 'Option C',
          },
        ),
        SliderSettingsTile(
          settingKey: 'key-of-your-setting',
          title: 'Brightness',
          minIcon: Icon(Icons.brightness_4),
          maxIcon: Icon(Icons.brightness_7),
        ),
        CheckboxSettingsTile(
          settingKey: '',
          title: 'Help Mode',
          subtitle: 'Connected.',
          subtitleIfOff: 'To see available networks, turn on Wi-Fi.',
        ),
        SwitchSettingsTile(
          settingKey: 'key-of-your-setting',
          title: 'SafeMode',
        ),
        SwitchSettingsTile(
          settingKey: 'wifi_status',
          title: 'Wi-Fi',
          subtitle: 'Connected.',
          subtitleIfOff: 'To see available networks, turn on Wi-Fi.',
          screen: SettingsToggleScreen(
            title: 'Settings',
            settingKey: 'wifi_status',
            subtitle: 'Connected',
            subtitleIfOff: 'To see available networks, turn on Wi-Fi.',
            children: [
              SettingsContainer(
                children: [
                  Text('Put some widgets or tiles here.'),
                ],
              ),
            ],
          ),
        ),
        /*CheckboxSettingsTile(
              settingKey: 'key-of-your-setting',
              title: 'This is a simple Checkbox',
            ),
            CheckboxSettingsTile(
              settingKey: 'key-of-your-setting',
              title: 'This is a simple Checkbox',
            ),
            CheckboxSettingsTile(
              settingKey: 'key-of-your-setting',
              title: 'This is a simple Checkbox',
            ),
            CheckboxSettingsTile(
              settingKey: 'key-of-your-setting',
              title: 'This is a simple Checkbox',
            ),
            CheckboxSettingsTile(
              settingKey: 'key-of-your-setting',
              title: 'This is a simple Checkbox',
            ),*/
        SettingsContainer(
          child: Text('Tap the checkbox to enable.'),
        ),
      ],
    );
  }
}

/*class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.blue[50],
      child:SettingsList(
        backgroundColor: Colors.blue[50],
        sections: [
          SettingsSection(
            title: 'Section',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),
                onTap: () {},
              ),
              SettingsTile.switchTile(
                title: 'Use fingerprint',
                leading: Icon(Icons.fingerprint),
                switchValue: value,
               /* onToggle: (bool value) {
                  setState(() {
                    switchValue = value;
                  });
                },*/

              ),
            ],
          ),
          SettingsSection(

            title: 'Common',

            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),
                onTap: () {},
              ),
              SettingsTile.switchTile(
                title: 'Use fingerprint',
                leading: Icon(Icons.fingerprint),
                switchValue: value,

                onToggle: (bool value) {
                  setState(() {
                    value = true;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}*/
