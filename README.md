# tyranoscript-packager-action
これはGithub Actionを使って自動的にティラノビルダー,ティラノスクリプトのプロジェクトを自動的に実行ファイルに変換して、リリースするプロジェクトです。  

# 使い方

## 最小のスタート
.github/workflows/release.ymlを作成して
```yml
on:
  push:
    tags:
    - "v[0-9]+.[0-9]+.[0-9]+"


jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          submodules: true  
      - name: test
        uses: PenguinCabinet/tyranoscript-packager-action@v0.1.21
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          tag:  ${{ github.ref }}
```
中身はこうしてください  
これでリポジトリにタグを作りpushするとGithub Actionが発火して、Windows版がリリースされます(タグの例:v0.0.1)  

## すべてのオプション
```yml
on:
  push:
    tags:
    - "v[0-9]+.[0-9]+.[0-9]+"


jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        with:
          submodules: true  
      - name: test
        uses: PenguinCabinet/tyranoscript-packager-action@v0.1.21
        with:
            workingdirectory: "." #プロジェクトがあるパス
            GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
            tag:  ${{ github.ref }}
            zip_name: 'release.zip'
            platform: 'win' #win,mac,linux
            title: 'title' #The window title of this game 
            width: '1920' 
            height: '1080' 
            game_name:  'game'  #This game name
```


# 使用したソフトウェア
[tyranoscript-packager](https://github.com/fuji44/tyranoscript-packager)