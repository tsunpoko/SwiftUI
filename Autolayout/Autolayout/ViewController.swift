//
//  ViewController.swift
//  Autolayout
//
//  Created by Takato Nakamatsu on 2019/12/12.
//  Copyright © 2019 Takato Nakamatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "snoopdogg"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    let descriptionTextView: UITextView = {
       let textView = UITextView()
        textView.text = "Join us todau in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(iconImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
    }
    
    private func setupLayout() {
        iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        iconImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

