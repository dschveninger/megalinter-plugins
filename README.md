# megalinter-plugins

Set of common tools that are used in some of my repos.
I find my self setting up repos for one thing or another and doing the same
set-up over and over. So I started this repo to share the tooling across
the repos and in the new repo that I start. Here are the thing that I have
learn doing this.

[![MegaLinter](https://github.com/dschveninger/megalinter-plugins/workflows/MegaLinter/badge.svg?branch=main)](https://github.com/dschveninger/dougschveninger/actions?query=workflow%3AMegaLinter+branch%3Amain) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/5e8bce49e0df4be8a880f2df02759d88)](https://app.codacy.com/gh/dschveninger/dougschveninger/dashboard?utm_source=github.com&utm_medium=referral&utm_content=dschveninger/dougschveninger&utm_campaign=Badge_Grade)

## New repo set-up steps

1. MegaLinter
   1. Create .mega-linter.yml using a copy from another repo. Now using this repo's file.
   2. update .gitignore for
      1. report/
   3. Copy .github/linters files from here to new repo and review settings.
2. Create github directory. For workflow folder.
3. Create TODO.md
4. Update README.md
   1. Copy Badges
      1. Mega Linter
      2. Codacy
      3. License
5. TODO submodule and make set up needed
