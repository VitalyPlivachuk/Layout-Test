//
//  NewsViewController.swift
//  GBKSOFT-Layout-Test
//
//  Created by Vitaly Plivachuk on 9/6/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

class NewsViewController: ViewController, UITableViewDataSource {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var tableView: UITableView!
    
    var observers: [NSKeyValueObservation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons.forEach{$0.centerImageAndButton(47, imageOnTop: false)}
        buttons.forEach{$0.addTarget(self, action: #selector(changeButtonState(button:)), for: UIControlEvents.touchUpInside)}
        
    }
    
    @objc func changeButtonState(button:UIButton){
        button.isSelected = !button.isSelected
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonAction(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
    deinit {
        observers = []
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = indexPath.row % 2 == 0 ? "first" : "second"
        return tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }
    
    
}

extension UIButton {
    func centerImageAndButton(_ gap: CGFloat, imageOnTop: Bool) {
        
        guard let imageView = self.imageView,
            let titleLabel = self.titleLabel else { return }
        
        let sign: CGFloat = imageOnTop ? 1 : -1;
        let imageSize = imageView.frame.size;
        self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width, 0, 0);
        
        let titleSize = titleLabel.bounds.size;
        self.imageEdgeInsets = UIEdgeInsetsMake(gap, 0, 0, -titleSize.width);
    }
}
