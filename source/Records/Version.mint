/* Represents an asset of a version. */
record Asset {
  url : String using "browser_download_url",
  name : String
}

/* Represents a version. */
record Version {
  description : String using "body",
  version : String using "tag_name",
  date : Time using "published_at",
  url : String using "html_url",
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
