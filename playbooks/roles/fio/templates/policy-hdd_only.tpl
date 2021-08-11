policy_rule {
  name: "hdd_only"
  description: "Place files only on HDD devices if volume name contains \"hddbench\""
  enabled: true
  scope {
    volume {
      name_regex: "hddbench"
    }
    files_operator: ALL_OF
  }
  policies {
    file_tag_based_placement {
      required_tag: "hdd"
      soften_tag_requirements: false
    }
  }
}
