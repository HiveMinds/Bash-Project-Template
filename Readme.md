# unit tested shell code template [![Travis Build Status](https://img.shields.io/travis/a-t-0/shell_unit_testing_template.svg)](https://travis-ci.org/a-t-0/shell_unit_testing_template)

You can use this as a starting point for a Bash/shell project with:

- Unit testing
- Continuous Integration (GitLab CI)
- Pre-commit
- Shellcheck

## Usage

The main code can be ran with:

```sh
src/./main.sh
```

## Testing

Put your unit test files (with extension .bats) in folder: `/test/`

\[Context: Prerequisites\]

If still existent, first remove the bats submodules with:

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

Install:

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
Run the tests with:

```sh
bats test
```

If you want to run particular tests, you could use the `test.sh` file:

```sh
chmod +x test.sh
./test.sh
```

\[Context: Code coverage\]

```sh
bashcov bats test
```

## How to help

- Include bash code coverage in GitLab CI.
- Add additional (relevant) pre-commit hooks.
