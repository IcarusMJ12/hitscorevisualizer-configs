local base_config = import 'common/base_config.jsonnet';
local judgment_text = '%B%n%c%n%A';
local sad_swing_text = '<size=200%>☹</size>';

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
    {
      threshold: 70,
      text: '',
    },
    {
      threshold: 0,
      text: sad_swing_text,
    },
  ],
  accuracyJudgments: null,
  afterCutAngleJudgments: [
    {
      threshold: 30,
      text: '',
    },
    {
      threshold: 0,
      text: sad_swing_text,
    },
  ],
  timeDependencyJudgments: null,
}
