#----------------------
# ~/.bash_aliases
# updated 5-25-2025
#----------------------

# safety aliases
alias cp="cp -i"   #asks if you're sure you want to copy
alias rm="rm -i "  #same but with deleting files

# terminal behavior
alias ll="ls -lah"              #lists all files in the directory vertically with human readable file sizes
alias cls="clear"               #windows clear aliased to clear the screen
alias thanks="exec sleep 0"     # closes the terminal

# terminal fun
alias sl="while true; do sl -al; done"    #if you mistype ls you get an infinity train
alias fire="aafire -driver curses"        # warm up by the fire

# system monitoring
alias mem="ps axch -o cmd:15,%mem --sort=-%mem | head"  # Top 10 memory-using processes
alias cpu="ps axch -o cmd:15,%cpu --sort=-%mem | head"  # Top 10 CPU-using processes
alias dfc="df -h | grep -v tmpfs"                       # Disk usage, exclude temp filesystems
alias ports="sudo lsof -i -P -n | grep LISTEN"          # Show listening ports

# media 
alias cmus="rm -rf /run/user/1000/cmus-socket/; cmus"                                             #opens the cmus music player and closes old sockets
alias audio="yt-dlp -x -f bestaudio --audio-format vorbis --no-warnings -o '%(title)s.%(ext)s'"   # Download audio in .ogg format
alias video="yt-dlp --embed-subs --no-warnings -o '%(title)s.%(ext)s'"                            # Download video with subtitles
alias playlist="yt-dlp --embed-subs --no-warnings --yes-playlist -o '%(title)s.%(ext)s'"          # Download entire playlist with subtitles

# productivity
alias todo="nano ~/Desktop/documents/notes/todo" #opens my todo list
alias log="nano ~/Desktop/documents/notes/dailylog" #opens my daily log file

# networking

alias pingg="ping -c 5 8.8.8.8"                             # Quick ping test
alias canihazip="curl https://am.i.mullvad.net/connected"   #what's my ip + are you using mullvad
alias speed="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"  # Speed test

# security

# checks if your computer is suceptible to the log4j vulnerability
alias log4j="sudo wget https://raw.githubusercontent.com/rubo77/log4j_checker_beta/main/log4j_checker_beta.sh -q -O - | sudo bash" 

# changes macaddress to a random value with macchanger
alias randommac='IFACE=$(iw dev | awk "/Interface/ {print \$2; exit}"); \
sudo ip link set \"$IFACE\" down; \
sudo macchanger -r \"$IFACE\"; \
sudo ip link set \"$IFACE\" up'
