local base_config = import 'common/base_config.jsonnet';
local make_judgment = import 'common/make_judgment.jsonnet';

base_config {
  judgments: [
    {
      threshold: 115,
      text: '<size=300%>❤</size>',
      color: [
        1.0,
        1.0,
        1.0,
        1.0,
      ],
      fade: false,
    },
    {
      threshold: 0,
      text: '%B%n%C%n%A',
      color: [
        1.0,
        1.0,
        1.0,
        1.0,
      ],
      fade: false,
    },
  ],
  beforeCutAngleJudgments: [
    make_judgment(70, ''),
    make_judgment(63, '90°', 170, '00FF00'),
    make_judgment(56, '80°', 165, '80FF00'),
    make_judgment(49, '70°', 160, 'FFFF00'),
    make_judgment(42, '60°', 155, 'FFE000'),
    make_judgment(35, '50°', 150, 'FFC000'),
    make_judgment(28, '40°', 145, 'FFA000'),
    make_judgment(21, '30°', 140, 'FF8000'),
    make_judgment(14, '20°', 135, 'FF6000'),
    make_judgment(7, '10°', 130, 'FF4000'),
    make_judgment(0, '0°', 125, 'FF0000'),
  ],
  accuracyJudgments: [
    make_judgment(15, '★', 200),
    make_judgment(14, '14', 195, '00FF00'),
    make_judgment(13, '13', 190, '40FF00'),
    make_judgment(12, '12', 185, '80FF00'),
    make_judgment(11, '11', 180, 'C0FF00'),
    make_judgment(10, '10', 175, 'FFFF00'),
    make_judgment(9, '9', 170, 'FFF000'),
    make_judgment(8, '8', 165, 'FFE000'),
    make_judgment(7, '7', 160, 'FFD000'),
    make_judgment(6, '6', 155, 'FFC000'),
    make_judgment(5, '5', 150, 'FFB000'),
    make_judgment(4, '4', 145, 'FFA000'),
    make_judgment(3, '3', 140, 'FF9000'),
    make_judgment(2, '2', 135, 'FF7000'),
    make_judgment(1, '1', 130, 'FF4000'),
    make_judgment(0, '⓪', 125, 'FF0000'),
  ],
  afterCutAngleJudgments: [
    make_judgment(30, ''),
    make_judgment(25, '50°', 170, '00FF00'),
    make_judgment(20, '40°', 160, '80FF00'),
    make_judgment(15, '30°', 150, 'FFFF00'),
    make_judgment(10, '20°', 140, 'FFC000'),
    make_judgment(5, '10°', 130, 'FF8000'),
    make_judgment(0, '0°', 125, 'FF0000'),
  ],
}
