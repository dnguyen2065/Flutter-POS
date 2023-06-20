import 'package:flutter/material.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';
import 'package:possystem/data.dart';

/// THIS WILL BE REPLACED WITH A FUNCTION (possibly async)
List<Category> dummyData = [
  Category('Category 1', [
    Item('C1 Item 1', 1.23),
    Item('C1 Item 2', 2.34),
    Item('C1 Item 3', 5.67),
    Item('C1 Item 4', 8.90),
    Item('C1 Item 5', 8.90),
  ]),
  Category('Category 2', [
    Item('C2 Item 1', 1.23),
    Item('C2 Item 2', 2.34),
    Item('C2 Item 3', 5.67),
  ]),
  Category('Category 3', [
    Item('C3 Item 1', 1.23),
    Item('C3 Item 2', 2.34),
  ]),
];

/// EDITORIALS (admin will be able to edit this value through admin panel UI)
const itemColumns = 2;

/// STATE
class ItemPanel extends StatefulWidget {
  final List<Container> stackList = [];
  final List<String> order = [];

  ItemPanel({super.key});

  @override
  ItemPanelState createState() => ItemPanelState();
}

class ItemPanelState extends State<ItemPanel> {
  List<Container> stackList = [];
  int view = 0;

  @override
  void initState() {
    stackList = dummyData.map((category) {
      /// create a list of buttons for each item in the category
      List<GridButtonItem> itemButtons = category.items.map((item) {
        return GridButtonItem(title: item.name);
      }).toList();

      /// then append a container for each category
      return Container(
        color: Colors.white,
        child: GridButton(
          /// TODO: onPressed for each item
          onPressed: (dynamic val) {},

          items: [
            for (var i = 0;
                i <= (itemButtons.length / itemColumns).floor();
                i++)
              i

            /// Group item buttons in rows of `itemColumns` length
          ].map((rowNum) {
            List<GridButtonItem> row = [];
            for (var i = 0; i < itemColumns; i++) {
              int index = rowNum * itemColumns + i;
              if (index >= itemButtons.length) {
                continue;
              }
              row.add(itemButtons[index]);
            }
            return row;
          }).toList(),
        ),
      );
    }).toList();
    view = 0;
    super.initState();
  }

  void setView(int viewIndex) {
    setState(() {
      view = viewIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: FractionallySizedBox(
            heightFactor: 1.0,
            widthFactor: 1.0,
            child: GridButton(
              textStyle: const TextStyle(color: Colors.white),
              onPressed: (dynamic val) {
                setView(val);
              },
              items: dummyData.asMap().entries.map((category) {
                return [
                  GridButtonItem(
                    color: Colors.blueAccent,
                    title: category.value.name,
                    value: category.key,
                  )
                ];
              }).toList(),
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: FractionallySizedBox(
            heightFactor: 1.0,
            widthFactor: 1.0,
            child: stackList[view],
          ),
        ),
      ],
    );
  }
}

/// MAIN ORDER WIDGET
class OrderPanel extends StatelessWidget {
  const OrderPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        /// Left Side
        Flexible(child: ItemPanel()),

        /// Right Side
        const Flexible(
          child: FractionallySizedBox(
            heightFactor: 1.0,
            widthFactor: 1.0,
            child: Text('This is the right half'),
          ),
        ),
      ],
    );
  }
}
