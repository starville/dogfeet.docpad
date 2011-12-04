--- 
layout: 'default'
date: '2009-05-21T16:06:05.000Z'
---

for document in @documents
  if 0 is document.url.indexOf '/articles'
    article '.post', ->
      header ->
        a href: document.url, ->
          h1 document.title

      footer ->
        text @layout 'article-footer', document

      if document.firstRendered is undefined
        text @tool.summary document.contentRendered
      else
        text @tool.summary document.firstRendered

      p -> a '.btn', href: document.url, 'Read more &raquo;'
