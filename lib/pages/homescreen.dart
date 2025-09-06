import 'package:flutter/material.dart';
import 'package:background/background.dart';
import 'package:animated_transitions/animated_transitions.dart';
import 'package:hackhunt/pages/hackathons_page.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController cityTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HackRadar',
          style: TextStyle(
            fontFamily: 'Orbitron',
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 131, 254, 184),
        foregroundColor: Colors.black,
      ),
      body: Background(
        path: 'assets/background/ParticleBitGreen.mp4',
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                _quoteText(),
                Column(
                  spacing: 20,
                  children: [_searchHackathons(), _searchEvents()],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _quoteText() {
    return Text(
      '- winners don\'t do different things, they do things differently',
      style: TextStyle(fontSize: 15, color: Colors.white),
      textAlign: TextAlign.center,
    );
  }

  Widget _searchHackathons() {
    return MaterialButton(
      minWidth: 250,
      onPressed: () {
        Navigator.of(context).push(
          TransitionPageRoute(
            builder: (context) => HackathonsPage(),
            transitionAnimation: CrtShutoffTransition(),
          ),
        );
      },
      color: Color.fromARGB(255, 131, 254, 184),
      child: Text('Search For Hackathons'),
    );
  }

  Widget _searchEvents() {
    return MaterialButton(
      minWidth: 250,
      onPressed: () {},
      color: Color.fromARGB(255, 131, 254, 184),
      child: Text('Search For Events'),
    );
  }
}
