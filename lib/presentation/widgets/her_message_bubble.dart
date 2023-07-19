import 'package:flutter/material.dart';

class HerMessageBuble extends StatelessWidget {
  const HerMessageBuble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'es una linda raza Golden Retriver',
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        _ImageBubble(),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //PARA SABER LAS DIMENSIONES DEL DISPOSITIVO

    final size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/no/21-05540164de4e3229609f106e468fa8e7.gif',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover ,
        ));
  }
}
