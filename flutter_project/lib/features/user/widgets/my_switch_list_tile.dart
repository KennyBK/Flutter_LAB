import 'package:flutter/material.dart';

class MySwitchListTile extends StatefulWidget {
  final bool initialValue;
  final Function(bool) onValueChanged;
  final IconData icon;
  final String title;
  final String subtitle;

  const MySwitchListTile(
      {super.key,
      required this.initialValue,
      required this.onValueChanged,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  _MySwitchListTile createState() => _MySwitchListTile();
}

class _MySwitchListTile extends State<MySwitchListTile> {
  late bool value;
  late IconData icon;
  late String title;
  late String subtitle;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
    icon = widget.icon;
    title = widget.title;
    subtitle = widget.subtitle;
  }

  void updateExternalWidgetState(bool newValue) {
    widget.onValueChanged(newValue);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SwitchListTile(
      secondary: CircleAvatar(
        radius: 20,
        backgroundColor: const Color.fromRGBO(149, 187, 173, 0.15),
        child: Icon(
          icon,
          color: Colors.greenAccent,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue;
          updateExternalWidgetState(newValue);
        });
      },
    );
  }
}
