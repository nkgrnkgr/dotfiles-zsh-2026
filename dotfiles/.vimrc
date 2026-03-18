" --- 表示・外観設定 ---
set number             " 行番号を表示
set cursorline         " 現在の行を強調表示
set showmatch          " 括弧の対応をハイライト
set laststatus=2       " ステータスラインを常に表示
syntax on              " シンタックスハイライトを有効化

" --- インデント・タブ設定 ---
set expandtab          " タブ入力を空白に変換
set tabstop=4          " タブ幅をスペース4つ分に
set shiftwidth=4       " 自動インデント時の幅
set smartindent        " 改行時に自動でインデント

" --- 検索設定 ---
set ignorecase         " 検索時に大文字小文字を区別しない
set smartcase          " 大文字が含まれている場合は区別する
set incsearch          " 入力中から検索を開始（インクリメンタルサーチ）
set hlsearch           " 検索結果をハイライト（Esc連打で消す設定は下述）

" --- 操作・システム設定 ---
set mouse=a            " マウス操作を有効化
set clipboard+=unnamed " クリップボードとの連携（OSによる）
set nobackup           " バックアップファイルを作らない
set noswapfile         " スワップファイルを作らない
set encoding=utf-8     " 内部文字コードをUTF-8に

" --- 便利なキーマッピング ---
" Esc2回押しで検索ハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>
" 画面上の行移動（長い行が折り返されていても1行ずつ移動）
nnoremap j gj
nnoremap k gk