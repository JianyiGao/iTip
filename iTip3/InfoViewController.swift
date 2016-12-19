//
//  InfoViewController.swift
//  iTip3
//
//  Created by Jianyi Gao 高健一 on 12/4/16.
//  Copyright © 2016 Jianyi Gao 高健一. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var defaultTipChoice: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        defaultTipChoice.selectedSegmentIndex = global.defaultTipPercentage;
    }
    

    
    @IBAction func tipPercentageSetting(sender: UISegmentedControl) {
        global.defaultTipPercentage = self.defaultTipChoice.selectedSegmentIndex
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
