function wait_for_internet
    while sleep 10 && not ping -c 1 1.1.1.1
    end

    while true
        notify-send "INTERNET" "I HAVE INTERNET"
        sleep 1
    end
end
