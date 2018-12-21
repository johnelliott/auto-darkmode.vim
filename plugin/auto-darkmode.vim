" Vim global plugin to set background during macOS dark mode
" Last Change: 2018 Dev 21
" Maintainer: John Elliott <john@primitivemachine.com>
" License: This file is placed in the public domain.

if has('osxdarwin')
  if (system("defaults read NSGlobalDomain AppleInterfaceStyle") ==? "Dark\n")
    set background=dark
  endif
endif
