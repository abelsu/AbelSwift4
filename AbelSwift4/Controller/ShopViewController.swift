//
//  ShopViewController.swift
//  AbelSwift4
//
//  Created by abelsu on 2017/9/16.
//  Copyright © 2017年 abelsu. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "商家"
        self.view.backgroundColor = UIColor.white
        self.navigationController!.navigationBar.barTintColor = UIColor(red:0.13, green:0.77, blue:0.71, alpha:1.00) //设置导航栏背景颜色

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
