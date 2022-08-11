import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/common/app_colors.dart';
import 'package:flutter_base/common/app_text_styles.dart';

class ExpandableCustom extends StatefulWidget {
  const ExpandableCustom({Key? key}) : super(key: key);

  @override
  State<ExpandableCustom> createState() => _ExpandableCustomState();
}

class _ExpandableCustomState extends State<ExpandableCustom> {
  final expanedController = ExpandableController();

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: false,
      child: ScrollOnExpand(
          scrollOnExpand: true,
          scrollOnCollapse: false,
          child: Column(
            children: [
              Expandable(
                collapsed: const SizedBox(),
                expanded: _expandedWidget(),
              ),
              Builder(
                builder: (context) {
                  var controller =
                      ExpandableController.of(context, required: true)!;
                  return TextButton(
                    child: Text(
                      controller.expanded ? "COLLAPSE" : "Forcast for 7 Days",
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.deepPurple),
                    ),
                    onPressed: () {
                      controller.toggle();
                    },
                  );
                },
              )
            ],
          )),
    );
  }
}

Widget _collapsedWidget() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      "Forcast for 7 Days",
      style: AppTextStyle.blackS12Bold.copyWith(fontSize: 20),
    ),
  );
}

Widget _expandedWidget() {
  return Container(
    padding: EdgeInsets.only(top: 10),
    decoration: const BoxDecoration(color: AppColors.backgroundColor),
    child: Column(children: [
      Text(
        "Forcast for 7 Day",
        style: AppTextStyle.white.copyWith(fontWeight: FontWeight.w600),
      ),
      Wrap(
        children: List.generate(
            7,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Sun",
                        style: AppTextStyle.white
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "75% rain",
                        style: AppTextStyle.white
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "20/24",
                        style: AppTextStyle.white
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )),
      ),
    ]),
  );
}
