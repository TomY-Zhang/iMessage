on run argv
    tell application "Messages"
        set phoneNumber to "(646) 853-0832"
        set message to "nice"
        send message to buddy phoneNumber --of service "SMS"
    end tell
    log "Message sent to (646) 853-0832"
end run