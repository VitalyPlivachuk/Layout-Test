//
//  RegisterViewController.swift
//  GBKSOFT-Layout-Test
//
//  Created by Vitaly Plivachuk on 9/6/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButtonItem: UIBarButtonItem!
    
    var observers: [NSKeyValueObservation] = []
    
    override var preferredStatusBarStyle: UIStatusBarStyle{return .lightContent}
    
    @IBAction func backButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observers.append(nextButton.observe(\.center) { (button, change) in
            button.layer.cornerRadius = button.frame.height / 2
        })
    }
    
    deinit {
        observers = []
    }

}
