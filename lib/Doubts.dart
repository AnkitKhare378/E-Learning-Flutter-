import 'package:e_learning/Doubts/All_Doubts/all_doubts.dart';
import 'package:flutter/material.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';


class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 10, right: 10, bottom: 5),
            child: SegmentedTabControl(
              height: 35,
              tabTextColor: Colors.black54,
              selectedTabTextColor: Colors.white,
              controller: _tabController,
              tabs: [
                SegmentTab(
                  label: "All Doubts",
                  color: Colors.blue,
                  backgroundColor: Colors.grey.shade200,
                ),
                SegmentTab(
                  label: 'My Doubts',
                  color: Colors.blue,
                  backgroundColor: Colors.grey.shade200,
                  selectedTextColor: Colors.white,
                  // textColor: Colors.black54,
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                AllDoubts(), // Replace Text widget with AllDoubts class
                Container(
                  color: Colors.white,
                  child: const Center(child: Text('HOME Content', style: TextStyle(color: Colors.black))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
