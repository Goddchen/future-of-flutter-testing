import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;
import 'package:future_of_flutter_testing/widgets/package_badge.dart';

class ChecksInfosSlide extends FlutterDeckSlideWidget {
  const ChecksInfosSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/checks/infos'),
        );
  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const PackageBadge(
          author: 'labs.dart.dev',
          likes: 97,
          name: 'checks',
          supportedPlatforms: <SupportedPlatform>{
            SupportedPlatform.android,
            SupportedPlatform.ios,
            SupportedPlatform.linux,
            SupportedPlatform.macos,
            SupportedPlatform.web,
            SupportedPlatform.windows,
          },
          version: '0.3.0',
        ),
        rightBuilder: (_) => local_bullet_list.FlutterDeckBulletList(
          items: const <String>[
            'Matching package for tests',
            'Developed by the official Dart team',
            'Official successor for the matcher package',
            'Type safe and type aware',
            'Compose (and even nest) expectations',
            'Async support',
            'Extendable API',
          ],
        ),
      );
}
