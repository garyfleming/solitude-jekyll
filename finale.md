---
layout: default
title: Finale
permalink: /Finale/
---

## Finale

Best of each year

<ul>
{% for post in site.categories.Finale %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
