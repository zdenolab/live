---
layout: post
title: Notes on Jekyll!
date: '2019-10-08 21:28:15 +0700'
categories:
  - jekyll
published: true
---
### Code snippet highlighting
Jekyll umožňuje podporu zvýraznění syntaxe různých jazyků. Toto probíhá přes tag:

>{% highlight VAS_JAZYK %} + {% endhighlight %}

Podporované jazyky jsou lze naléz na nálsedujícím odkaze:
[List of supported languages and lexers.](https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers)

Více na webu [Jekyllrb.com](https://jekyllrb.com/docs/liquid/tags/)

### Výpis nejčastěji používaných tagů:

Zvýraznění dle jazyka:
`{% highlight VAS_JAZYK %} + {% endhighlight %}`

Kód jednoduchý:
`kod je uavřen obácenou čárkou z obou strn tzn (``)`

atd.

Odkaz na markdown https://daringfireball.net/projects/markdown/syntax#code


Původní příspšvěk:
```
You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.
```
Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
