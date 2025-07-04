# dotfiles

Minimal personal dotfiles for Bash and Nano.

## Included

- `.bashrc` – main Bash config  
- `.bash_profile` – login shell setup  
- `.bash_aliases` – custom aliases  
- `.nanorc` – syntax highlighting and tweaks  

## Setup

### Option 1: Manual Copy

####bash ~ $
git clone https://github.com/acroscopic/dotfiles.git
cp dotfiles/.bashrc dotfiles/.bash_profile dotfiles/.bash_aliases dotfiles/.nanorc ~/

### Option 2: Symlinks (Reccomended)

git clone https://github.com/acroscopic/dotfiles.git
cd dotfiles

ln -sf "$PWD/.bashrc" ~/.bashrc
ln -sf "$PWD/.bash_profile" ~/.bash_profile
ln -sf "$PWD/.bash_aliases" ~/.bash_aliases
ln -sf "$PWD/.nanorc" ~/.nanorc

### Option 3: Install Script

git clone https://github.com/acroscopic/dotfiles.git
cd dotfiles

chmod +x install.sh
./install.sh
