import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:toku/toku/models/item_model.dart';

import 'item_info.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    super.key,
    required this.item,
    required this.color,
  });

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(
        item: item,
        width: 280,
      ),
    );
  }
}
