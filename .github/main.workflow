workflow "Notification on push" {
  on = "push"
  resolves = [
    "Slack notification",
    "Discord notificaction",
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
