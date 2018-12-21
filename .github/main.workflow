workflow "Notification on push" {
  on = "push"
  resolves = [
    "Slack notification",
    "Discord notificaction",
    "Discord notificaction CUSTOM",
  ]
}

action "Slack notification" {
  uses = "Ilshidur/actions/slack@master"
  secrets = ["SLACK_WEBHOOK"]
  args = "A new commit has been pushed to Ilshidur/actions."
}

action "Discord notificaction" {
  uses = "Ilshidur/actions/discord@discord"
  secrets = ["DISCORD_WEBHOOK"]
}

action "Discord notificaction CUSTOM" {
  uses = "Ilshidur/actions/discord@discord"
  secrets = ["DISCORD_WEBHOOK"]
  args = "A new commit has been pushed to Ilshidur/actions."
}
