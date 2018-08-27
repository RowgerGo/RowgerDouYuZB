//
//  HomeViewController.swift
//  RowgerDouYuZB
//
//  Created by luojie on 2018/8/7.
//  Copyright © 2018年 luojie. All rights reserved.
//

import UIKit
private let kTitleViewH:CGFloat=40

class HomeViewController: UIViewController {
    //懒加载属性
    private lazy var pageTitleView:PageTitleView={
       let titleFrame = CGRect(x: 0, y: kStatusBarH+kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        titleView.backgroundColor = UIColor.purple
        return titleView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


}
//MARK:- 设置UI界面
extension HomeViewController{
    private func setupUI(){
        //1.设置导航栏
        setupNavigationBar()
        //2.添加TitleView
        view.addSubview(pageTitleView)
    }
    
    private func setupNavigationBar(){
        //设置左侧
        let btn = UIButton()
        btn.setImage(UIImage(named: "logo"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem=UIBarButtonItem(customView: btn)
        
        //设置右侧
        let size = CGSize(width: 40, height: 40)
        let historyItem=UIBarButtonItem(imageName: "image_my_history", hightImageName: "Image_my_history_click", size: size)
        let searchItem=UIBarButtonItem(imageName: "btn_search", hightImageName: "btn_search_clicked", size: size)
        let qrcodeItem=UIBarButtonItem(imageName: "Image_scan", hightImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems=[historyItem,searchItem,qrcodeItem]
    }
}
