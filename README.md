# Ruby 3.1 and Rails 7.0 and MySQL 8.0

Ruby3.1, Ruby on Rails 7.0, MySQL 8.0 の開発環境

Docker Compose と [devcontainer](https://code.visualstudio.com/docs/remote/containers) で実装


環境構築方法は以下の2つがあります
- Dokcer compose で構築する
- VSCode devcontainerで構築する


## 1. Docker Compose で構築する

### 初回構築
```bash
$ make build
```

### サーバー立ち上げ
```
$ docker compose up app
```

### サーバー内でシェルを実行する
サーバーを立ち上げた状態で以下を実行
```
$ docker compose exec app bash
```


## 2. VSCode devcontainer で構築する

### remote container のインストール
※ devcontainer に必要なツールのインストールは[こちら](https://code.visualstudio.com/docs/remote/containers#_installation)


### devcontainerの起動

1. VSCodeを開き、 `Reopen in Container` を実行する

### サーバーの立ち上げ
devcontainer上でTerminalを開き、コマンドを実行する
```bash
$ bin/rails s
```

### Debugging
devcontainer上で、 `デバッグを実行` を実行する(ショートカットキー: F5)

`デバッグを実行` を利用すると[VSCode Debugging](https://code.visualstudio.com/docs/editor/debugging)が利用可能

<img width="900" alt="debugging" src="https://user-images.githubusercontent.com/1701108/189269013-1c9c8e8e-f6df-4cc1-b695-4fc9130d85a2.png">

参考: [VSCode rdbg Ruby Debugger](https://marketplace.visualstudio.com/items?itemName=KoichiSasada.vscode-rdbg)


### VSCode extensions

- [rebornix.Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [castwide.solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph)
- [KoichiSasada.vscode-rdbg](https://marketplace.visualstudio.com/items?itemName=KoichiSasada.vscode-rdbg)
- [redhat.vscode-yaml](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
- [VisualStudioExptTeam.vscodeintellicode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
- [esbenp.prettier-vscode](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [EditorConfig.EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

## 構成

docker compose で構成

- app: [ruby:3.1-bullseye](https://hub.docker.com/_/ruby)
- mysql: [mysql:8.0](https://hub.docker.com/_/mysql)
