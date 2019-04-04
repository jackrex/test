//
//  FirstViewController.swift
//  test
//
//  Created by jackrex on 2019/4/4.
//  Copyright © 2019 Thanos. All rights reserved.
//

import UIKit
import UserNotifications
import PopupDialog

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let a = "xxx".squareFormat()
        print(a)
        
        
        UNUserNotificationCenter.current().getNotificationSettings { (set) in
            
            if set.authorizationStatus == UNAuthorizationStatus.notDetermined{
                print("推送不允许")
                self.clickAction("")
            }else if set.authorizationStatus == UNAuthorizationStatus.denied{
                print("推送不允许")
                self.clickAction("")
            }else if set.authorizationStatus == UNAuthorizationStatus.authorized{
                print("推送允许")
                
            }
        }
        
        
        
        
    }
    
    
    
    @IBAction func clickAction(_ sender: Any) {
        
        let ratingVC = OpenNotiSettingViewController(nibName: "OpenNotiSettingViewController", bundle: nil)
        
        ratingVC.clickAction = { index in
            
            print(index)
            let url = URL.init(string: UIApplication.openSettingsURLString)!
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            

        }
        let popUp = PopupDialog(viewController: ratingVC, buttonAlignment: .horizontal, transitionStyle: .bounceUp, preferredWidth: 300, tapGestureDismissal: true, panGestureDismissal: false, hideStatusBar: true) {
            
        }
        let buttonOne = CancelButton(title: "Confirm") {
           
            
            
        }
        popUp.addButton(buttonOne)
        self.present(popUp, animated: true, completion: nil)
        
    }
    

}

