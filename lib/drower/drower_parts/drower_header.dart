import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerHeaderView extends StatelessWidget {
  const DrawerHeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: const BoxDecoration(color: Colors.white),
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                  angle: 29.8,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(9),
                      margin: const EdgeInsets.only(top: 20),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0xFFF5F6FA)),
                      child: SvgPicture.asset('assets/images/menu.svg'),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
              ),
              title: const Text('Mrh Raju', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
              subtitle: const Text('Verified Profile', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
              trailing: Container(
                alignment: Alignment.center,
                height: 32,
                width: 66,
                decoration: BoxDecoration(color: const Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(5)),
                child: const Text('3 Orders', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color(0xFF8F959E))),
              ),
            ),
          ],
        ));
  }
}
