# nvim-hover-doc-url

When looking at the docs for an object (via `textDocument/hover`),
there is often a url in there that I would like to open.

This very gross plugin provides a function to do so,
at least in the very narrow case where your LSP server is returning markdown content
and the url you care about is the first one.
This is usually the case with golang, which is what I'm really targeting here.

Add this plugin in the usual fashion and you will be rewarded with an `OpenHoverDocURL` function.

I recommend mapping it to `gx`, which is usually used for opening files with netrw or something,
I didn't read the docs that carefully

```
nnoremap gx :OpenHoverDocURL<cr>
```

