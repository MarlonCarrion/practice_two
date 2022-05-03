import 'package:flutter/material.dart';
import 'package:practice_two/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CardCustomType1(),
          SizedBox(height: 10.5),
          CardCustomType2(
              name: 'Paisaje',
              imageUrl:
                  'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
          SizedBox(height: 10.5),
          CardCustomType2(
            imageUrl:
                'https://images.latamautos.com/thumbs/w/990x540xC/amz_ptf_ecuador/2242022/1660472/o_o/1660472_1650678512675_525.jpg',
          ),
          SizedBox(height: 10.5),
          CardCustomType2(
            name: 'Foto Auto 2',
            imageUrl:
                'https://images.latamautos.com/thumbs/w/990x540xC/amz_ptf_ecuador/2242022/1660472/o_o/1660472_1650678513702_87.jpg',
          ),
          SizedBox(height: 10.5)
        ],
      ),
    );
  }
}
