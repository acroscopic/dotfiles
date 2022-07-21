alias cp="cp -i" #asks if you're sure you want to copy
alias rm="rm -i " #same but with deleting files
alias ll="ls -lah" #lists all files in the directory vertically with human readable file sizes
alias cls="clear" #windows clear aliased to clear the screen
alias neofetch="neofetch | sed 's/20FN002JUS //g;'" #makes my neofetch a little cleaner
alias sl="while true; do sl -al; done" #if you mistype ls you get an infinity train
alias canihazip="curl https://am.i.mullvad.net/connected" #what's my ip + are you using mullvad
alias fire="aafire -driver curses" # warm up by the fire
alias tor="cd /home/x/media/bin/tor-browser_en-US; ./start-tor-browser.desktop; cd -" #opens tor
alias mem="ps axch -o cmd:15,%mem --sort=-%mem | head" # shows the top 10 ram usage apps
alias cpu="ps axch -o cmd:15,%cpu --sort=-%mem | head" # same ^ but cpu
alias thanks="exec sleep 0" # closes the terminal
alias cmus="rm -rf /run/user/1000/cmus-socket/; cmus" #opens music player and closes old sockets
alias audio="youtube-dl -x -f "bestaudio" --audio-format vorbis --no-warnings -o '%(title)s.%(ext)s' " #downloads audio from youtube in .ogg format
alias video="youtube-dl --embed-subs --no-warnings -o '%(title)s.%(ext)s' " #downloads videos from youtube in whatever format
alias playlist="youtube-dl --embed-subs --no-warnings --yes-playlist -o '%(title)s.%(ext)s' " #downloads playlitss from youtube
alias journal="nano ~/Desktop/documents/notes/journal" #opens my journal
alias dream="nano ~/Desktop/documents/notes/dreams" #opens my dream journal
alias quotes="nano ~/Desktop/documents/notes/quotes" #opens my quotes file
alias todo="nano ~/Desktop/documents/notes/todo" #opens my todo list
alias log="nano ~/Desktop/documents/notes/dailylog" #opens my daily log file
alias log4j="sudo wget https://raw.githubusercontent.com/rubo77/log4j_checker_beta/main/log4j_checker_beta.sh -q -O - | sudo bash" # checks if my computer is vulnerable to the log4j vulnerability
alias randommac="sudo ip link set wlp4s0 down; sudo macchanger -r wlp4s0; sudo ip link set wlp4s0 up" #changes mac address to something random
alias python="python3" #always uses python3 instead of python
alias update="sudo nala update & sudo nala upgrade" # update the system, but faster
alias apt="nala"

