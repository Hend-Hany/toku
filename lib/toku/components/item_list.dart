import 'package:flutter/cupertino.dart';
import 'package:toku/toku/components/item_info.dart';
import 'package:toku/toku/models/item_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({
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
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DC),
            child: Image.asset(item.image!),
          ),
          Expanded(
              child: ItemInfo(
            item: item,
            width: null,
          ))
        ],
      ),
    );
  }
}
