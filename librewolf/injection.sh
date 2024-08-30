#!/bin/bash

USER_CHROME="userChrome.css"
CUSTOM="custom.css"

if [[ -f "$CUSTOM" ]]; then
	echo -e "\n" >> "$USER_CHROME"
	cat "$CUSTOM" >> "$USER_CHROME"
	echo "Appended $CUSTOM to $USER_CHROME"
else
	echo "$CUSTOM not found"
fi