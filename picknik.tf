locals {
  picknik_team = [
    "DLu",
    "JafarAbdi",
    "MarqRazz",
    "moriarty",
    "tylerjw",
    "vatanaksoytezer",
  ]
  picknik_repositories = [
    "cpp_polyfills-release",
    "graph_msgs-release",
    "launch_param_builder-release",
    "picknik_ament_copyright-release",
    "picknik_controllers-release",
    "rviz_visual_tools-release",
    "snowbot_release",
  ]
}

module "picknik_team" {
  source       = "./modules/release_team"
  team_name    = "picknik"
  members      = local.picknik_team
  repositories = local.picknik_repositories
  depends_on   = [github_membership.members, github_repository.repositories]
}
