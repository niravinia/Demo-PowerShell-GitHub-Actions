workflow "New workflow" {
  on = "push"
  resolves = ["Deploy to Azure"]
}


action "Deploy to Azure" {
  uses = "./.github/azdeploy"
  secrets = ["SERVICE_PASS"]
  env = {
    SERVICE_PRINCIPAL = "http://GitHubActionsSP",
    TENANT_ID="bc678f6a-1657-4041-b403-0035d95e5b41",
    APPID="YourAppIdX100"
  }
}
