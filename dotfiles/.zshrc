# ==========================================
# ツールとプラグインの初期化
# ==========================================
# 1. プラグインマネージャー (Sheldon)
eval "$(sheldon source)"

# 2. fzf (あいまい検索)
eval "$(fzf --zsh)"

# 3. ディレクトリ移動 (zoxide)
eval "$(zoxide init zsh)"

# 4. コマンド履歴検索 (Atuin)
eval "$(atuin init zsh --disable-up-arrow)"

# 5. プロンプト (Starship) - ※通常は設定ファイルの最後に記述します
eval "$(starship init zsh)"

# ==========================================
# Ctrl + Q で zoxide の履歴を fzf で検索して移動
# ==========================================

# 1. ターミナルのフロー制御を無効化（Ctrl + Q を解放）
# ※すでに記載済みの場合は重複しなくて大丈夫です
stty -ixon

# 2. fzf と zoxide を連携させて移動する関数
fzf-zoxide-cd() {
    local dir
    # zoxide の履歴一覧を取得し、fzf に渡して選択させる
    # （--layout=reverse で検索バーを上にし、使いやすくしています）
    dir=$(zoxide query -l | fzf --height=50% --layout=reverse --info=inline --prompt="cd > ")
    
    # ディレクトリが選択された場合のみ cd で移動
    if [[ -n "$dir" ]]; then
        cd "$dir"
        zle reset-prompt
    fi
}

# 3. Zshのウィジェットとして登録
zle -N fzf-zoxide-cd

# 4. Ctrl + Q (^q) にバインド
bindkey '^q' fzf-zoxide-cd

# mise
eval "$(mise activate zsh)"

# alias
alias g='gitui'
alias pn='pnpm'
