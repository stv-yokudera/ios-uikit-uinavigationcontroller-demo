//
//  FourthViewController.swift
//  ios-uikit-uinavigationcontroller-demo
//
//  Created by OkuderaYuki on 2017/04/06.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        printNavigationConfiguration()
    }
    
    // 本クラスではbackボタンのtitleを設定しない →デフォルト表示
    private func setup() {
        
        navigationItem.title = "Fourth"
        
        let starImage = #imageLiteral(resourceName: "star").resizableImage(withCapInsets: UIEdgeInsetsMake(5, 5, 5, 5))
        
        // 画像を使用してUIBarButtonItemを生成（tintColorの影響を受けないようにwithRenderingMode(.alwaysOriginal)を設定）
        let barButtonItem = UIBarButtonItem(image: starImage.withRenderingMode(.alwaysOriginal),
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
