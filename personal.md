---
title: Personal
layout: default
permalink: /personal/
books:
  - title: "Bayesian Methods For Hackers"
    subtitle: "Probabilistic Programming and Bayesian Inference"
    image: "/media/bb.jpg"
  - title: "Auditing Algorithms"
    subtitle: "Understanding Algorithmic Systems from the Outside In"
    image: "/media/audits.jpg"
  - title: "Causal Inference: What If"
    subtitle: "by Miguel Angel Hernán"
    image: "/media/whatif.jpg"
---

<div class="readable-content">
  <h1>Outside of Research</h1>
  
  <div class="personal-section">
    <h2>Reading</h2>
    <p>I enjoy reading books on a variety of topics. Here are some books I've recently enjoyed:</p>
    
    <div class="book-grid">
      {% for book in page.books %}
      <div class="book">
        <div class="book-cover">
          <img src="{{ book.image }}" alt="{{ book.title }}">
          <div class="book-info">
            <p class="book-title">{{ book.title }}</p>
            <p class="book-subtitle">{{ book.subtitle }}</p>
          </div>
        </div>
        <!-- <p class="visible-title"><strong>{{ book.title }}</strong></p> -->
      </div>
      {% endfor %}
    </div>
  </div>
  
  <div class="personal-section">
    <h2>Traveling</h2>
    <p>
      I love exploring new places, experiencing different cultures, and meeting new people. 
      Travel helps me gain perspective and see the world through different lenses, which I believe 
      enriches my research on how technology impacts diverse communities.
    </p>
    <p>
      My research on technology in marginalized communities has taken me to many interesting places, 
      allowing me to witness firsthand how different societies adapt and appropriate technology in their daily lives.
    </p>
  </div>
  
  <div class="personal-section">
    <h2>Hobbies</h2>
    <p>
      When I'm not conducting research or teaching, I enjoy:
    </p>
    <ul>
      <li>Photography - capturing the human experience across different cultures</li>
      <li>Cooking - experimenting with recipes from around the world</li>
      <li>Hiking - exploring nature and disconnecting from technology</li>
      <li>Community volunteering - giving back to the communities that inform my research</li>
    </ul>
  </div>
</div>

<style>
  .personal-section {
    margin-bottom: 40px;
  }
  
  .book-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    margin-top: 20px;
    justify-content: flex-start;
  }
  
  .book {
    width: 180px;
    text-align: center;
    margin-bottom: 20px;
  }
  
  .book-cover {
    position: relative;
    overflow: hidden;
    height: 240px;
    border-radius: 10px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
  }
  
  .book-cover img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
  }
  
  .book-info {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.86);
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 15px;
    opacity: 0;
    transition: opacity 0.1s ease;
  }
  
  .book-cover:hover img {
    transform: scale(1.1);
  }
  
  .book-cover:hover .book-info {
    opacity: 1;
  }
  
  .book-title {
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 5px;
  }
  
  .book-subtitle {
    font-size: 12px;
    font-style: italic;
  }
  
  .visible-title {
    margin-top: 10px;
    margin-bottom: 5px;
    font-size: 14px;
  }
  
  /* Ensure content stays within the readable area */
  .readable-content {
    max-width: 750px;
    margin: 0 auto;
  }
</style>