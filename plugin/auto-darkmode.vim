" Vim global plugin to set background during macOS dark mode
" Last Change: 2019 Jan 12
" Maintainer: John Elliott <john@primitivemachine.com>
" License: This file is placed in the public domain.

func! SetDarkMode()
  if has('osxdarwin')
    if (system("defaults read NSGlobalDomain AppleInterfaceStyle") ==? "Dark\n")
      set background=dark
    endif
  endif
endfunc

au ColorSchemePre * call SetDarkMode()
