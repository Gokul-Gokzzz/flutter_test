import 'package:flutter/material.dart';
import 'package:fluttertest/controller/icon_provider.dart';
import 'package:provider/provider.dart';

class IconsHome extends StatelessWidget {
  const IconsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Button'),
      ),
      body: Center(
        child: Consumer<IconsProvider>(
          builder: (context, value, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (value.selectedIcon != null)
                Icon(
                  value.selectedIcon,
                  size: 100,
                ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      value.updateSelectedIcon(Icons.home);
                    },
                    iconSize: 50,
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () {
                      value.updateSelectedIcon(Icons.favorite);
                    },
                    iconSize: 50,
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      value.updateSelectedIcon(Icons.settings);
                    },
                    iconSize: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
