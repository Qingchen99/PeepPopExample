//
//  ViewController_ UIViewControllerPreviewingDelegate.swift
//  PeekPopExample
//
//  Created by Ray on 15/11/21.
//  Copyright © 2015年 Ray. All rights reserved.
//

import UIKit
import SafariServices

extension ViewController:UIViewControllerPreviewingDelegate {
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        return CGRectContainsPoint(peekButton.frame, location) ? SFSafariViewController(URL: NSURL(string:"http://ray.dotnetage.com")!) : nil
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        showViewController(viewControllerToCommit, sender: self)
    }
    
}
