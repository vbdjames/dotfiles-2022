#!/usr/bin/env bash

asdf plugin add direnv
asdf install direnv latest
asdf global direnv latest
asdf direnv setup --shell zsh --version latest
asdf exec direnv allow
