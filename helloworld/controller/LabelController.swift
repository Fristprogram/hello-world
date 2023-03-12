//
//  LabelController.swift
//  helloworld
//
//  Created by 徐小鹏 on 2023/3/12.
//

import UIKit

class LabelController : UIViewController{
    override func viewDidLoad() {
       let label = UILabel(frame: CGRect(x: 10, y: 100, width: 300, height: 100))
        label.backgroundColor = UIColor.gray
        self.view.addSubview(label)
        label.text = "我是一段测试用的文本，非常非常的长，哈哈"
        //多行显示
        label.numberOfLines = 10
        //更改字体
//        label.font = UIFont.systemFont(ofSize: 20)
//        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.font = UIFont.systemFont(ofSize: 20,weight: .bold)
        //居中
        label.textAlignment = .center
        //文字阴影
//        label.shadowColor = UIColor.red
        //阴影偏移量
//        label.shadowOffset = CGSize(width: 2, height: 2)
        
        //富文本
        let str = NSMutableAttributedString(string: "我是一段测试用的文本，非常非常的长，哈哈")
        str.addAttribute(.font, value: UIFont.systemFont(ofSize: 50) , range: NSRange(location: 3, length: 3))
        str.addAttribute(.foregroundColor, value: UIColor.red , range: NSRange(location: 3, length: 3))
        str.addAttribute(.backgroundColor, value: UIColor.red , range: NSRange(location: 0, length: 3))
        str.addAttribute(.underlineColor, value: UIColor.blue , range: NSRange(location: 10, length: 3))
        str.addAttribute(.underlineStyle, value: 1, range: NSRange(location: 10, length: 3))
        
//        str.addAttributes([], range: <#T##NSRange#>)
        label.attributedText = str
        
//        label.attributedText = NSAttributedString(string: "我是一段测试用的文本，非常非常的长，哈哈",attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 13)])
    }
}
