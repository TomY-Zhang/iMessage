on run argv
    tell application "Messages"
        set phoneNumber to "PHONE_NUMBER"
        set message to "MESSAGE"
        send message to buddy phoneNumber --of service "SMS"
    end tell
    log "Message sent to (646) 853-0832"
end run
