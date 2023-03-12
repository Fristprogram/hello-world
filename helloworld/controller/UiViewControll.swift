//
//  UiViewControll.swift
//  helloworld
//
//  Created by 徐小鹏 on 2023/3/12.
//

import UIKit
class UiViewControll : UIViewController{
    
    override func viewDidLoad() {
        let view1 = UIView()
        //设置背景色
        view1.backgroundColor = UIColor.blue
        //设置正在俯视图的位置和宽高
        view1.frame = CGRect(x:100,y: 100,width: 100,height: 100)
        //中心
//        view1.center = CGPoint(x: 150, y: 150)
        self.view.addSubview(view1)
        
        let view2 = UIView(frame: CGRect(x: 150, y: 150, width: 100, height: 100))
        view2.backgroundColor = UIColor.red
        self.view.addSubview(view2)
        
        print("子控件个数\(self.view.subviews.count)")
        //把view1放到最上面
        self.view.bringSubviewToFront(view1)
        //把view1放到最下面
        self.view.sendSubviewToBack(view1)
        //交换两个子视图
        self.view.exchangeSubview(at: 0, withSubviewAt: 1)
        //把view2放到某个索引
        self.view.insertSubview(view2, at: 1)
        //把view2放到view1上面
        self.view.insertSubview(view2, aboveSubview: view1)
        //把view2放到view1下面
        self.view.insertSubview(view2, belowSubview: view1)
        //
        
    }
}
