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
    
    // 本クラスではbackボタンのtitleを設定しない → デフォルト表示
    private func setup() {
        navigationItem.title = "Third"
    }

    private func printNavigationConfiguration() {
        print("viewControllers = \(navigationController!.viewControllers)")
        print("topViewController = \(navigationController!.topViewController!)")
    }

    @IBAction func didTapPush(_ sender: Any) {
        // FourthViewControllerにpushする
        let storyboard = UIStoryboard(name: "FourthViewController", bundle: nil)
        let fourthViewController = storyboard.instantiateInitialViewController()!
        navigationController?.pushViewController(fourthViewController, animated: true)
    }
}
