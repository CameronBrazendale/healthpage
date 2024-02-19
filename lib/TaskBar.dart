import 'package:flutter/material.dart';

class TaskBar extends StatefulWidget {
  final Function(int) onTabChanged;

  const TaskBar({Key? key, required this.onTabChanged}) : super(key: key);

  @override
  _TaskBarState createState() => _TaskBarState();
}

class _TaskBarState extends State<TaskBar> {
  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
    widget.onTabChanged(index);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: const Color(0xff3C5C6C),
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _changeTab,
        selectedItemColor: const Color(0xffEC6C20),
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent_outlined), label: "Find Support"),
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety_outlined), label: "My Health"),
          BottomNavigationBarItem(
              icon: Icon(Icons.medical_services_outlined), label: "Resources"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_rounded), label: "Stats"),
        ],
      ),
    );
  }
}
