//
//  ViewController.swift
//  ios-uikit-uinavigationcontroller-demo
//
//  Created by Kentaro on 2017/02/27.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction private func didTapPush(_ sender: UIButton) {
        
        // 名前を指定して Storyboard を取得する(SecondViewController.storyboard の場合)
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: nil)
        let secondViewController = storyboard.instantiateInitialViewController()!
        
        // pushで画面遷移する
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

// MARK: - UINavigationControllerDelegate関連

extension ViewController: UINavigationControllerDelegate {
    
    fileprivate func setup() {
        navigationController?.delegate = self
        navigationBarStyle()
    }
    
    /// ナビゲーションバーのデザインを変更する
    private func navigationBarStyle() {
        
        // ナビゲーションバーアイテムの色を変更 (デフォルトは青)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        
        // ナビゲーションバーの色を変更
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        
        let font = UIFont(name: "HiraMinProN-W3", size: 20) ?? UIFont.systemFont(ofSize: 20)
        let naviBarTitleAttributes: [String : Any] = [NSForegroundColorAttributeName : #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1),
                                                      NSFontAttributeName : font]
        
        // ナビゲーションバーのタイトルを装飾
        navigationController?.navigationBar.titleTextAttributes = naviBarTitleAttributes
    }
    
    // 画面遷移直前に呼ばれる
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        // 共通の処理
        print("画面遷移直前\nTop = \(navigationController.topViewController!)")
        
        // ViewControllerのみの処理
        if viewController is ViewController {
            print("ViewControllerのみの処理です")
        }
    }
    
    // 画面遷移直後に呼ばれる
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        // 共通の処理
        print("画面遷移直後\nTop = \(navigationController.topViewController!)")
        
        // ViewControllerのみの処理
        if viewController is ViewController {
            print("ViewControllerのみの処理です")
        }
    }
}

