#!/usr/bin/env ruby
# This script creates a new blog post with the correct format
# Usage: ruby scripts/new-post.rb "Your Post Title"

require 'date'
require 'fileutils'

# Get the post title from arguments or prompt for it
post_title = ARGV[0]
if post_title.nil? || post_title.empty?
  print "Enter post title: "
  post_title = gets.chomp
end

if post_title.nil? || post_title.empty?
  puts "Error: Post title cannot be empty"
  exit 1
end

# Create a URL-friendly slug from the title
slug = post_title.downcase.strip.gsub(/\s+/, '-').gsub(/[^\w-]/, '')

# Get current date
current_date = Date.today.strftime("%Y-%m-%d")

# Create the file path
file_name = "#{slug}.md"
file_path = File.join(Dir.pwd, "_posts", file_name)

# Check if the file already exists
if File.exist?(file_path)
  puts "Error: A post with this slug already exists: #{file_path}"
  exit 1
end

# Create the content with front matter
content = <<-CONTENT
---
layout: post
title: "#{post_title}"
date: #{current_date}
excerpt: "Write your excerpt here. This will appear in the blog listing."
featured_image: "/media/your-image.jpg" # Optional featured image
---

# #{post_title}

Write your content here using Markdown formatting.

## Section 1

Your content continues here...
CONTENT

# Ensure the _posts directory exists
FileUtils.mkdir_p(File.join(Dir.pwd, "_posts"))

# Write the file
File.write(file_path, content)

puts "Created new blog post: #{file_path}"
puts "Edit this file and add your content!"