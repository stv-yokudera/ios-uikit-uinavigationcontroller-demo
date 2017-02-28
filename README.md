# UINavigationController

## 概要
UINavigationControllerは階層的な画面遷移を管理するクラスです。

## 関連クラス
UIViewController

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| viewControllers | ナビゲーションスタックにあるUIViewControllerの配列 | navigationController!.viewControllers |
| topViewController | ナビゲーションスタック最上部のUIViewController | navigationController!.topViewController |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| pushViewController(_ viewController: UIViewController, animated: Bool) | 引数のviewControllerにpushで画面遷移する<br>（ナビゲーションスタックにviewControllerがpushされる） | navigationController?.pushViewController(secondViewController, animated: true) |
| popViewController(animated: Bool) -> UIViewController? | popで画面遷移する（戻る）<br>（ナビゲーションスタックのtopViewControllerがpopされる） | navigationController?.popToRootViewController(animated: true) |
| popToRootViewController(animated: Bool) -> [UIViewController]? | RootViewControllerまでpopで画面遷移する（戻る）<br>（ナビゲーションスタックのRootViewController以外のviewControllerがpopされる） | navigationController?.popToRootViewController(animated: true) |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uinavigationcontroller

# UINavigationItem

## 概要
UINavigationItemはnavigationBarのボタンやViewを管理するクラスです。

## 関連クラス
NSObject

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| title | タイトルを設定する | navigationItem.title |
| titleView | navigationBar中央に表示されるカスタムView | navigationItem.titleView |
| leftBarButtonItem | 左側に表示されるボタン | navigationItem.leftBarButtonItem |
| rightBarButtonItem | 右側に表示されるボタン | navigationItem.rightBarButtonItem |
| backBarButtonItem | 戻るボタン | navigationItem.backBarButtonItem |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| setLeftBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool) | 左側に表示されるボタンの配列をセットする | navigationItem.setLeftBarButtonItems(items, animated: true) |
| setRightBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool) | 右側に表示されるボタンの配列をセットする | navigationItem.setRightBarButtonItems(items, animated: true) |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uinavigationitem

# UIBarButtonItem

## 概要
UIBarButtonItemはUIToolbarまたはUINavigationBarに配置するための特殊なボタンクラスです。

## 関連クラス
UIBarItem

## 主要イニシャライザ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| init(title:style:target:action:) | タイトル・ターゲット・アクションを設定して生成 | UIBarButtonItem(title: "Root", style: .plain, target: self, action: #selector(didTapBarButtonItem)) |
| init(barButtonSystemItem:target:action:) | システムで定義された画像・ターゲット・アクションを指定して生成 | UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(didTapBarButtonItem)) |
| init(image:style:target:action:) | 画像・ターゲット・アクションを指定して生成 | UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(didTapBarButtonItem)) |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uibarbuttonitem
