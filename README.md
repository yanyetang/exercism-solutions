# Exercism Solutions

My solutions to [Exercism](https://exercism.org) exercises, organized by language track.

## Tracks

- `bash/` — Bash exercises
- `python/` — Python exercises

## Running Tests

**Python**
```bash
cd python
uv run pytest <exercise>/          # single exercise
uv run pytest                      # all exercises
```

**Bash** (from within the exercise directory)
```bash
bats <exercise>.bats               # run tests (first unskipped test only)
BATS_RUN_SKIPPED=true bats <exercise>.bats  # run all tests including skipped
```

## Submitting Solutions

```bash
exercism submit <file>             # e.g. exercism submit leap/leap.py
```

## Resources

| Track | Docs | Forum |
|-------|------|-------|
| Python | [exercism.org/docs/tracks/python](https://exercism.org/docs/tracks/python) | [forum](https://forum.exercism.org/c/programming/python) |
| Bash | [exercism.org/docs/tracks/bash](https://exercism.org/docs/tracks/bash) | [forum](https://forum.exercism.org/c/programming/bash) |

- [Exercism FAQ](https://exercism.org/docs/using/faqs)
- [Exercism Community Discord](https://exercism.org/r/discord)
