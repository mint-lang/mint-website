/* Represents an asset of a version. */
record Asset {
  url : String from "browser_download_url",
  name : String
}

/* Represents a version. */
record Version {
  description : String from "body",
  version : String from "tag_name",
  date : Time from "published_at",
  url : String from "html_url",
  assets : Array(Asset)
}

/* Utility functions for a `Version` */
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
