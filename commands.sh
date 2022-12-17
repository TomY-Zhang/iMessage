function text() {
    if [[ $# -ne 0 ]] && [[ $# -ne 1 ]]; then
        echo "Invalid number of parameters"
    else
        if [ $# -eq 1 ]; then
            export PHONE=$1
            echo $PHONE
        fi
        
        python3 message_handler.py $PHONE
    fi
}