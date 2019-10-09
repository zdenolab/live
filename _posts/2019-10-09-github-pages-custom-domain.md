---
published: true
layout: post
title: GitHub Pages na vlastní doméně
date: '2019-10-09 14:29:23 +0700'
categories:
  - others
  - jekyll
---
## Použití GitHub Pages na vlastní doméně - postup
			
GitHub prostřednictvím GitHub Pages umožňuje každému jednoduše vytvořit osobní stránky, případně stránky projektu. 

Pro tvorbu webu je třeba mít základní znalost Liquid template, příkazů pro terminal, git, HTML/CSS a framework Jekyll, na kterém to celé stojí.

Lze forknout již hotový repository, na githubu lze nalézt mnoho vývojářů, kteří mají k dispozici hotový template -> tzjn. stačí ho forknout jako svůj repository a po úpravách používat. Předpokládejmě. že toto je hotovo.

### Nastavení GitHub repository
			
GitHub Pages budou fungovat pouze pokud se repository jmenuje  `{your-username.github.io}`. Lze dát i do subfolderu, ale webová adresa na githubu bude obsahovat celou cestu tzn. `{your-username/subfolder.github.io}`



![gh_repo.PNG](https://raw.githubusercontent.com/zdenolab/zdenolab.github.io/master/static/img/_posts/gh_repo.PNG "repository")

Repository musí být nastaveno jako **master branch**


![master.PNG](https://raw.githubusercontent.com/zdenolab/zdenolab.github.io/master/static/img/_posts/master.PNG "master_branch")

### Nastavení vlastní domény


> Pokud vše funguje na adrese `your-username.github.io` a chceme web přesměrovat na vlastní doménu, je třeba mít vlastní doménu. Já jsem koupil doménu na **[Wedos](https://www.wedos.cz/)**, kde budu popisovat následně nastavení.

1. Nejprve je nutné v repository na GitHubu vytvořit soubor `CNAME` (nutno aby byl v root), jehož obsahem bude pouze vaše doména:

![cname.PNG](https://raw.githubusercontent.com/zdenolab/zdenolab.github.io/master/static/img/_posts/cname.PNG "CNAME")

- To by mělo automaticky přidat vaší doménu v Nastavení -> GitHub Pages -> Custom Domain.


2. Následně v administraci Wedosu otevřu Seznam domén -> Editovat DNS záznamy kde je nutno smazat AAA záznamy a upravit, resp. přidat záznamy A s IP adresami GitHubu.

```
TTL:1800	Type:A		185.199.108.153
TTL:1800	Type:A		185.199.109.153
TTL:1800	Type:A		185.199.110.153
TTL:1800	Type:A		185.199.111.153
```

3. Poté přidat CNAME soubor s vaší GitHub adresou. Viz obrázek:

![wedos.PNG](https://raw.githubusercontent.com/zdenolab/zdenolab.github.io/master/static/img/_posts/wedos.PNG "WEDOS")
