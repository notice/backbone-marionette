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
Javascriptはcoffeescript/es6で書いています。
エントリーはboot.{coffee,js}です。

### ビルド

ビルドツールはgulp+webpackです。
詳しくはgulpfile.coffee,webpack.config.coffeeを参照してください。

#### coffeescript

```
$ npm install
$ gulp js index.html
$ php -S 0.0.0.0:8000 -t public
```

#### es6

```
$ npm install
$ gulp es6 index.html
$ php -S 0.0.0.0:8000 -t public
```
