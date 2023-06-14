
import 'package:flutter/material.dart';
import 'package:my_project/grid_view_color_change/color_change_method.dart';

class GridViewColorChangeUi extends StatefulWidget {
  const GridViewColorChangeUi({super.key});

  @override
  State<GridViewColorChangeUi> createState() => _GridViewColorChangeUiState();
}

class _GridViewColorChangeUiState extends State<GridViewColorChangeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      itemCount: myColor.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          ColorMagic.colorChange(index);
          setState(() {});
        },
        child: Container(
          color: myColor[index],
        ),
      ),
    ));
  }
}
