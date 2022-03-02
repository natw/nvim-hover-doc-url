if exists('g:loaded_hover_doc_url')
  finish
endif

function s:HoverURL()
  " lua package.loaded["hover-doc"] = nil
  lua require("hover-doc").visit()
endfunction

command! OpenHoverDocURL call <SID>HoverURL()

let g:loaded_hover_doc_url = 1
