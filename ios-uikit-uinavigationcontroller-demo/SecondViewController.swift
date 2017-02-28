//
//  SecondViewController.swift
//  ios-uikit-uinavigationcontroller-demo
//
//  Created by Kentaro on 2017/02/27.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        
        // navigationItemのtitleを設定
        navigationItem.title = "Second"
        
        // backボタンのtitleを設定
        navigationItem.backBarButtonItem?.title = "もどる"
        
        // UIBarButtonItemを生成（SystemItemの値で見た目が変化する）
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .compose,
                                            target: self,
                                            action: #selector(didTapBarButtonItem))
                
        // barButtonItemをrightBarButtonItemにセットする
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    
    /// barButtonItemタップ時に呼ばれるメソッド
    @objc private func didTapBarButtonItem() {
        
        // navigationControllerのUIViewControllerの配列（スタック）
        print("viewControllers = \(navigationController!.viewControllers)")
        // navigationControllerのviewControllersスタックの最上部にいるviewController
        print("topViewController = \(navigationController!.topViewController!)")
    }

    @IBAction private func didTapPush(_ sender: UIButton) {
        // ThirdViewControllerにpushする
        let storyboard = UIStoryboard(name: "ThirdViewController", bundle: nil)
        let thirdViewController = storyboard.instantiateInitialViewController()!
        navigationController?.pushViewController(thirdViewController, animated: true)
    }

}
