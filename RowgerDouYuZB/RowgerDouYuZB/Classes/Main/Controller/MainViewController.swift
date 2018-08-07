//
//  MainViewController.swift
//  RowgerDouYuZB
//
//  Created by luojie on 2018/8/7.
//  Copyright © 2018年 luojie. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChilVc(storyName: "Home")
        addChilVc(storyName: "Live")
        addChilVc(storyName: "Follow")
        addChilVc(storyName: "Profile")

        // Do any additional setup after loading the view.
    }
    private func addChilVc(storyName:String){
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVc)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
