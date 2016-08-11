//
//  DTNavigationController.swift
//  DanTang
//
//  Created by 茭白 on 16/8/10.
//  Copyright © 2016年 茭白. All rights reserved.
//

import UIKit

class DTNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /// 设置导航栏标题
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = UIColor.redColor()
        navBar.tintColor = UIColor.whiteColor()
        navBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont.systemFontOfSize(20)]        // Do any additional setup after loading the view.
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
