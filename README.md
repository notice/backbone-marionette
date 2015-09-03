## Backbone.Marionette

Backbone.Marionetteのサンプルコードです。

### ライブラリ

以下のライブラリで構成されています。

* jquery
* lodash
* backbone
* marionette
* jade

詳しくはpackage.jsonを参照ください。
Javascriptはcoffeescriptで書いています。
エントリーはboot.coffeeです。

### ビルド

ビルドツールはgulp+webpackです。
詳しくはgulpfile.coffee,webpack.config.coffeeを参照してください。

```
$ npm install
$ gulp
$ php -S 0.0.0.0:8000 -t public
```
