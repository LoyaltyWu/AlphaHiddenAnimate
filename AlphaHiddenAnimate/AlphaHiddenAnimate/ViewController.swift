//
//  ViewController.swift
//  AlphaHiddenAnimate
//
//  Created by Wu on 2017/8/29.
//  Copyright © 2017年 Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PinkView: UIView!
    @IBOutlet weak var ChocolateView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        isChoco = false
        ChocolateView.isHidden = true
        ChocolateView.alpha = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var isChoco:Bool = false
    @IBAction func click(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            if (self.isChoco == false){
                self.ChocolateView.isHidden = false
                self.ChocolateView.alpha = 1
                self.PinkView.alpha = 0
            }
            else{
                self.PinkView.isHidden = false
                self.ChocolateView.alpha = 0
                self.PinkView.alpha = 1
            }
        }) { (returnBack) in
            if (self.isChoco == false){
                self.PinkView.isHidden = true
                self.isChoco = true
            }
            else{
                self.ChocolateView.isHidden = true
                self.isChoco = false
            }
        }
    }
    
    @IBAction func YellowBtnClick(_ sender: Any) {
        print("Yellow Btn Clicked.")
    }
    
    @IBAction func PinkBtnClick(_ sender: Any) {
        print("Pink Btn Clicked.")
    }
    
}

