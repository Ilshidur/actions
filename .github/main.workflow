workflow "New workflow" {
  on = "push"
  resolves = ["Slack"]
}

action "Slack" {
  uses = "Ilshidur/actions/slack@master"
  secrets = ["SLACK_WEBHOOK"]
  args = "A new commit has been pushed to Ilshidur/actions."
}
