//
//  CurrencyViewController.swift
//  iTip3
//
//  Created by Jianyi Gao 高健一 on 12/6/16.
//  Copyright © 2016 Jianyi Gao 高健一. All rights reserved.
//

import UIKit

class CurrencyViewController: UIViewController {

    
    @IBOutlet var currencyButton: [UIButton]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func currencyTapped(sender: UIButton) {
        for button in self.currencyButton {
            button.backgroundColor = UIColor.clearColor()
        }
        let currency = sender.titleForState(.Normal)!
        if currency == "    Euro"{
            global.currencyText = "€"
        }
        else if currency == "    Chinese Yuan"{
            global.currencyText = "¥"
        }
        else if currency == "    British Pound"{
            global.currencyText = "£"
        }
        else if currency == "    Swiss Franc"{
            global.currencyText = "₣"
        }
        else if currency == "    Swedish Krona"{
            global.currencyText = "kr"
        }
        else {
            global.currencyText = "$"
        }
        (sender as UIButton).backgroundColor = UIColor.lightGrayColor()        
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
