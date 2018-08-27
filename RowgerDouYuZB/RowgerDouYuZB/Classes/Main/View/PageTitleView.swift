//
//  PageTitleView.swift
//  RowgerDouYuZB
//
//  Created by luojie on 2018/8/8.
//  Copyright © 2018年 luojie. All rights reserved.
//

import UIKit

class PageTitleView: UIView {
    private var titles:[String]
    
    private lazy var scrollView:UIScrollView={
       let scrollView=UIScrollView()
       scrollView.showsHorizontalScrollIndicator=false
       scrollView.scrollsToTop = false
       scrollView.bounces = false
       return scrollView
    }()
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    //创建构造函数,用来接收外面传输进来的内容
    init(frame:CGRect,titles:[String]) {
        self.titles=titles
        super.init(frame:frame)
        //设置ui界面
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// 设置UI界面
extension PageTitleView{
    private func setupUI(){
        
    }
}
