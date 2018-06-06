record Version {
  description : String from "body",
  version : String from "tag_name",
  date : Time from "published_at",
  url : String from "html_url",
  assets : Array(Asset)
}

module Version {
  fun empty : Version {
    {
      date = Time.now(),
      description = "",
      version = "",
      assets = [],
      url = ""
    }
  }
}
