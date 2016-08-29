#!/bin/sh

parent_path="$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )"

key=$(cat "configs/config.json" | grep "invitationKey" | sed -e 's/^.*: *\"\([^\"]*\)\"/\1/')
port=$(cat "configs/config.json" | grep "port" | sed -e 's/^.*: *\([0-9]*\)\,/\1/')
invite=$ curl --data "invitationKey=MY_INVITATION_KEY" http://MY_APP.herokuapp.com/auth?todo=invite | sed -e 's/^.*: *\"\([^\"]*\)\"}/\1/')

echo $invite
