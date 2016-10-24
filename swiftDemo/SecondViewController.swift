//
//  SecondViewController.swift
//  swiftDemo
//
//  Created by user on 16/3/2.
//  Copyright © 2016年 lvyongtao. All rights reserved.
//

import UIKit


public let WIDTH: CGFloat = UIScreen.main.bounds.size.width
public let HEIGHT: CGFloat = UIScreen.main.bounds.size.height

class SecondViewController: UIViewController ,UITextViewDelegate{
    
    var btn = UIButton()
    var Lable = UILabel()
    var imageView = UIImageView()
    var textView = UITextView()
    var pickView = UIPickerView()
    var scrollView = UIScrollView()
    
    
    var dataArray = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        self.view.backgroundColor = UIColor.red
        UI()
        // Do any additional setup after loading the view.
    }
    /**
     UI视图
     */
    func UI(){
        
        Lable = UILabel(frame: CGRect.init(x: 10, y: 30, width: WIDTH, height: 30))
        Lable.text = "这是一段文字"
        Lable.backgroundColor = UIColor.green
        Lable.textAlignment = NSTextAlignment.center;
        Lable.font = UIFont.systemFont(ofSize: 15)
        Lable.lineBreakMode = NSLineBreakMode.byClipping
//        Lable.adjustsFontSizeToFitWidth = true
        self.view.addSubview(Lable)
        
        btn = UIButton(type: .custom)
        //CGRectMake(10, 60, 50, 30)
        btn.frame = CGRect.init(x: 10, y: 60, width: 50, height: 30)
      
        btn.setTitle("按钮", for: .normal)
        let method = #selector(SecondViewController.btnClick(sender:))
        
        btn.addTarget(self, action:method, for: .touchUpInside)
        btn.backgroundColor = UIColor.green
        self.view.addSubview(btn)
        // CGRectMake(10, 100, 50, 30)
        imageView = UIImageView(frame:CGRect.init(x: 10, y: 100, width: 50, height: 30))
        imageView.backgroundColor = UIColor.yellow
        imageView.image = UIImage.init(named: "running.gif")
        imageView.contentMode = .top
        self.view.addSubview(imageView)
        
        //CGRectMake(10, 140, 50, 30)
        textView = UITextView(frame:CGRect.init(x: 10, y: 140, width: 50, height: 30))
        textView.layer.borderColor = UIColor.red.cgColor
        textView.layer.borderWidth = 1
        textView.isEditable = true
        textView.delegate = self
        self.view .addSubview(textView)
        
        dataArray  = NSArray.init(objects: "L","V","Y","O","N","G","T","A","O")
//        Float count = dataArray.count
        //CGRectMake(10,180,WIDTH,30)
        scrollView = UIScrollView(frame: CGRect.init(x: 10, y: 180, width: WIDTH, height: 30))
        //CGSizeMake(CGFloat(dataArray.count)*50, 30)

        scrollView.contentSize = CGSize.init(width: dataArray.count, height: 30)
        scrollView.backgroundColor = UIColor.yellow
        self.view.addSubview(scrollView)
        addimageView()
        
        
    }
    
    func addimageView(){
//        var i:Int = 0;
//        for i in dataArray.count{
//            var imageV = UIImageView(frame: CGRectMake((i-1)*40, 5, 40, 22.5))
//
//        }
    }
    
    
    func btnClick(sender:UIButton){
        
        self.view.backgroundColor = UIColor.white
        if #available(iOS 10.0, *) {
            Timer .scheduledTimer(withTimeInterval: 1, repeats: false, block: { (Timer) in
               self .dismiss(animated: true, completion: { 
                print("dismiss sucess ")
               })
            })
        } else {
            // Fallback on earlier versions
        }
    }
    
    
//MARK --Delegate
    func textViewDidEndEditing(_ textView: UITextView) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        textView.isEditable = !textView.isEditable;
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
