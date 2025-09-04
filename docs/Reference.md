# Contributing to the Reference Section

This guide explains how to contribute to the reference section of the Mint
language website.

## Overview

The reference section provides comprehensive documentation of all Mint language
features. It's located in the `source/Reference/` directory and consists of
numbered files and organized subdirectories covering different aspects of the
language.

## File Structure

### Main Reference Files

Reference files are numbered sequentially and follow the naming convention
`NN-Topic-Name.mint`:

- `01-Introduction.mint` - Introduction to the reference
- `02-Program.mint` - Program structure
- `03-Comments.mint` - Code comments
- ...
- `29-Configuration.mint` - Application configuration

### Subdirectories

The reference is organized into logical subdirectories:

- `Components/` - Component-related documentation
- `ControlFlow/` - Control flow constructs (if-else, case, etc.)
- `Directives/` - Language directives
- `JavaScript/` - JavaScript interop features
- `Styling/` - CSS and styling features
- `Types/` - Type system documentation

Each subdirectory follows the same numbering convention for its files.

## File Format

All reference files are written in Mint and follow this structure:

```mint
module References {
  const TOPIC_NAME =
    <<#MARKDOWN(highlight)
    # Topic Title

    Content goes here...
    MARKDOWN
}
```

### Key Elements

1. **Module Declaration**: All reference files belong to the `References` module
2. **Constant Name**: Use UPPERCASE_WITH_UNDERSCORES matching the topic
3. **MARKDOWN Block**: Content is written in Markdown with syntax highlighting enabled
4. **Proper Indentation**: Maintain consistent indentation within the MARKDOWN block

### Mixed Content Example

For complex content mixing HTML and Markdown (like tables), use this pattern:

```mint
module References {
  const CONFIGURATION =
    {
      let table =
        <table>
          <thead>
            <tr>
              <th>"Column 1"</th>
              <th>"Column 2"</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><code>"example"</code></td>
              <td>"Description text"</td>
            </tr>
          </tbody>
        </table>

      <<#MARKDOWN(highlight)
      # Topic Title

      Regular markdown content here.

      #{table}

      More markdown content.
      MARKDOWN
    }
}
```

## Content Guidelines

### Writing Style

- **Be Clear and Concise**: Explain concepts clearly without unnecessary complexity
- **Use Examples**: Include practical code examples for each feature
- **Be Comprehensive**: Cover all aspects of the topic thoroughly
- **Stay Current**: Ensure examples work with the latest Mint version

### Code Examples

- Use triple backticks with language specification
- Check all code examples to ensure they are valid (syntax highlighted)
- Include both basic and advanced usage examples where applicable
- Show realistic, practical use cases

~~~markdown
Here's how to use arrays:

```mint
// Basic array creation
let numbers = [1, 2, 3, 4, 5]

// Array with different operations
let doubled = Array.map(numbers, (number : Number) { number * 2 }))
```
~~~

### Documentation Standards

- **Start with Overview**: Begin each topic with a brief explanation
- **Logical Progression**: Organize content from basic to advanced concepts
- **Cross-References**: Link to related topics when relevant
- **Complete Coverage**: Don't leave gaps in functionality coverage

## Development Workflow

### Setting Up Local Development

1. **Install Mint**: Follow instructions at https://www.mint-lang.com/install
2. **Clone Repository**: `git clone https://github.com/mint-lang/mint-website.git`
3. **Install Dependencies**: `mint install`
4. **Start Development Server**: `mint start`
5. **Preview Changes**: Navigate to the reference section to see your changes

### Adding New Reference Topics

1. **Determine Numbering**: 
   - For main topics: Use the next available number (e.g., `30-New-Topic.mint`)
   - For subtopics: Add to the appropriate subdirectory with sequential numbering

2. **Create the File**: Follow the file format template above

3. **Register in Navigation**: **This step is required** - Add the new page to
   `source/Data/Reference.mint` (see Navigation Registration section below)

4. **Test Locally**: Ensure the content renders correctly in the development
   server and appears in navigation

## Navigation Registration

**Critical**: Every new reference page must be registered in `source/Data/Reference.mint`
to appear in the website navigation. This file defines the structure and routing
for all reference documentation.

### Main Pages

For top-level reference topics, add entries to the `pages` array:

```mint
{
  contents: defer References.YOUR_CONSTANT_NAME,
  name: "Display Name",
  path: "url-path"
}
```

**Example**: Adding a new "Macros" topic:
```mint
{
  contents: defer References.MACROS,
  name: "Macros", 
  path: "macros"
}
```

### Categorized Pages

For pages that belong in subdirectories (Types, Components, etc.), add them to
the appropriate category's `pages` array:

```mint
{
  name: "Category Name",
  path: "category-path", 
  pages: [
    {
      contents: defer References.CATEGORY_TOPIC_NAME,
      name: "Topic Name",
      path: "topic-path"
    }
    // ... other pages
  ]
}
```

**Example**: Adding a new component topic:

```mint
// Add to the Components category
{
  contents: defer References.COMPONENTS_ANIMATIONS,
  name: "Animations",
  path: "animations"
}
```

### Path Naming Conventions

- **Use kebab-case**: `"my-new-topic"` not `"My New Topic"`
- **Be descriptive**: Path becomes part of URL (`/reference/my-new-topic`)
- **Match constant name**: If constant is `COMPONENTS_ANIMATIONS`, path might be `"animations"`
- **Avoid conflicts**: Check existing paths to prevent duplicates

### Constant Name Mapping

The `contents` field references constants from your `.mint` files:

- **File**: `source/Reference/30-Macros.mint` with `const MACROS`
- **Registration**: `contents: defer References.MACROS`
- **Subdirectory**: `source/Reference/Components/11-Animations.mint` with `const ANIMATIONS`
- **Registration**: `contents: defer References.COMPONENTS_ANIMATIONS`

### Editing Existing Topics

1. **Maintain Structure**: Don't change the overall file structure without discussion
2. **Test Changes**: Verify that modifications don't break existing functionality
3. **Update Examples**: Ensure code examples remain current and functional
4. **Preserve Formatting**: Maintain consistent indentation and formatting

## Submission Process

1. **Fork the Repository**: Create your own fork for changes
2. **Create Feature Branch**: `git checkout -b update-reference-topic`
3. **Make Changes**: Follow the guidelines above
4. **Register Navigation**: Don't forget to update `source/Data/Reference.mint` for new pages
5. **Test Thoroughly**: Verify changes work in development environment and navigation works
6. **Commit Changes**: Write clear, descriptive commit messages
7. **Submit Pull Request**: Include description of changes and reasoning

Thank you for contributing to the Mint language reference documentation!
