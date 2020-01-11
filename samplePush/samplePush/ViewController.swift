//
//  ViewController.swift
//  samplePush
//
//  Created by Takato Nakamatsu on 2019/12/10.
//  Copyright © 2019 Takato Nakamatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func notifyTapped(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "tsun"
        content.body = "mother fucker"
        content.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

        let request = UNNotificationRequest(identifier: "notification", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

