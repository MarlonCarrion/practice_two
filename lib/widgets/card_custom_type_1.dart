import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CardCustomType1 extends StatelessWidget {
  const CardCustomType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.five_g,
            color: AppTheme.primary,
          ),
          title: Text('Suzuki SJ 413'),
          trailing: Icon(Icons.dangerous),
          subtitle: Text('kdhfaiksfhdaksdhfaks kjsdfhajsdhkf sdajfkhasdjkfh '),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          ),
        )
      ]),
    );
  }
}
