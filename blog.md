---
layout: default
title: Blog
permalink: /blog/
---

# Blog Posts

<div class="blog-posts">
  {% for post in site.posts %}
    <article class="post">
      <h2><a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a></h2>
      <div class="post-date">{{ post.date | date: "%B %d, %Y" }}</div>
      <div class="post-excerpt">
        {{ post.excerpt | strip_html | truncatewords: 50 }}
      </div>
      <a href="{{ site.url }}{{ post.url }}" class="read-more">Read More</a>
    </article>
    <hr>
  {% endfor %}
</div>

<style>
  .blog-posts {
    margin: 20px 0;
  }
  .post {
    margin-bottom: 30px;
  }
  .post-date {
    color: #666;
    font-style: italic;
    margin-bottom: 10px;
  }
  .read-more {
    display: inline-block;
    margin-top: 10px;
    font-weight: bold;
  }
</style>