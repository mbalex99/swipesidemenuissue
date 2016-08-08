//
//  ViewController.swift
//  SwipeSideMenuIssue
//
//  Created by Maximilian Alexander on 8/8/16.
//  Copyright © 2016 Epoque. All rights reserved.
//

import UIKit
import SideMenu

class MainViewController: UIViewController {

    let menuButton = UIButton()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        SideMenuManager.menuLeftSwipeToDismissGesture?.enabled = false
        SideMenuManager.menuRightSwipeToDismissGesture?.enabled = false
        
        print("is left nil: \(SideMenuManager.menuLeftSwipeToDismissGesture == nil)")
        print("is right nil: \(SideMenuManager.menuRightSwipeToDismissGesture == nil)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.redColor()
        view.addSubview(menuButton)
        
        SideMenuManager.menuLeftNavigationController = MenuViewController()
        SideMenuManager.menuLeftSwipeToDismissGesture?.enabled = false
        SideMenuManager.menuRightSwipeToDismissGesture?.enabled = false
        
        print("is left nil: \(SideMenuManager.menuLeftSwipeToDismissGesture == nil)")
        print("is right nil: \(SideMenuManager.menuRightSwipeToDismissGesture == nil)")
        
        menuButton.setTitle("OPEN", forState: .Normal)
        menuButton.frame = CGRectMake(0, 0, 200, 50)
        menuButton.backgroundColor = UIColor.blackColor()
        menuButton.center = view.center
        
        menuButton.addTarget(self, action: #selector(MainViewController.menuPressed), forControlEvents: .TouchUpInside)
        
    }
    
    func menuPressed(){
        presentViewController(SideMenuManager.menuLeftNavigationController!, animated: true, completion: nil)
        SideMenuManager.menuLeftSwipeToDismissGesture?.enabled = false
        SideMenuManager.menuRightSwipeToDismissGesture?.enabled = false
        
        print("is left nil: \(SideMenuManager.menuLeftSwipeToDismissGesture == nil)")
        print("is right nil: \(SideMenuManager.menuRightSwipeToDismissGesture == nil)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


class MenuViewController : UISideMenuNavigationController {
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        SideMenuManager.menuLeftSwipeToDismissGesture?.enabled = false
        SideMenuManager.menuRightSwipeToDismissGesture?.enabled = false
        
        print("is left nil: \(SideMenuManager.menuLeftSwipeToDismissGesture == nil)")
        print("is right nil: \(SideMenuManager.menuRightSwipeToDismissGesture == nil)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blueColor()
    }
}
