# https://stackoverflow.com/a/33206814/1251219
#
# ╔══════════╦════════════════════════════════╦═════════════════════════════════════════════════════════════════════════╗
# ║  Code    ║             Effect             ║                                   Note                                  ║
# ╠══════════╬════════════════════════════════╬═════════════════════════════════════════════════════════════════════════╣
# ║ 0        ║  Reset / Normal                ║  all attributes off                                                     ║
# ║ 1        ║  Bold or increased intensity   ║                                                                         ║
# ║ 2        ║  Faint (decreased intensity)   ║  Not widely supported.                                                  ║
# ║ 3        ║  Italic                        ║  Not widely supported. Sometimes treated as inverse.                    ║
# ║ 4        ║  Underline                     ║                                                                         ║
# ║ 5        ║  Slow Blink                    ║  less than 150 per minute                                               ║
# ║ 6        ║  Rapid Blink                   ║  MS-DOS ANSI.SYS; 150+ per minute; not widely supported                 ║
# ║ 7        ║  [[reverse video]]             ║  swap foreground and background colors                                  ║
# ║ 8        ║  Conceal                       ║  Not widely supported.                                                  ║
# ║ 9        ║  Crossed-out                   ║  Characters legible, but marked for deletion.  Not widely supported.    ║
# ║ 10       ║  Primary(default) font         ║                                                                         ║
# ║ 11–19    ║  Alternate font                ║  Select alternate font `n-10`                                           ║
# ║ 20       ║  Fraktur                       ║  hardly ever supported                                                  ║
# ║ 21       ║  Bold off or Double Underline  ║  Bold off not widely supported; double underline hardly ever supported. ║
# ║ 22       ║  Normal color or intensity     ║  Neither bold nor faint                                                 ║
# ║ 23       ║  Not italic, not Fraktur       ║                                                                         ║
# ║ 24       ║  Underline off                 ║  Not singly or doubly underlined                                        ║
# ║ 25       ║  Blink off                     ║                                                                         ║
# ║ 27       ║  Inverse off                   ║                                                                         ║
# ║ 28       ║  Reveal                        ║  conceal off                                                            ║
# ║ 29       ║  Not crossed out               ║                                                                         ║
# ║ 30–37    ║  Set foreground color          ║  See color table below                                                  ║
# ║ 38       ║  Set foreground color          ║  Next arguments are `5;n` or `2;r;g;b`, see below                       ║
# ║ 39       ║  Default foreground color      ║  implementation defined (according to standard)                         ║
# ║ 40–47    ║  Set background color          ║  See color table below                                                  ║
# ║ 48       ║  Set background color          ║  Next arguments are `5;n` or `2;r;g;b`, see below                       ║
# ║ 49       ║  Default background color      ║  implementation defined (according to standard)                         ║
# ║ 51       ║  Framed                        ║                                                                         ║
# ║ 52       ║  Encircled                     ║                                                                         ║
# ║ 53       ║  Overlined                     ║                                                                         ║
# ║ 54       ║  Not framed or encircled       ║                                                                         ║
# ║ 55       ║  Not overlined                 ║                                                                         ║
# ║ 60       ║  ideogram underline            ║  hardly ever supported                                                  ║
# ║ 61       ║  ideogram double underline     ║  hardly ever supported                                                  ║
# ║ 62       ║  ideogram overline             ║  hardly ever supported                                                  ║
# ║ 63       ║  ideogram double overline      ║  hardly ever supported                                                  ║
# ║ 64       ║  ideogram stress marking       ║  hardly ever supported                                                  ║
# ║ 65       ║  ideogram attributes off       ║  reset the effects of all of 60-64                                      ║
# ║ 90–97    ║  Set bright foreground color   ║  aixterm (not in standard)                                              ║
# ║ 100–107  ║  Set bright background color   ║  aixterm (not in standard)                                              ║
# ╚══════════╩════════════════════════════════╩═════════════════════════════════════════════════════════════════════════╝

export BOLD='\033[1m'
export DIM='\033[2m'
export INVERT='\033[7m'
export ITALIC='\033[3m'
export UNDERLINE='\033[4m'

export RESET_COLORS='\033[0m'
export RESET_BOLD='\033[22m'
export RESET_DIM='\033[22m'
export RESET_INVERT='\033[27m'
export RESET_ITALIC='\033[23m'
export RESET_UNDERLINE='\033[24m'
export RESET_FG='\033[39m'
export RESET_BG='\033[49m'

export FG_BLACK='\033[30m'
export FG_RED='\033[31m'
export FG_GREEN='\033[32m'
export FG_YELLOW='\033[33m'
export FG_BLUE='\033[34m'
export FG_MAGENTA='\033[35m'
export FG_CYAN='\033[36m'
export FG_WHITE='\033[37m'

export FG_FILE=$FG_CYAN

export BG_BLACK='\033[40m'
export BG_RED='\033[41m'
export BG_GREEN='\033[42m'
export BG_YELLOW='\033[43m'
export BG_BLUE='\033[44m'
export BG_MAGENTA='\033[45m'
export BG_CYAN='\033[46m'
export BG_WHITE='\033[47m'

export BOX_BLACK='\033[37;40m'
export BOX_RED='\033[37;41m'
export BOX_GREEN='\033[37;42m'
export BOX_YELLOW='\033[30;43m'
export BOX_BLUE='\033[37;44m'
export BOX_MAGENTA='\033[37;45m'
export BOX_CYAN='\033[37;46m'
export BOX_WHITE='\033[30;47m'

show-colors() {
    console.println <<EOT

EOT
}
