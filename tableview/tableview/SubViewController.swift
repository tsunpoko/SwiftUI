//
//  SubViewController.swift
//  tableview
//
//  Created by Takato Nakamatsu on 2019/12/05.
//  Copyright © 2019 Takato Nakamatsu. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    @IBOutlet weak var selectedButton: UIButton!
    var selectedTitle = "fuck"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        selectedButton.setTitle(selectedTitle, for: .normal)
    }
}
