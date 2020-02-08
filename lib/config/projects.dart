import 'package:dom_website/config/assets.dart';
import 'package:dom_website/models/projects.dart';

final List<Project> projects = [
  Project(
      name: 'Nobody109',
      image: Assets.github,
      description: 'Github Account',
      link: 'https://github.com/Nobody109'),
  Project(
      name: 'Flutter Web App',
      image: Assets.homepage_screenshot,
      description:
          'Simple Flutter App showing a 2-tab menu with avatar and profile links on root. \n\n Code can be found on Github.',
      link: 'https://github.com/Nobody109/flutter-web-app'),
  Project(
      name: 'internship-in-southafrica.de',
      image: Assets.southafrica_flag,
      description:
          'A website (German) written in Typo3 (PHP) which I created during my internship in Cape Town back in 2007. \n\n It informs students about topics around doing an internship in Cape Town.',
      link: 'http://www.internship-in-southafrica.de/'),
];
