#!/usr/bin/env bash
# Simple terminal cheat-sheet viewer
# Edit the CONFIG array below to select which files/sections to show.

set -euo pipefail

# Define Escape Character for colors
ESC=$'\e'
DATA_DIR="$(dirname "$0")/data"

# CONFIG: one entry per line: "name indexes"
# indexes can be comma-separated numbers or the word 'all'
# Examples:
# CONFIG=("linux 2,3,4" "go 3,5,6" "rust all")
CONFIG=(
  "linux all"
  "go all"
  "rust all"
)

# Visual Options
SHOW_HORIZ_LINES=true
SHOW_VERT_LINES=false

if [[ ! -d "$DATA_DIR" ]]; then
  echo "data/ directory not found at $DATA_DIR"
  exit 1
fi

declare -A SECT_TITLE
declare -A SECT_BODY

load_sections() {
  local file="$1"
  local current=""
  while IFS= read -r line || [[ -n $line ]]; do
    if [[ $line =~ ^###[[:space:]]*([0-9]+)[[:space:]]*(.*)$ ]]; then
      current="${BASH_REMATCH[1]}"
      SECT_TITLE["$file:$current"]="${BASH_REMATCH[2]}"
      SECT_BODY["$file:$current"]=""
    else
      if [[ -n $current ]]; then
        SECT_BODY["$file:$current"]+="$line\n"
      fi
    fi
  done < "$file"
}

gather_items() {
  ITEMS=()
  for entry in "${CONFIG[@]}"; do
    name=${entry%% *}
    idxs=${entry#* }
    file="$DATA_DIR/$name.sh"
    if [[ ! -f $file ]]; then
      ITEMS+=("[Missing file] $name" "$file file not found")
      continue
    fi
    load_sections "$file"
    if [[ $idxs == "all" ]]; then
      nums=()
      for k in "${!SECT_TITLE[@]}"; do
        if [[ $k == "$file:"* ]]; then
          n=${k#*$file:}
          nums+=("$n")
        fi
      done
      IFS=$'\n' nums_sorted=($(printf "%s\n" "${nums[@]}" | sort -n))
      for n in "${nums_sorted[@]}"; do
        title=${SECT_TITLE["$file:$n"]}
        body=${SECT_BODY["$file:$n"]}
        ITEMS+=("$name:$n:$title" "$body")
      done
    else
      IFS=',' read -ra parts <<< "$idxs"
      for n in "${parts[@]}"; do
        title=${SECT_TITLE["$file:$n"]}
        body=${SECT_BODY["$file:$n"]}
        if [[ -z $title && -z $body ]]; then
          ITEMS+=("$name:$n: [missing]" "")
        else
          ITEMS+=("$name:$n:$title" "$body")
        fi
      done
    fi
  done
}

repeat_char() {
  local ch="$1" n=$2
  for ((i=0;i<n;i++)); do printf "%s" "$ch"; done
}

layout_items() {
  # Clear previous columns
  for ((c=0; c<TOTAL_COLS_COUNT; c++)); do
    unset "COL_${c}_LINES"
  done
  TOTAL_COLS_COUNT=0

  local max_h=$1
  local col_w=$2
  
  # Initialize first column
  local current_col=0
  local current_h=0
  eval "COL_0_LINES=()"
  
  for ((i=0; i<${#ITEMS[@]}; i+=2)); do
    local meta="${ITEMS[i]}"
    local body="${ITEMS[i+1]}"
    
    # Render item to temp array to check height
    local item_lines=()

    # Add Title
    local title_txt="$meta"
    if (( ${#title_txt} > col_w )); then title_txt="${title_txt:0:col_w}"; fi
    local pad=$(( col_w - ${#title_txt} ))
    item_lines+=("${ESC}[1;36m${title_txt}${ESC}[0m$(repeat_char " " $pad)")

    # Add Body
    while IFS= read -r l || [[ -n $l ]]; do
      if [[ -z $l ]]; then
        item_lines+=("$(repeat_char " " $col_w)")
      else
        while IFS= read -r wl; do
          local wlen=${#wl}
          local wpad=$(( col_w - wlen ))
          if (( wpad < 0 )); then wpad=0; fi
          item_lines+=("$wl$(repeat_char " " $wpad)")
        done < <(printf "%s\n" "$l" | fold -s -w $col_w)
      fi
    done < <(printf "%b" "$body" | expand -t 4)

    # Separator
    if [[ "$SHOW_HORIZ_LINES" == "true" ]]; then
      local sep_line="$(repeat_char "─" $col_w)"
      item_lines+=("${ESC}[90m${sep_line}${ESC}[0m")
    else
      item_lines+=("$(repeat_char " " $col_w)")
    fi

    local h=${#item_lines[@]}

    # Check if fits in current column
    if (( current_h + h > max_h )); then
      # If current column is not empty, move to next
      if (( current_h > 0 )); then
        current_col=$((current_col + 1))
        current_h=0
        eval "COL_${current_col}_LINES=()"
      fi
    fi

    eval "COL_${current_col}_LINES+=(\"\${item_lines[@]}\")"
    current_h=$((current_h + h))
  done
  TOTAL_COLS_COUNT=$((current_col + 1))
}

draw() {
  local start_col=$1
  local visible_cols=$2
  local col_w=$3
  
  # Move cursor to top-left
  printf "${ESC}[H"
  
  local cols=$(tput cols)
  local lines=$(tput lines)
  local box_w=$cols
  local content_h=$((lines-3))
  
  # Draw Header
  printf "${ESC}[1;34m┌"; repeat_char "─" $((box_w-2)); printf "┐${ESC}[0m\n"

  local sep=" │ "
  if [[ "$SHOW_VERT_LINES" != "true" ]]; then
    sep="   "
  fi
  
  for ((r=0; r<content_h; r++)); do
    local row_str="│ "
    for ((c=0; c<visible_cols; c++)); do
      local col_idx=$((start_col + c))
      local cell=""
      if (( col_idx < TOTAL_COLS_COUNT )); then
        local h; eval "h=\${#COL_${col_idx}_LINES[@]}"
        if (( r < h )); then
          eval "cell=\"\${COL_${col_idx}_LINES[$r]}\""
        else
          cell="$(repeat_char " " $col_w)"
        fi
      else
        cell="$(repeat_char " " $col_w)"
      fi
      
      row_str+="$cell"
      if (( c < visible_cols - 1 )); then row_str+="$sep"; fi
    done
    
    # Fill remainder of the line to hit box border
    # Strip ANSI for length calc
    local clean_row=$(echo -e "$row_str" | sed "s/\x1B\[[0-9;]*[a-zA-Z]//g")
    local current_len=${#clean_row}
    local rem=$(( box_w - 2 - current_len + 2 )) # +2 for initial "│ " length compensation
    # Actually simpler: just pad to box_w - 2
    # But we have ANSI codes, so printf width is tricky.
    # We calculated col_w to fit exactly.
    # Let's just trust the math + a final spacer if needed.
    
    printf "%s" "$row_str"
    
    # Right border
    # Calculate how much space left
    local used_width=$(( (col_w * visible_cols) + (3 * (visible_cols - 1)) )) # 3 is len(" │ ")
    local remaining=$(( box_w - 4 - used_width ))
    if (( remaining > 0 )); then repeat_char " " $remaining; fi
    printf " │\n"
  done

  printf "${ESC}[1;34m└"; repeat_char "─" $((box_w-2)); printf "┘${ESC}[0m\n"
  printf "${ESC}[2mZoom:%sx  Col %d-%d of %d${ESC}[0m" "$zoom_level" "$((start_col+1))" "$((start_col+visible_cols))" "$TOTAL_COLS_COUNT"
}

####################
# Main
####################
gather_items

zoom_level=1
start_col=0
TOTAL_COLS_COUNT=0

# Clear screen once
clear

# Hide cursor and setup cleanup trap
tput civis || true
cleanup() {
  tput cnorm || true
  clear
}
trap cleanup EXIT

last_cols=0
last_lines=0
last_zoom=-1
last_start_col=-1

while true; do
  cols=$(tput cols)
  lines=$(tput lines)
  
  if (( cols != last_cols || lines != last_lines || zoom_level != last_zoom || start_col != last_start_col )); then
    # Calculate layout parameters
    min_col_w=$(( 25 + (zoom_level * 5) ))
    avail_w=$((cols - 4)) # Borders
    
    # How many columns fit?
    # w * N + 3 * (N-1) <= avail_w
    # w*N + 3N - 3 <= avail_w
    # N(w+3) <= avail_w + 3
    visible_cols=$(( (avail_w + 3) / (min_col_w + 3) ))
    if (( visible_cols < 1 )); then visible_cols=1; fi
    
    # Recalculate exact column width to fill screen
    # N*w + 3(N-1) = avail_w
    # N*w = avail_w - 3(N-1)
    # w = (avail_w - 3*(N-1)) / N
    sep_space=$(( 3 * (visible_cols - 1) ))
    final_col_w=$(( (avail_w - sep_space) / visible_cols ))
    
    content_h=$((lines - 3))
    if (( content_h < 1 )); then content_h=1; fi

    layout_items $content_h $final_col_w $visible_cols

    if (( start_col < 0 )); then start_col=0; fi
    if (( start_col >= TOTAL_COLS_COUNT )); then 
      if (( TOTAL_COLS_COUNT > 0 )); then start_col=$((TOTAL_COLS_COUNT - 1)); else start_col=0; fi
    fi

    draw $start_col $visible_cols $final_col_w
    
    last_cols=$cols
    last_lines=$lines
    last_zoom=$zoom_level
    last_start_col=$start_col
  fi

  read -rsn1 -t 0.1 key || true

  if [[ $key == $'\x1b' ]]; then
    read -rsn2 -t 0.01 rest || true
    key+="$rest"
  fi

  case "$key" in
    q) break ;;
    $'\x1b[C') start_col=$((start_col+1)) ;; # Right Arrow
    $'\x1b[D') start_col=$((start_col-1)) ;; # Left Arrow
    +) if (( zoom_level < 4 )); then zoom_level=$((zoom_level+1)); fi ;;
    -|$'\x1f') if (( zoom_level > 1 )); then zoom_level=$((zoom_level-1)); fi ;; # - or Ctrl+-
    *) ;;
  esac
done
