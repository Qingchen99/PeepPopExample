//
//  ViewController_ UIViewControllerPreviewingDelegate.swift
//  PeekPopExample
//
//  Created by Qingchen on 16/6/21.
//  Copyright © 2016年 Qingchen. All rights reserved.
//

import UIKit
import SafariServices

extension ViewController:UIViewControllerPreviewingDelegate {
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        return CGRectContainsPoint(peekButton.frame, location) ? SFSafariViewController(URL: NSURL(string:"http://www.baidu.com")!) : nil
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        showViewController(viewControllerToCommit, sender: self)
    }
    
}
