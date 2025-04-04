#!/bin/bash

SPELL_DIR="./spells"
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
RED="\033[1;31m"
NC="\033[0m" # No Color

print_header() {
    echo -e "${BOLD}${GREEN}📜 Spellbook of Commands${NC}"
    echo -e "${YELLOW}Usage:${NC} ./spellbook.sh [list | show <category> | help]"
    echo ""
}

print_help() {
    print_header
    echo "Available commands:"
    echo "  list                 List all available spell categories"
    echo "  show <category>      Display tips and commands for a category"
    echo "  help                 Show this help message"
}

list_spells() {
    echo -e "${BOLD}📚 Available categories:${NC}"
    for file in "$SPELL_DIR"/*.txt; do
        [ -e "$file" ] || continue
        basename "$file" .txt
    done
}

show_spell() {
    local topic="$1"
    local file="$SPELL_DIR/${topic}.txt"

    if [[ -f "$file" ]]; then
        echo -e "${BOLD}🧙 $topic Commands:${NC}"
        echo ""
        cat "$file"
    else
        echo -e "${RED}❌ Unknown category: '$topic'${NC}"
        echo "Use './spellbook.sh list' to see available topics."
    fi
}

case "$1" in
    list)
        list_spells
        ;;
    show)
        if [[ -z "$2" ]]; then
            echo -e "${RED}Please specify a category. Example:${NC} ./spellbook.sh show git"
        else
            show_spell "$2"
        fi
        ;;
    help|"")
        print_help
        ;;
    *)
        echo -e "${RED}Unknown command: $1${NC}"
        print_help
        ;;
esac