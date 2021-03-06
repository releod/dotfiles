#/bin/bash
set -ex

cores() {
  if [[ `uname` == 'Darwin' ]]; then
    `sysctl -n hw.ncpu`
  else
    `nproc`
  fi
}

./linker.sh

if [ ! -d ~/.oh-my-zsh ]; then
  echo "Installing .oh-my-zsh..."
  (
    curl -L "https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh" | sh
  )
fi
