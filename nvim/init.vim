""" Yun Woo Park (hanlsin@gmail.com) March 10, 2023

""" ========================================================
""" NEOVIM 기본 설정
set nu                      " generate a line number
set mousehide               " when typing, mouse hide
set bs=indent,eol,start     " when backspace key won't move in Insert mode.
set nolinebreak             " don't wrap words by default
set autoindent              " 자동 들여쓰기
set wrap                    " 자동 줄바꿈
set ruler                   " 커서가 위치한 행과 열을 표시
set nobackup                " 백업파일 생성하지 않음
set noswapfile              " swap 파일 생성하지 않음
set history=50              " 명령어 히스토리
set showmode                " 현재 모드 표시 (삽입, 명령, 블럭모드)
set showcmd                 " 현재 명령 보이기 (r 등의 명령)
set showmatch               " 괄호 매칭 확인
set hlsearch                " when search, result on highlight
set noignorecase            " 검색 시 대소문자 구별하지 않음
set title                   " 제목 표시줄에 파일명 표시
set novisualbell            " 경고소리를 깜빡임으로 대치하지 않음
set binary                  " to view a binary file in a hex view
"set noexpandtab             " Tab 대신 Space 삽입: expandtab/noexpandtab
"set ts=8                    " tabstop. size of tab
"set sw=8                    " shiftwidth. size of indent
"set sts=4                   " softtabstop. size of soft tab
"set smarttab
" for 4 space characters tab
set ts=4 expandtab sw=4 smartindent
set splitbelow              " set new window is below
set splitright              " set new window is right 
set encoding=utf-8          " set encoding as UTF-8
set clipboard=unnamed       " access the system clipboard on OSX.
" unknown option below
"set term=screen-256color    " set terminal same as tmux.
