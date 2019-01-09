
func! bootstrap#before() abort
  let g:spacevim_disabled_plugins = ['delimitMate', 'neopair']
  let g:spacevim_autocomplete_parens = 0
  let g:python_host_prog = $HOME.'/.SpaceVim.d/py2/bin/python'
  let g:python3_host_prog = $HOME.'/.SpaceVim.d/py3/bin/python'
endf

func! bootstrap#after() abort

  let g:no_ocaml_maps = 1
  set conceallevel=0

  augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
  augroup END

endf
