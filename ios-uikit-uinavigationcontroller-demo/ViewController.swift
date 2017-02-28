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

