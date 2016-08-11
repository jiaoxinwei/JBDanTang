//
//  DTRootTabBarViewController.swift
//  DanTang
//
//  Created by 茭白 on 16/8/10.
//  Copyright © 2016年 茭白. All rights reserved.
//

import UIKit

class DTRootTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //下面字体颜色
        tabBar.tintColor = UIColor(red: 245 / 255, green: 80 / 255, blue: 83 / 255, alpha: 1.0)
        //创建tableBar的子视图
        
        [self .creatSuberViewController()];
        // Do any additional setup after loading the view.
    }

    func creatSuberViewController()  {
        let mianVC  = DTMianViewController ()
        let item1 : UITabBarItem = UITabBarItem (title: "单糖", image: UIImage(named: "TabBar_home_23x23_"), selectedImage: UIImage(named: "TabBar_home_23x23_selected"))
        let mainNav = DTNavigationController(rootViewController:mianVC)
        
        mainNav.tabBarItem = item1
        
        let itemVC = DTItemViewController ()
        let item2 : UITabBarItem = UITabBarItem (title: "单品", image: UIImage(named: "TabBar_gift_23x23_"), selectedImage: UIImage(named: "TabBar_gift_23x23_selected"))
        let  itemNav = DTNavigationController(rootViewController:itemVC)
        
        itemNav.tabBarItem = item2
        
        let categoryVC = DTCategoryViewController ()
        let item3 : UITabBarItem = UITabBarItem (title: "分类", image: UIImage(named: "TabBar_category_23x23_"), selectedImage: UIImage(named: "TabBar_category_23x23_selected"))
        let  categoryNav = DTNavigationController(rootViewController:categoryVC)
        
        categoryNav.tabBarItem = item3
        
        let myVC = DTMyViewController ()
        let item4 : UITabBarItem = UITabBarItem (title: "我", image: UIImage(named: "TabBar_me_boy_23x23_"), selectedImage: UIImage(named: "TabBar_me_boy_23x23_selected"))
        let  myNav = DTNavigationController(rootViewController:myVC)
        
        myNav.tabBarItem = item4
        
        let tabArray = [mainNav,itemNav,categoryNav,myNav]
        self.viewControllers = tabArray

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
