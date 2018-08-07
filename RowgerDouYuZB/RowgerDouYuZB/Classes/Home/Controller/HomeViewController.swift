//
//  HomeViewController.swift
//  RowgerDouYuZB
//
//  Created by luojie on 2018/8/7.
//  Copyright © 2018年 luojie. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


}
//MARK:- 设置UI界面
extension HomeViewController{
    private func setupUI(){
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        let btn = UIButton()
        btn.setImage(UIImage(named: "logo"), for: .normal)
        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem=UIBarButtonItem(customView: btn)
    }
}
