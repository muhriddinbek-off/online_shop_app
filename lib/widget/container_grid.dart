import 'package:flutter/material.dart';
import 'package:online_shop_app/provider/smartfon_provider.dart';
import 'package:provider/provider.dart';

class ContainerGrid extends StatefulWidget {
  const ContainerGrid({
    super.key,
  });

  @override
  State<ContainerGrid> createState() => _ContainerGridState();
}

class _ContainerGridState extends State<ContainerGrid> {
  @override
  Widget build(BuildContext context) {
    final name = Provider.of<SmartfonTypes>(context, listen: false);
    return FutureBuilder(
      future: name.getSmartfons(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
            itemCount: name.smartfons.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 203,
                    width: MediaQuery.of(context).size.height * 0.4,
                    margin: const EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        name.smartfons[index].thumbnail,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 4),
                    child: Text(name.smartfons[index].title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(name.smartfons[index].price.toString(), style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF1D1E20))),
                  ),
                ],
              );
            },
          );
        } else {
          return const Center(child: Text('error'));
        }
      },
    );
  }
}
