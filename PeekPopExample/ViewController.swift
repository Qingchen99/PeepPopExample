//
//  ViewController.swift
//  PeekPopExample
//
//  Created by Qingchen on 16/6/21.
//  Copyright © 2016年 Qingchen. All rights reserved.
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

