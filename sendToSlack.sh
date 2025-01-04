WEBHOOK_URL="$SLACK_WEBHOOK_URL"

if [ -z "$WEBHOOK_URL" ]; then
    echo "Error: WEBHOOK_URL is empty or not defined."
    exit 1
fi

USERNAME=$(whoami)

DIRECTORY_PATH="/Users/$USERNAME/Documents/burpSuiteFiles"

mkdir -p "$DIRECTORY_PATH"

FILE_PATH="$DIRECTORY_PATH/recordErrorResponse.txt"

touch "$FILE_PATH"

FILE_CONTENT=$(cat "$FILE_PATH")

curl -X POST -H 'Content-type: application/json' --data "{'text': '$FILE_CONTENT'}" "$WEBHOOK_URL"
