workflow "Notification on push" {
  on = "push"
  resolves = [
    "Filters for GitHub Actions",
    "Discord notificaction",
    "Discord notificaction CUSTOM",
  ]
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@b2bea07"
  args = "branch master"
}

action "Discord notificaction" {
  uses = "Ilshidur/actions/discord@master"
  secrets = ["DISCORD_WEBHOOK"]
  needs = ["Filters for GitHub Actions"]
}

action "Discord notificaction CUSTOM" {
  uses = "Ilshidur/actions/discord@master"
  secrets = ["DISCORD_WEBHOOK"]
  args = "A new commit has been pushed to Ilshidur/actions."
  needs = ["Filters for GitHub Actions"]
}
