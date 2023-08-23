# Set language to English.
set -x LANG en_US.UTF-8

# Aliases.
alias p="cd ~/Projects"

alias vpn_deploy='aws ec2 run-instances --launch-template LaunchTemplateId=lt-0f4a2456f4d641c58'
alias vpn_destroy='aws ec2 terminate-instances --instance-ids (aws ec2 describe-instances | jq -r ".Reservations[].Instances[] | .InstanceId")'
alias vpn_ssh='aws ec2-instance-connect ssh --instance-id (aws ec2 describe-instances | jq -r \'.Reservations[].Instances[] | select(.State.Name == "running") | .InstanceId\') --os-user ubuntu'
alias vpn_list='aws ec2 describe-instances | jq -r ".Reservations[].Instances[] | .InstanceId, .State.Name"'

# Paths.
fish_add_path /opt/homebrew/sbin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish

