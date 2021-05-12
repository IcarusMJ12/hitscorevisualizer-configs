local base_config = import 'base_config.jsonnet';
local make_judgment = import 'make_judgment.jsonnet';

local judge(threshold, text) = make_judgment(threshold, text, 200);

base_config {
  beforeCutAngleJudgments: [
    judge(70, ''),
    judge(63, '♭'),
    judge(56, '♭♭'),
    judge(49, '♭♭♭'),
    judge(42, '♭♭♭♭'),
    judge(35, '♭♭♭♭♭'),
    judge(0, '☹'),
  ],
  afterCutAngleJudgments: [
    judge(30, ''),
    judge(27, '♯'),
    judge(24, '♯♯'),
    judge(21, '♯♯♯'),
    judge(18, '♯♯♯♯'),
    judge(15, '♯♯♯♯♯'),
    judge(0, '☹'),
  ],
}
