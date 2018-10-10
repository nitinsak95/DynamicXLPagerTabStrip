//
//  VC2.swift
//  DynamicXLPager
//
//  Created by AFFIXUS IMAC1 on 9/29/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class VC2: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Branches")
    }

}
