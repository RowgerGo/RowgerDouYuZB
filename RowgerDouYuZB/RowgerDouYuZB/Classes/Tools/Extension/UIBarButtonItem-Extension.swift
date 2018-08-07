//
//  UIBarButtonItem-Extension.swift
//  RowgerDouYuZB
//
//  Created by luojie on 2018/8/7.
//  Copyright © 2018年 luojie. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    convenience init(imageName:String, hightImageName:String,size:CGSize){
        let btn = UIButton()
        let hightImageName=hightImageName
        btn.setImage(UIImage(named: imageName), for: .normal)
        
     
        btn.setImage(UIImage(named: hightImageName), for: .highlighted)

        
        btn.frame=CGRect(origin: CGPoint.zero, size: size)
        
        self.init(customView:btn)
    }
    
//    class  func createItem(imageName:String,hightImageName:String,size:CGSize)->UIBarButtonItem{
//        let btn = UIButton()
//
//        btn.setImage(UIImage(named: imageName), for: .normal)
//
//        btn.setImage(UIImage(named: hightImageName), for: .highlighted)
//
//        btn.frame=CGRect(origin: CGPoint.zero, size: size)
//
//        return UIBarButtonItem(customView: btn)
//
//    }
}
