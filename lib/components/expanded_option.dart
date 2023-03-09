import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpandedOption extends StatefulWidget {
  
  final Widget child;
  final bool activate;

  const ExpandedOption({
    super.key,
    required this.child,
    required this.activate,
  });

  @override
  State<ExpandedOption> createState() => _ExpandedOptionState();
}

class _ExpandedOptionState extends State<ExpandedOption> {

  @override
  Widget build(BuildContext context) {
    bool activate1 = widget.activate;

    return InkWell(
      radius: 1,
      // hoverColor: Colors.grey[200],
      onTap: (){
        setState(() {
          if(activate1) {
            activate1 = false;
          } else {
            activate1 = true;
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        width: 90,
        decoration: BoxDecoration(
          color: activate1 ? const Color.fromARGB(255, 18, 67, 130) : const Color.fromARGB(255, 233, 232, 232),
          borderRadius: BorderRadius.circular(22)
        ),
        child: widget.child,
      ),
    );
  }
}