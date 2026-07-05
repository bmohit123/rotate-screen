
#!/bin/bash
# rotate-screen.sh — Cycles through rotations: normal → right → inverted → left → normal

STATE_FILE="/tmp/.screen_rotation_state"

# Read current state (default to normal)
CURRENT=$(cat "$STATE_FILE" 2>/dev/null || echo "normal")

case "$CURRENT" in
    normal)   NEXT="right"    ;;
    right)    NEXT="inverted" ;;
    inverted) NEXT="left"     ;;
    left)     NEXT="normal"   ;;
    *)        NEXT="normal"   ;;
esac

OUTPUT=$(kscreen-doctor -o 2>/dev/null | grep 'Output:' | awk '{print $3}' | head -n1)

if [ -z "$OUTPUT" ]; then
    echo "Error: Could not detect any display output."
    exit 1
fi

kscreen-doctor output."$OUTPUT".rotation."$NEXT"
echo "$NEXT" > "$STATE_FILE"
echo "Rotated $OUTPUT → $NEXT"
