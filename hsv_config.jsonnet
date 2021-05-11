local base_config = import 'common/base_config.jsonnet';
local judgment_text = '%B%n%C%n%A';
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
      threshold: 101,
      text: judgment_text,
      color: [
        0.0,
        1.0,
        0.0,
        1.0,
      ],
      fade: false,
    },
    {
      threshold: 90,
      text: judgment_text,
      color: [
        1.0,
        0.980392158,
        0.0,
        1.0,
      ],
      fade: false,
    },
    {
      threshold: 80,
      text: judgment_text,
      color: [
        1.0,
        0.6,
        0.0,
        1.0,
      ],
      fade: true,
    },
    {
      threshold: 60,
      text: judgment_text,
      color: [
        1.0,
        0.0,
        0.0,
        1.0,
      ],
      fade: true,
    },
    {
      threshold: 0,
      text: judgment_text,
      color: [
        0.5,
        0.0,
        0.0,
        1.0,
      ],
      fade: true,
    },
  ],
  beforeCutAngleJudgments: [
    make_judgment(70, ''),
    make_judgment(63, '♭'),
    make_judgment(56, '♭♭'),
    make_judgment(49, '♭♭♭'),
    make_judgment(42, '♭♭♭♭'),
    make_judgment(35, '♭♭♭♭♭'),
    make_judgment(0, '☹'),
  ],
  accuracyJudgments: [
    make_judgment(15, '★', 250),
    make_judgment(14, '♫ ♫', 225),
    make_judgment(13, '♪ ♪ ♪', 200),
    make_judgment(12, '♫', 175),
    make_judgment(11, '♪', 150),
    make_judgment(10, '10'),
    make_judgment(9, '9'),
    make_judgment(8, '8'),
    make_judgment(7, '7'),
    make_judgment(6, '6'),
    make_judgment(5, '5'),
    make_judgment(4, '4'),
    make_judgment(3, '3'),
    make_judgment(2, '2'),
    make_judgment(1, '1'),
    make_judgment(0, '0'),
  ],
  afterCutAngleJudgments: [
    make_judgment(30, ''),
    make_judgment(27, '♯'),
    make_judgment(24, '♯♯'),
    make_judgment(21, '♯♯♯'),
    make_judgment(18, '♯♯♯♯'),
    make_judgment(15, '♯♯♯♯♯'),
    make_judgment(0, '☹'),
  ],
  timeDependencyJudgments: null,
}
