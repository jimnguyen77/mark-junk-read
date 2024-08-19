This is a simple script to remove unread badges in the "Junk" folders within the MacOS Mail app.  Run `setup.sh` to copy the script to `usr/local/bin` and install the recurring task to crontab.

The source code of the `.scpt` file is as follows:

```
tell application "Mail"
    set theMessages to messages of junk mailbox
    repeat with aMessage in theMessages
        set read status of aMessage to true
    end repeat
end tell
```
