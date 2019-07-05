if has('nvim') && system('python3 --version | grep 3.5') != ''
  let g:python3_host_prog = 'python3.6'
endif

try
  let g:dein#install_process_timeout = 3600 * 24      " internet is too slow in China...
  let g:dein#types#git#clone_depth = 1
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
  " if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Plugin Manager
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('haya14busa/dein-command.vim')
    call dein#add('wsdjeg/dein-ui.vim')

    " Generic Plugins
    call dein#add('roxma/nvim-yarp', {'if': !has('nvim')})
    call dein#add('roxma/vim-hug-neovim-rpc', {'if': !has('nvim')})
    call dein#add('tpope/vim-eunuch')
    call dein#add('tmux-plugins/vim-tmux-focus-events')
    call dein#add('roxma/vim-tmux-clipboard')

    " UI Plugins
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('justinmk/vim-dirvish')
    call dein#add('itchyny/lightline.vim')
    call dein#add('mengelbrecht/lightline-bufferline')
    call dein#add('Yggdroot/indentLine')
    " call dein#add('nathanaelkane/vim-indent-guides')
    call dein#add('mbbill/fencview')
    call dein#add('mbbill/undotree')
    call dein#add('mhinz/vim-startify')

    " Moving Plugins
    call dein#add('tpope/vim-unimpaired')
    call dein#add('tpope/vim-surround')
    call dein#add('wellle/targets.vim')
    call dein#add('easymotion/vim-easymotion')
    call dein#add('rhysd/clever-f.vim')
    call dein#add('andymass/vim-matchup')
    call dein#add('kana/vim-textobj-user')
    call dein#add('kana/vim-textobj-indent')
    call dein#add('kana/vim-textobj-syntax')
    call dein#add('kana/vim-textobj-function')
    call dein#add('sgur/vim-textobj-parameter')

    " Editing Plugins
    " call dein#add('tpope/vim-commentary')
    call dein#add('scrooloose/nerdcommenter')
    " call dein#add('godlygeek/tabular')
    call dein#add('junegunn/vim-easy-align')
    call dein#add('tpope/vim-sleuth')
    call dein#add('tpope/vim-repeat')
    call dein#add('mg979/vim-visual-multi')
    call dein#add('Shougo/vinarise.vim', {'hook_post_update': 'silent! UpdateRemotePlugins'})
    " call dein#add('Shougo/deorise.vim')

    " FileType Plugins
    call dein#add('PProvost/vim-ps1')
    call dein#add('aklt/plantuml-syntax')
    call dein#add('hynek/vim-python-pep8-indent')
    call dein#add('sheerun/vim-polyglot', {'merged': 0})
    call dein#add('tmux-plugins/vim-tmux')

    " Source Control Plugins
    call dein#add('tpope/vim-fugitive')
    call dein#add('will133/vim-dirdiff')
    call dein#add('gregsexton/gitv')

    " Project management
    call dein#add('Shougo/defx.nvim', {'hook_post_update': 'silent! UpdateRemotePlugins'})
    call dein#add('kristijanhusak/defx-git')
    call dein#add('kristijanhusak/defx-icons')
    call dein#add('editorconfig/editorconfig-vim')

    " Language Semantic
    call dein#add('neoclide/coc.nvim', {
          \ 'merged': 0,
          \ 'trusted': 0,
          \ 'rev': 'release',
          \ 'hook_post_update': 'silent! UpdateRemotePlugins | CocUpdate'
          \ })
    call dein#add('honza/vim-snippets')
    call dein#add('liuchengxu/vista.vim')
    call dein#add('sbdchd/neoformat')

    " Debuggig Plugins
    " call dein#add('cpiger/NeoDebug')

    " ColorSchemes
    call dein#add('lifepillar/vim-solarized8')
    call dein#add('iCyMind/NeoSolarized')
    call dein#add('sickill/vim-monokai')
    call dein#add('chriskempson/vim-tomorrow-theme')
    call dein#add('chriskempson/base16-vim')
    call dein#add('junegunn/seoul256.vim')
    call dein#add('nanotech/jellybeans.vim')
    call dein#add('NLKNguyen/papercolor-theme')
    call dein#add('joshdick/onedark.vim', {'merged': 0})
    call dein#add('arcticicestudio/nord-vim')
    call dein#add('soft-aesthetic/soft-era-vim', {'merged': 0})
    call dein#add('sainnhe/lightline_foobar.vim')

    call dein#end()
  "   call dein#save_state()
  " endif
  filetype plugin indent on
  syntax enable
  if dein#check_install()
    call dein#install()
  endif
catch
endtry

" runtime zpan/init/plugins/complete_parameter.vim
if !zpan#is_sudo()
  runtime zpan/init/plugins/coc.vim
endif
runtime zpan/init/plugins/defx.vim
runtime zpan/init/plugins/dein_ui.vim
" runtime zpan/init/plugins/delimit_mate.vim
" runtime zpan/init/plugins/denite.vim
" runtime zpan/init/plugins/endwise.vim
" runtime zpan/init/plugins/git_p.vim
runtime zpan/init/plugins/lightline.vim
runtime zpan/init/plugins/neoformat.vim
runtime zpan/init/plugins/netrw.vim
" runtime zpan/init/plugins/tagbar.vim
" runtime zpan/init/plugins/ultisnips.vim
runtime zpan/init/plugins/undotree.vim
runtime zpan/init/plugins/vim_visual_multi.vim
runtime zpan/init/plugins/vista.vim
" runtime zpan/init/plugins/you_complete_me.vim
