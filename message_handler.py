# flake8: noqa
import sys, os


FILE_CONTENTS = \
"""on run argv
    tell application "Messages"
        set phoneNumber to "{}"
        set message to "{}"
        send message to buddy phoneNumber --of service "SMS"
    end tell
    log "Message sent to {}"
end run"""


def main():
    raw_phone = sys.argv[1]
    if len(raw_phone) != 10:
        raise Exception("Please enter a US phone number with only the numbers, excluding the country code")

    try:
        int(raw_phone)
    except:
        raise Exception("Invalid phone number provided")

    phone = f"({raw_phone[:3]}) {raw_phone[3:6]}-{raw_phone[6:]}"
    with open("imessage.scpt", 'w') as f:
        msg = input("Enter your message:\n")
        f.write(FILE_CONTENTS.format(phone, msg, phone))
    os.system("osascript imessage.scpt")


if __name__=='__main__':
    main()