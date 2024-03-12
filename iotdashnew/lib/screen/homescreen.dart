import 'package:flutter/material.dart';
import 'package:bounce/bounce.dart';
import 'package:get/get.dart';
import 'package:iotdashnew/screen/graph.dart';
import 'package:iotdashnew/screen/widgets/selection_bar_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void generateApiKey() {
    // Add logic for generating API key
  }

  void navigateToVisualization() {
    // Add logic for navigating to the visualization screen
    Get.to(Graph(), transition: Transition.cupertino);
  }

  void navigateToControlSystem() {
    // Add logic for navigating to the control system screen
  }

  void navigateToSettings() {
    // Add logic for navigating to the settings screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'dashboard',
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          selectionbar(
            oncallback: () {
              generateApiKey();
            },
            text: 'Generate API Key',
          ),
          selectionbar(
            oncallback: () {
              navigateToVisualization();
            },
            text: 'Visualization',
          ),
          selectionbar(
            oncallback: () {},
            text: 'Control System',
          ),
          selectionbar(
            oncallback: () {},
            text: 'Settings',
          )
        ],
      ),
    );
  }
}