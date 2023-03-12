//
//  UiViewControll.swift
//  helloworld
//
//  Created by 徐小鹏 on 2023/3/12.
//

import UIKit
class UiViewControll : UIViewController ,UITextFieldDelegate{
    
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
        
        
        initButton()
        
        initTextField()
        
    }
    
    func initTextField(){
        let textField = UITextField(frame: CGRect(x: 20, y: 50, width: 200, height: 40))
//        textField.backgroundColor = UIColor.gray
        //边框
        textField.borderStyle = .roundedRect
        //占位符
        textField.placeholder = "请输入账号"
        //颜色
        textField.textColor = UIColor.blue
        //对齐方式
        textField.textAlignment = .center
        //背景图片
        textField.background = UIImage(named: "repayment_ic_spin")
        //清空按钮
        textField.clearButtonMode = .always
        //左侧或右侧自定义view
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        view1.backgroundColor = UIColor.blue
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        label.text = "+86"
        label.textColor = UIColor.white
        view1.addSubview(label)
        textField.leftView = view1
        textField.leftViewMode = .always
        //textField 有很多回调，通过代理方式传给我们
        textField.delegate = self
        //
        
        
        
        self.view.addSubview(textField)
    }
    //点击清除按钮
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        //return false 失效
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
//失去焦点
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("将要编辑")
        return true
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("开始编辑")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("将要退出编辑")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("已经退出")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("将要改变")
    
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print(textField.text)
    }
    func initButton(){
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 100, y: 300, width: 100, height: 100)
        btn.backgroundColor = UIColor.gray
        btn.setTitle("点我", for: .normal)
        btn.setTitle("点到了", for: .highlighted)
        btn.setTitle("不能点", for: .disabled)
       
        btn.isEnabled = true
        
//        btn.setImage(UIImage(named: "repayment_ic_spin"),for: .normal)
        
        btn.setBackgroundImage(UIImage(named: "repayment_ic_spin"),for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        btn.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    //所有事件方法都要带 @objc
    @objc func buttonClick(){
        print("被点击了")
    }
}
