//
//  ViewController.swift
//  sampleJSON
//
//  Created by 今川博司 on 2018/01/23.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
//    @IBAction func tapJSON001(_ sender: UIButton) {
//        let path = Bundle.main.path(forResource: "JSON001", ofType: "json")
//        var jsondata = NSData(contentsOfFile: path!)
//        var jsonArray = {try! JSONSerialization.jsonObject(with:Data.init(referencing:jsondata!)) as! Array<Any>
//        }
//        for dat in jsonArray() {
//            print(dat)
//        }
//    }
//
//    @IBAction func tapJSON002(_ sender: UIButton) {
//        let path = Bundle.main.path(forResource: "JOSN002", ofType: "json")
//        var jsondata = NSData(contentsOfFile:path!)
//        var jsonArray = (try! JSONSerialization.jsonObject(with: Data.init(referencing: jsondata!))) as! Array<Any>
//        for dat in jsonArray{
//            print("取得できた値:\(dat)")
//            var dic = dat as! NSDictionary
//            var name = dic["name"] as! String
//            var price = dic["price"] as! Int
//            print("\(name)のお値段は\(price)ペソです")
//        }
//    }
    
    @IBAction func tapJSON003(_ sender: UIButton) {
        let path = Bundle.main.path(forResource: "JSON003", ofType: "json")
        var jsondata = NSData(contentsOfFile: path!)
        var jsonDic = {try! JSONSerialization.jsonObject(with:Data.init(referencing:jsondata!)) as! Dictionary<String,Dictionary<String,String>>
        }
        for (plc,dsc) in jsonDic() {
            print("\(plc)では",terminator:"");
            for (item,cont) in dsc {
                print("、\(item)が「\(cont)」",terminator:"")
            }
            print("です。")
        }
    }
}

