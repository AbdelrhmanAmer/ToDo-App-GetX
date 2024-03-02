import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class TasksNotFound extends StatelessWidget {
  const TasksNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size * .12),
            SvgPicture.asset('assets/icons/task_error.svg',
                height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding / 2),
              child: Text(
                'You dont\'t have any tasks yet!\nAdd new task and make your days more productive',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
