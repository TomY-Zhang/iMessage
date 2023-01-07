on run argv
    tell application "Messages"
        set phoneNumber to "PHONE_NUMBER"
        set message to "MESSAGE"
        send message to buddy phoneNumber --of service "SMS"
    end tell
    log "Message sent to PHONE_NUMBER"
end run
