//
//  DTMianViewController.swift
//  DanTang
//
//  Created by 茭白 on 16/8/10.
//  Copyright © 2016年 茭白. All rights reserved.
//

import UIKit

class DTMianViewController: DTBaseViewController {

    var tableview :UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.navigationItem.title="单糖"
        [self .setupListHeaderView()];
    }
    //顶部试图 其实是可以封装的
    func setupListHeaderView() {
        let headerView = UIView(frame: CGRectMake(0, 100, self.view.bounds.size.width,30))
        //headerView.frame = CGRectMake(0, 0, self.view.frame.size.width, 30);
        /* 另外一种写法
         UITableView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
         */
        headerView.backgroundColor=UIColor.greenColor()
        self.view.addSubview(headerView)
        
    }
    func setupTableView() {
        tableview=UITableView(frame: CGRectMake(0, 30, self.view.bounds.size.width, self.view.bounds.size.height))
        
        
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
