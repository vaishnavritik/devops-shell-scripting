#!/bin/bash

case "$1" in

    start)
        # Your command
        echo "App Started"
        ;;

    stop)
        # Your command
	echo "App Stopped"
        ;;
    restart)
        # Your command
        echo "App Restarted"
        ;;
    *)
        # Default command
	echo "not a correct command"
        ;;

esac
