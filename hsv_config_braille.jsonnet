local base_config = import 'common/base_before_after.jsonnet';
local judgment_text = '%B%n%C%n%A';
local make_judgment = import 'common/make_judgment.jsonnet';
local sad_swing_text = '<size=200%>☹</size>';
local judge(threshold, text) = make_judgment(threshold, text, 200, false, '#80808080');

local zero = '⠀';
local one = '⠁';
local two = '⠂';
local three = '⠃';
local four = '⠄';
local five = '⠅';
local six = '⠆';
local seven = '⠇';
local eight = '⠈';
local nine = '⠉';

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
  accuracyJudgments: [
    make_judgment(15, '★', 200),
    judge(14, one + four),
    judge(13, one + three),
    judge(12, one + two),
    judge(11, one + one),
    judge(10, one + zero),
    judge(9, zero + nine),
    judge(8, zero + eight),
    judge(7, zero + seven),
    judge(6, zero + six),
    judge(5, zero + five),
    judge(4, zero + four),
    judge(3, zero + three),
    judge(2, zero + two),
    judge(1, zero + one),
    judge(0, zero + zero),
  ],
  timeDependencyJudgments: null,
}
