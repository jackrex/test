//
//  OpenNotiSettingViewController.swift
//  test
//
//  Created by jackrex on 2019/4/4.
//  Copyright © 2019 Thanos. All rights reserved.
//

import UIKit

public typealias OpenNotiSettingClickAction = (Int) -> Void


class OpenNotiSettingViewController: UIViewController {

    @IBOutlet weak var oImageView: UIImageView!
    @IBOutlet weak var oTitleLabel: UILabel!
    @IBOutlet weak var oSubTitle: UILabel!
    
    var clickAction: OpenNotiSettingClickAction!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func openNotiAction(_ sender: Any) {
        clickAction(1)
    }
    
    
    @IBAction func closeAction(_ sender: Any) {
        clickAction(2)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
