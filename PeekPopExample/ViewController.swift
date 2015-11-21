//
//  ViewController.swift
//  PeekPopExample
//
//  Created by Ray on 15/11/21.
//  Copyright © 2015年 Ray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var peekButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if traitCollection.forceTouchCapability == .Available {
            registerForPreviewingWithDelegate(self, sourceView: view)
        }
    }

}

