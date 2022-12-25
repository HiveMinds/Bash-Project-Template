# Unit tested Shell/Bash code template

[![Travis Build Status](https://img.shields.io/travis/a-t-0/shell_unit_testing_template.svg)](https://travis-ci.org/a-t-0/shell_unit_testing_template)
[![License: AGPL v3](https://img.shields.io/badge/License-AGPL_v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

You can use this as a starting point for your Bash/shell project with:

- Unit testing
- Code Coverage (100 %)
- Pre-commit:
  - shfmt (Auto-formatter)
  - Shellcheck
- Continuous Integration (GitLab CI)

That way, you start your project in a clean, tested environment.

## Usage

The main code can be ran with:

```sh
src/main.sh
```

## Testing

Put your unit test files (with extension .bats) in folder: `/test/`

### Prerequisites

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
sudo gem install bats
sudo gem install bashcov
sudo apt install shfmt -y
```

### Pre-commit

Run pre-commit with:

```sh
pre-commit install
pre-commit autoupdate
pre-commit run --all
```

### Tests

Run the tests with:

```sh
bats test
```

If you want to run particular tests, you could use the `test.sh` file:

```sh
chmod +x test.sh
./test.sh
```

### Code coverage

```sh
bashcov bats test
```

## How to help

- Include bash code coverage in GitLab CI.
- Add [additional](https://pre-commit.com/hooks.html) (relevant) pre-commit hooks.
- Develop Bash documentation checks
  [here](https://github.com/TruCol/checkstyle-for-bash), and add them to this
  pre-commit.
