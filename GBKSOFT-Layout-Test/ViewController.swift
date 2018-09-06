//
//  ViewController.swift
//  GBKSOFT-Layout-Test
//
//  Created by Vitaly Plivachuk on 9/5/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNavigationBar()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUpNavigationBar(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


class WhiteNavigationController:UINavigationController{
    override var preferredStatusBarStyle: UIStatusBarStyle{return .lightContent}
}
