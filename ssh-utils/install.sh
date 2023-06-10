#!/bin/sh
set -e
set -u

__install_ssh_utils() {
    rm -f \
        "$HOME/.local/bin/ssh-authorize" \
        "$HOME/.local/bin/ssh-pubkey" \
        "$HOME/.local/bin/ssh-setpass" \
        "$HOME/.local/bin/ssh-adduser" \
        "$HOME/.local/bin/sshd-prohibit-password"
    # done

    webi_download \
        "$WEBI_HOST/packages/ssh-authorize/ssh-authorize" \
        "$HOME/.local/bin/ssh-authorize"
    webi_download \
        "$WEBI_HOST/packages/ssh-pubkey/ssh-pubkey.sh" \
        "$HOME/.local/bin/ssh-pubkey"
    webi_download \
        "$WEBI_HOST/packages/ssh-setpass/ssh-setpass.sh" \
        "$HOME/.local/bin/ssh-setpass"
    webi_download \
        "$WEBI_HOST/packages/ssh-adduser/ssh-adduser.sh" \
        "$HOME/.local/bin/ssh-adduser"
    webi_download \
        "$WEBI_HOST/packages/sshd-prohibit-password/sshd-prohibit-password" \
        "$HOME/.local/bin/sshd-prohibit-password"

    chmod a+x "$HOME/.local/bin/ssh-"*
}

__install_ssh_utils
