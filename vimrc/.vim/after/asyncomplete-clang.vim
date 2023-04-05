echo "configuring asyncomplete-clang.vim"

" autocmd User asyncomplete_setup call asyncomplete#register_source(
"     \ asyncomplete#sources#clang#get_source_options())

autocmd User asyncomplete_setup call asyncomplete#register_source(
    \ asyncomplete#sources#clang#get_source_options({
    \     'config': {
    \         'clang_path': '/opt/clang-9/bin/clang',
    \         'clang_args': {
    \             'default': ['-I/opt/llvm/include'],
    \         }
    \     }
    \ }))
