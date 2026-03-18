# dotfiles

## Requirements

### Homebrew

https://brew.sh

### Install tools via Homebrew

```bash
brew install sheldon   # プラグインマネージャー
brew install fzf       # あいまい検索
brew install zoxide    # スマートな cd
brew install atuin     # コマンド履歴検索
brew install starship  # プロンプト
brew install mise      # ランタイムバージョン管理
brew install gitui     # Git TUI クライアント
```

## Create Link

シンボリックリンクを張ることで、このリポジトリの設定ファイルを実際のホームディレクトリに反映します。

```bash
ln -sf $(pwd)/dotfiles/.zshrc ~/.zshrc
ln -sf $(pwd)/dotfiles/.gitconfig ~/.gitconfig
ln -sf $(pwd)/dotfiles/.vimrc ~/.vimrc
```

その後、設定を反映します。

```bash
source ~/.zshrc
```
