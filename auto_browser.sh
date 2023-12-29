#!/bin/bash

echo -e "Starting Recording session"

OUTPUT_SCRIPT=""
USER_AGENT_STR=""
SCRIPT_FOLDER="Generated_Scripts"

function get_user_agent_string() {
    echo -e "Getting User Agent"
    echo -e "Not yet implemented"
    USER_AGENT_STR=""
}

function get_names_from_user() {
    local script_name
    read -p "Enter a name from the script: " script_name
    echo -e "Script name: ${script_name}"
    OUTPUT_SCRIPT="${script_name}"
    mkdir -p "./${SCRIPT_FOLDER}/${OUTPUT_SCRIPT}"
}

if [ -d "$SCRIPT_FOLDER" ]; then
    :
else
    mkdir -p "$SCRIPT_FOLDER"
    echo -e "Created output folder for scripts"
fi

get_user_agent_string
get_names_from_user

touch "./${SCRIPT_FOLDER}/${OUTPUT_SCRIPT}/${OUTPUT_SCRIPT}.out"
playwright codegen --save-storage "./${SCRIPT_FOLDER}/${OUTPUT_SCRIPT}/${OUTPUT_SCRIPT}.out" --user-agent "${USER_AGENT_STR}" --target "python" -o "./${SCRIPT_FOLDER}/${OUTPUT_SCRIPT}/${OUTPUT_SCRIPT}.py"

echo -e "Done"
