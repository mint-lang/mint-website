// Data structure for a project.
type Project {
  files : Array(LessonFile),
  activeFile : String
}

// Data structure for a file in a lession.
type LessonFile {
  solution : String,
  contents : String,
  path : String
}

// Data structure for a lesson.
type LessonData {
  files : Array(LessonFile),
  contents : Html
}

// Data structure for a lesson item.
type Lesson {
  data : Deferred(LessonData),
  category : String,
  title : String,
  path : String
}

// The page.
type Page {
  Documents(
    category : Maybe(DocumentCategory),
    documents : Documents,
    document : Document,
    basePath : String,
    contents : Html,
    title : String)

  Tutorial(
    previousLessonPath : Maybe(String),
    nextLessonPath : Maybe(String),
    lessons : Array(Lesson),
    title : Array(String),
    lesson : LessonData,
    path : String)

  ApiDocs(String, Array(TopLevelEntity), TopLevelEntity,
    Maybe(DocumentLayoutSidebarInfo))

  From(Map(String, FromItem), From, FromData)
  FromIndex(Map(String, From))

  Sandbox(Sandbox.Page, UserStatus)
  Page(String, Html)
  FeatureMatrix
  NotFound
  Initial
}

// Data structure for the document tree.
type Documents {
  categories : Array(DocumentCategory),
  pages : Array(Document)
}

// Data structure for a document category.
type DocumentCategory {
  pages : Array(Document),
  path : String,
  name : String
}

// Data structure for a document.
type Document {
  contents : Deferred(Html),
  name : String,
  path : String
}

// Data structure for a top-level entity in the API Docs.
type TopLevelEntity {
  parameters : Maybe(Array(String)) using "p",
  entities : Maybe(Array(Entity)) using "e",
  flags : Maybe(Array(Number)) using "f",
  description : Maybe(String) using "d",
  link : String using "l",
  kind : Number using "k",
  name : String using "n"
}

// Data structure for an entity in the API Docs.
type Entity {
  arguments : Maybe(Array(Argument)) using "a",
  description : Maybe(String) using "d",
  source : Maybe(String) using "s",
  value : Maybe(String) using "v",
  type : Maybe(String) using "t",
  broken : Bool using "b",
  kind : Number using "k",
  name : String using "n"
}

// Data structure for an argument in the API Docs.
type Argument {
  value : Maybe(String) using "v",
  type : Maybe(String) using "t",
  name : String using "n"
}

// Sandbox pages.
type Sandbox.Page {
  Recent(Array(Sandbox))
  Mine(Array(Sandbox))
  Editor(Sandbox)
  Initial
  Error
}

// Data structure for a sandbox project.
type Sandbox {
  mintVersion : String using "mint_version",
  createdAt : Time using "created_at",
  updatedAt : Time using "updated_at",
  userId : Number using "user_id",
  content : String,
  title : String,
  id : String,
  user : User
}

// Data structure for the user.
type User {
  nickname : String,
  image : String,
  id : Number
}

// Data structure for the state of the user.
type UserStatus {
  LoggedIn(User)
  LoggedOut
  Initial
}

// Type for a menu item.
type MenuItem {
  Action(
    action : Function(Promise(Void)),
    disabled : Bool,
    label : String,
    icon : Html)

  Group(icon : Html, label : String, items : Array(MenuItem))

  Link(icon : Html, label : String, href : String, disabled : Bool, target :
    String)

  Divider
}

// Type for a category of navigation items.
type DocumentLayoutCategory {
  items : Array(DocumentLayoutItem),
  name : String
}

// Type for a navigation item.
type DocumentLayoutItem {
  mobilePrefix : String,
  searchValue : String,
  content : Html,
  href : String,
  icon : Html
}

// Type for the documentation table of contents item.
type DocumentLayoutTocItem {
  content : Html,
  level : Number,
  href : String,
  icon : Html
}

// Data structure for the extra information for the sidebar.
type DocumentLayoutSidebarInfo {
  items : Array(Tuple(String, Html, String)),
  title : String
}

// Data structure for a news post.
type News {
  contents : Deferred(Html),
  subtitle : String,
  author : String,
  title : String,
  time : Time
}

// Data structure for a package.
type Package {
  documentation : Deferred(Array(TopLevelEntity)),
  version : String,
  readme : String,
  name : String,
  url : String
}

// Type for an item for a language comparison.
type FromItem {
  String(String)
  NotAvailable
  Code(Html)
  Html(Html)
  Text(Html)
}

// Type for a language comparison.
type FromData {
  items : Map(String, FromItem),
  description : Html
}

// Type for the language comparison.
type From {
  data : Deferred(FromData),
  title : String
}

// Type for a feature.
type Feature {
  SupportedBut(explanation : String)
  Partial(explanation : String)
  NotApplicable
  NotSupported
  ViaPackage
  Supported
  Unkown
}

// Type for a feature in the feature matrix.
type FeatureSupport {
  javaScript : Feature,
  reScript : Feature,
  gleam : Feature,
  mint : Feature,
  elm : Feature
}
