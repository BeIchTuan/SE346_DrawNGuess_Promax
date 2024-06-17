import 'package:draw_and_guess_promax/model/player_normal_mode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MasterpieceMarkStatus extends StatelessWidget {
  const MasterpieceMarkStatus({
    super.key,
    required this.timeLeft,
  });

  final int timeLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Chấm điểm',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: Color(0xFF00C4A1)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 50,
              child: Container(
                //padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: timeLeft < 10 ? Colors.red : Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Text(
              timeLeft.toString(),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
