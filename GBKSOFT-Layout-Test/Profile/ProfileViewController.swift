//
//  ProfileViewController.swift
//  GBKSOFT-Layout-Test
//
//  Created by Vitaly Plivachuk on 9/6/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    enum CellsType {
        case withLabel(title:String, value:String)
        case withSwitch(title:String, value:Bool)
    }
    
    let cells: [CellsType] = [.withLabel(title: "Username", value: "sandeepkasundra"),
                              .withLabel(title: "Email", value: "sandeepkasundra@gmail.com"),
                              .withLabel(title: "Password", value: "***********"),
                              .withSwitch(title: "Facebook", value: false),
                              .withSwitch(title: "Twitter", value: false),
                              .withLabel(title: "Google+", value: "Connect")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset.top = 30
        avatarImageView.layer.borderWidth = 2
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellInfo = cells[indexPath.row]
        let cell:UITableViewCell
        switch cellInfo {
        case .withLabel(title: let title, value: let value):
            let _cell = tableView.dequeueReusableCell(withIdentifier: "LabelProfileTableViewCell", for: indexPath) as! LabelProfileTableViewCell
            _cell.titleLabel.text = title
            _cell.valueTitle.text = value
            cell = _cell
        case .withSwitch(title: let title, value: let value):
            let _cell = tableView.dequeueReusableCell(withIdentifier: "SwitchProfileTableViewCell", for: indexPath) as! SwitchProfileTableViewCell
            _cell.titleLabel.text = title
            _cell.valueSwitch.setOn(value, animated: false)
            cell = _cell
        }
        return cell
    }
    
}
