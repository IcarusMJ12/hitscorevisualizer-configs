# USDA Prime Hit Score Visualizer Configs

## Installation

### Pregenerated

Copy the ones you like from `./generated` to your BeatSaber installation directory's `UserData/HitScoreVisualizer/` folder.

You can then select your configuration in-game from the Hit Score Visualizer mod settings.


### From Scratch

You will need `jsonnet` and, optionally, `make`.  AFAICT these are not typically available on Windows.

Then, `jsonnet <some-config>.jsonnet -o generated/<some-config>.json` or just `make <some-config>.json` and follow pregenerated instructions above.
