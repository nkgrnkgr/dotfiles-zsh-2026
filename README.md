# dotfiles

## Requirements

### Homebrew

https://brew.sh

### Install tools via Homebrew

```bash
brew install git       # バージョン管理
brew install sheldon   # プラグインマネージャー
brew install fzf       # あいまい検索
brew install zoxide    # スマートな cd
brew install atuin     # コマンド履歴検索
brew install starship  # プロンプト
brew install mise      # ランタイムバージョン管理
brew install gitui     # Git TUI クライアント
```

### Nerd Font

Starship はアイコンを多用するため、Nerd Font をインストールしないと文字化けします。
[HackGen (白源)](https://github.com/yuru7/HackGen) がおすすめです。

## Create Link

シンボリックリンクを張ることで、このリポジトリの設定ファイルを実際のホームディレクトリに反映します。

```bash
ln -sf $(pwd)/dotfiles/.zshrc ~/.zshrc
ln -sf $(pwd)/dotfiles/.gitconfig ~/.gitconfig
ln -sf $(pwd)/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.config/sheldon
ln -sf $(pwd)/dotfiles/sheldon_plugins.toml ~/.config/sheldon/plugins.toml
```

その後、設定を反映します。

```bash
source ~/.zshrc
```
