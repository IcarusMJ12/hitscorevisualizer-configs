local base_config = import 'common/base_config.jsonnet';
local judgment_text = '%B%n%C%n%A';
local make_judgment = import 'common/make_judgment.jsonnet';
local judge(threshold, text) = make_judgment(threshold, text, 200);

base_config {
  judgments: [
    {
      threshold: 115,
      text: '<size=300%>*</size>',
      color: [
        1.0,
        1.0,
        1.0,
        1.0,
      ],
      fade: false,
    },
    {
      threshold: 114,
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
      threshold: 104,
      text: judgment_text,
      color: [
        1.0,
        0.980392158,
        0.0,
        1.0,
      ],
      fade: true,
    },
    {
      threshold: 92,
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
      threshold: 81,
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
  accuracyJudgments: [
    make_judgment(15, '*', 250),
    make_judgment(14, '14', 225),
    make_judgment(13, '13', 200),
    make_judgment(12, '12', 175),
    make_judgment(11, '11', 150),
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
  beforeCutAngleJudgments: [
    judge(70, ''),
    judge(63, '-'),
    judge(56, '--'),
    judge(49, '---'),
    judge(42, '----'),
    judge(35, '-----'),
    judge(0, '☹'),
  ],
  afterCutAngleJudgments: [
    judge(30, ''),
    judge(27, '+'),
    judge(24, '++'),
    judge(21, '+++'),
    judge(18, '++++'),
    judge(15, '+++++'),
    judge(0, '☹'),
  ],
  timeDependencyJudgments: null,
}
