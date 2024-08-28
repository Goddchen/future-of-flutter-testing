import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;

class WhyTestingRegressionBugsSlide1 extends FlutterDeckSlideWidget {
  const WhyTestingRegressionBugsSlide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'Regression bugs'),
            route: '/why-testing/regression-bugs/1',
            steps: 6,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (BuildContext context) => Center(
          child: Padding(
            padding: const EdgeInsets.all(96),
            child: local_bullet_list.FlutterDeckBulletList(
              items: const <String>[
                'You fixed a nasty bug 🏆!',
                'Weeks later, you merge some new feature...',
                '... and this old bug reappears 💣',
                'Now you have to start debugging again...',
                '... and fix the bug - AGAIN 😢',
                'Repeat at step 2 🥴',
              ],
              useSteps: true,
            ),
          ),
        ),
      );
}

class WhyTestingRegressionBugsSlide2 extends FlutterDeckSlideWidget {
  const WhyTestingRegressionBugsSlide2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'Regression bugs'),
            route: '/why-testing/regression-bugs/2',
            steps: 5,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (BuildContext context) => Center(
          child: Padding(
            padding: const EdgeInsets.all(96),
            child: local_bullet_list.FlutterDeckBulletList(
              items: const <String>[
                'This is where testing comes to the rescue 🛟',
                '''First, write a test to reproduce the bug - the test should fail ❌''',
                'Next, fix the bug - the test should pass ✅',
                '''In the future, whenever you try to merge something that would reintroduce the bug, this test will fail''',
                'It will save you a ton of time',
              ],
              useSteps: true,
            ),
          ),
        ),
      );
}
