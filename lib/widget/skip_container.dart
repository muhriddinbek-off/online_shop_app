import 'package:flutter/material.dart';

class SkipContainer extends StatefulWidget {
  const SkipContainer({super.key});

  @override
  State<SkipContainer> createState() => _SkipContainerState();
}

class _SkipContainerState extends State<SkipContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.32,
      // width: size.height * 0.14,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Text(
              'Look Good, Feel Good',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20)),
            ),
            const SizedBox(height: 10),
            const Text(
              'Create your individual & unique style and look amazing everyday.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E)),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                buttonTap('Men', 0),
                SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                buttonTap('Women', 1),
              ],
            ),
            const SizedBox(height: 15),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'get-started');
                },
                child: const Text('Skip', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF8F959E)))),
          ],
        ),
      ),
    );
  }

  int? current;
  Widget buttonTap(String title, int index) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(current == index ? const Color(0xFF9775FA) : const Color(0xFFF5F6FA)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        minimumSize: MaterialStatePropertyAll(Size(MediaQuery.of(context).size.height * 0.163, 60)),
      ),
      onPressed: () {
        setState(() {
          current = index;
        });
      },
      child: Text(title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: current == index ? const Color(0xFFFFFFFF) : const Color(0xFF8F959E))),
    );
  }
}
