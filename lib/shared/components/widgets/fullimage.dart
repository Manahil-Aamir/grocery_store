import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:get/get.dart';

class FullImage extends StatelessWidget {
  final CustomItem item;

  const FullImage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
