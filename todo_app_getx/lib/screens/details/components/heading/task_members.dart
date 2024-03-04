import 'package:flutter/material.dart';


class TaskMembers extends StatelessWidget {
  const TaskMembers({
    super.key,
    required this.members,
  });

  final List<String> members;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 3; i++)
          i < members.length
              ? Align(
                  widthFactor: .6,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage:
                          NetworkImage(members[i]),
                    ),
                  ),
                )
              : Container(),
        if (members.length > 3)
          Align(
            widthFactor: .6,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Text(
                '${members.length - 3}+',
                style: TextStyle(
                    color:
                        Theme.of(context).colorScheme.surface,
                    fontSize: 15),
              ),
            ),
          )
      ],
    );
  }
}

