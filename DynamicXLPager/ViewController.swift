//
//  ViewController.swift
//  DynamicXLPager
//
//  Created by AFFIXUS IMAC1 on 9/29/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    let purpleInspireColor = UIColor(red:0.13, green:0.03, blue:0.25, alpha:1.0)
    var totalVC = ["One", "Two", "Three"]
    
    
    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = purpleInspireColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.purpleInspireColor
        }
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC1")
//        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2")
//        return [child_1, child_2]
        var children = [UIViewController]()
        children.append(child_1)
        for i in totalVC{
            let child = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC1") as! VC1
//            child.name = "Dyanmo"
//            child.url = menuItem.url
            children.append(child)
        }
        
        return children
    }

}

