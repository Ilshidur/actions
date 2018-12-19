workflow "Notification on push" {
  on = "push"
  resolves = ["Slack notification"]
}

action "Slack notification" {
  uses = "Ilshidur/actions/slack@master"
  secrets = ["SLACK_WEBHOOK"]
  args = "A new commit has been pushed to Ilshidur/actions."
}
