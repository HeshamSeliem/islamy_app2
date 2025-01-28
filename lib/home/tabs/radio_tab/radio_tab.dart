import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/home/tabs/radio_tab/radio_play_widget.dart';

class RadioTab extends StatefulWidget {
  RadioTab({super.key});

  @override
  _RadioTabState createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black, // Background color
              borderRadius: BorderRadius.circular(25), // Rounded border
              // border: Border.all(color: Colors.blue, width: 2), // Outer border color
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.amber, // Background color for selected tab
                borderRadius: BorderRadius.circular(25), // Rounded corners
              ),
              labelColor: Colors.black, // Selected text color
              unselectedLabelColor: Colors.white, // Unselected text color
              tabs: [
                Tab(text: "          Radio                "),
                Tab(text: "        Reciters         "),
              ],
            ),
          ),
        ),
        Expanded(
          //height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return RadioPlayWidget();
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: 10),
              ),



             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return RadioPlayWidget();
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
