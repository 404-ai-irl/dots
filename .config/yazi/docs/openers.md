# [openers]

Available options are as follows:

- run: The command to open the selected files, with the following variables available:
    - $n (Unix) / %n (Windows): The N-th selected file, starting from 1. e.g. $2 represents the second selected file.
    - $@ (Unix) / %* (Windows): All selected files, i.e. $1, $2, ..., $n.
    - $0 (Unix) / %0 (Windows): The hovered file.
block: Open in a blocking manner. After setting this, Yazi will hide into a secondary screen and display the program on the main screen until it exits. During this time, it can receive I/O signals, which is useful for interactive programs.
orphan: Keep the process running even if Yazi has exited, once specified, the process will be detached from the task scheduling system.
desc: Description of the opener, display in interactive components, such as "Open with" and help menu.
for: The opener is only available on this system; if not specified, it's available on all systems. Available values:
unix: Linux and macOS
windows: Windows
linux: Linux
macos: macOS
android: Android (Termux)
The commands specified by run follow platform-specific differences. For example, Unix shell requires wrapping $ with quotes, while % in Windows batch scripts doesn't.

Refer to the documentation of sh and cmd.exe for details.

