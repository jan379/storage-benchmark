policy_rule {
  name: "ssd_only"
  description: "Place files only on Flash devices if volume name contains \"flashbench\""
  enabled: true
  scope {
    volume {
      name_regex: "flashbench"
    }
    files_operator: ALL_OF
  }
  policies {
    file_tag_based_placement {
      required_tag: "ssd"
      soften_tag_requirements: false
    }
  }
}

