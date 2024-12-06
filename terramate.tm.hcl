terramate {
  config {
    disable_safeguards = ["git-untracked", "git-uncommitted"]
    cloud {
      organization = "mrazureinc"
    }
    run {
      env {
        environment = env.ENVIRONMENT
      }
    }
  }
}