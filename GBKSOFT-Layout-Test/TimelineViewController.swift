//
//  TimelineViewController.swift
//  GBKSOFT-Layout-Test
//
//  Created by Vitaly Plivachuk on 9/6/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UICollectionViewDataSource, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView?
    
    @IBOutlet weak var dividerView: UIView!
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellIdentifier", for: indexPath)
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dividerView.layer.cornerRadius = dividerView.frame.height / 2
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineTableViewCell", for: indexPath) as! TimelineTableViewCell
        cell.userImages.forEach{$0.isHidden = true}
        cell.userImages.enumerated().forEach{offset, imageView in
            guard offset < indexPath.row else {return}
            imageView.isHidden = false
            cell.isActiveView.backgroundColor = indexPath.row % 2 == 0
                ? UIColor(red: 9/255, green: 200/255, blue: 99/255, alpha: 1)
                : UIColor(red: 255/255, green: 45/255, blue: 85/255, alpha: 1)
        }
        
        return cell
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
