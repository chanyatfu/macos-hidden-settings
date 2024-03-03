#!/bin/zsh

# TRUE will enable Touch ID for sudo, FALSE do otherwise
ENABLE_TOUCH_ID_FOR_SUDO=TRUE

if grep -E "auth.*sufficient.*pam_tid\.so" /etc/pam.d/sudo > /dev/null; then
    sed -i '' '/auth.*sufficient.*pam_tid.so/d' /etc/pam.d/sudo
fi

if $ENABLE_TOUCH_ID_FOR_SUDO; then
    sed -i '' 's/# sudo: auth account password session/&\nauth       sufficient     pam_tid.so/g' /etc/pam.d/sudo
    echo "Use Touch ID for sudo enabled"
else
    echo "Use Touch ID for sudo disabled"
fi
