//
//  ViewController.swift
//  anotherTinder
//
//  Created by Takato Nakamatsu on 2019/12/02.
//  Copyright © 2019 Takato Nakamatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var signInFacebookButton: UIButton!
    @IBOutlet weak var signInGoogleButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var termsOfServiceLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    

    func setupUI() {
        
        setupHeaderTitle()
        setupOrLabel()
        setupTermsLabel()
        setupGoogleButton()
        setupFacebookButton()
        setupCreateAccountButton()
        
    }
}

