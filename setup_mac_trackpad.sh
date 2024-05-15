#!/bin/bash

USER_LIST=$(ls /Users)
for USER in ${USER_LIST};
do
echo "Working in $USER directory..."
if [[ ($USER != "EXCEPTIONUSER") && ($USER != "Shared") && ($USER != "Guest") && ($USER != ".localized") ]]
then
##Add to all users except EXCEPTIONS and Shared code here
su "$USER" -c "defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true"
su "$USER" -c "defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1"
su "$USER" -c "defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1"
else
echo "...skipping"
fi
done
exit 0
