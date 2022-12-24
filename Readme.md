# unit tested shell code template [![Travis Build Status](https://img.shields.io/travis/a-t-0/shell_unit_testing_template.svg)](https://travis-ci.org/a-t-0/shell_unit_testing_template)

You can use this as a starting point for a Bash/shell project with:

- Unit testing
- Continuous Integration (GitLab CI)
- Pre-commit
- Shellcheck

## Usage

If still existent, first remain the submodules with:

```sh
git rm --cached test/libs/bats
git rm --cached test/libs/bats-support
git rm --cached test/libs/bats-assert
```

Then (re)-install the required submodules with:

```sh
chmod +x install-bats-libs.sh
./install-bats-libs.sh
```

## Testing

Put your unit test files (with extension .bats) in folder: `/test/`

\[Context: Prerequisites\]

```sh
yes | sudo gem install bats
yes | sudo gem install bashcov
yes | sudo apt install shfmt
```

\[Context: Pre-commit\]
Run pre-commit with:

```sh
pre-commit install
pre-commit autoupdate
pre-commit run --all
```

\[Context: Tests\]

```sh
chmod +x test.sh
./test.sh
```

\[Context: Code coverage\]

```sh
bashcov ./test.sh
```

## How to help

Include bash code coverage in this repo such that:

- it can be ran locally.
- it can be ran in GitLab CI.
