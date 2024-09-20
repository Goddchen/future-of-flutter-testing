import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;
import 'package:future_of_flutter_testing/widgets/package_badge.dart';

class SpecInfosSlide extends FlutterDeckSlideWidget {
  const SpecInfosSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/spec/infos',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const Center(
          child: PackageBadge(
            author: 'invertase.io',
            likes: 45,
            name: 'spec',
            supportedPlatforms: <SupportedPlatform>{
              SupportedPlatform.android,
              SupportedPlatform.ios,
              SupportedPlatform.linux,
              SupportedPlatform.macos,
              SupportedPlatform.web,
              SupportedPlatform.windows,
            },
            version: '0.2.3',
          ),
        ),
        rightBuilder: (_) => local_bullet_list.FlutterDeckBulletList(
          items: const <String>[
            'Provides CLI and package',
            'Melos integration',
            'Interactive CLI',
          ],
        ),
      );
}
