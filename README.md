# Rayhan Rashed's Academic Website

This repository contains the source code for my personal academic website, built with Jekyll and GitHub Pages. Feel free to fork and use it as a template for your own academic website.

## Features

- Clean, responsive design optimized for both desktop and mobile
- Separate sections for research, blog posts, and personal content
- Sticky navigation bar for easy site navigation
- Sidebar with profile information and updates
- Responsive layouts for optimal display on different devices
- Customizable content through markdown files

## Getting Started

### Prerequisites

To run this website locally, you'll need:

- Ruby (version 2.7.0 or newer)
- RubyGems
- Bundler

### Installation

1. Fork this repository to create your own copy
2. Clone your forked repository to your local machine
3. Navigate to the repository directory and install dependencies:

```bash
cd your-username.github.io
bundle install
```

4. Start the local Jekyll server:

```bash
bundle exec jekyll serve --livereload
```

5. Open your browser and go to `http://localhost:4000` to see the website

### Structure

- `_config.yml` - Site configuration file
- `index.md` - Homepage content
- `research.md` - Research page content
- `blog.html` - Blog listing page
- `personal.md` - Personal interests page with book display
- `_layouts/` - HTML templates for different page types
- `_posts/` - Blog post files (format: YYYY-MM-DD-title.md)
- `assets/` - CSS, JavaScript, and other assets
- `content/` - PDFs and other downloadable content
- `media/` - Images and other media files

## Customization

### Basic Configuration

1. Update `_config.yml` with your information:
   - name
   - title
   - author
   - url
   - social media links

2. Replace `RJS3488.jpg` with your profile picture

3. Edit `index.md` to update your homepage content

### Adding Content

- **Blog Posts**: Add new `.md` files in the `_posts` directory with the format `YYYY-MM-DD-title.md`
- **Research Projects**: Edit `research.md` to update your research information
- **Personal Interests**: Edit `personal.md` to customize the personal section

### Navigation

Edit the `navigation` section in `_config.yml` to customize the navigation menu items.

## Deployment

This website is designed to be deployed on GitHub Pages:

1. Push your changes to your GitHub repository
2. GitHub will automatically build and deploy your site
3. Your site will be available at `https://your-username.github.io`

## Known Issues and Solutions

- If you're using Ruby 3.3+, you may need to add the `csv` and `logger` gems to your Gemfile
- If images or styles aren't loading, check the URL paths in your templates

## Credits

This template has been significantly customized from various academic website templates and adapted for modern responsive design with a focus on readability and accessibility.

## License

This project is open source and available under the [MIT License](LICENSE).


This template is borrowed from [Danae Metaxa][met]. The source is probably [Ali Alkhatib][ali].

[met]: https://metaxa.net
[ali]: https://al2.com
