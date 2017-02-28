//
//  ThirdViewController.swift
//  ios-uikit-uinavigationcontroller-demo
//
//  Created by Kentaro on 2017/02/28.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        printNavigationConfiguration()
    }
    
    // 本クラスではbackボタンのtitleを設定しない →デフォルト表示
    private func setup() {
        navigationItem.title = "Third"
        let barButtonItem = UIBarButtonItem(title: "Root",
                                            style: .plain,
                                            target: self,
                                            action: #selector(didTapBarButtonItem))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc private func didTapBarButtonItem() {
        
        // RootまでPopする
        _ = navigationController?.popToRootViewController(animated: true)
    }

    private func printNavigationConfiguration() {
        print("viewControllers = \(navigationController!.viewControllers)")
        print("topViewController = \(navigationController!.topViewController!)")
    }

}
