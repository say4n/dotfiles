# Change default screenshot location

mkdir ~/screenshots
defaults write com.apple.screencapture location ~/screenshots
killall SystemUIServer
