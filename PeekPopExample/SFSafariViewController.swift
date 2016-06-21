//
//  DetailViewController.swift
//  PeekPopExample
//
//  Created by Qingchen on 16/6/21.
//  Copyright © 2016年 Qingchen. All rights reserved.
//

import UIKit
import SafariServices

extension SFSafariViewController {
    
    override public func previewActionItems() -> [UIPreviewActionItem] {
        
        let deleteAction =  UIPreviewAction(title: "删除",
            style: UIPreviewActionStyle.Destructive,
            handler: {
                (previewAction,viewController) in
                
                NSLog("Delete")
                
        })
        
        let doneAction = UIPreviewAction(title: "完成",
            style: UIPreviewActionStyle.Default,
            handler: {
                (previewActin, viewController) in
                
                NSLog("Done")
        })
        
        return [doneAction, deleteAction]
    }
    
}
