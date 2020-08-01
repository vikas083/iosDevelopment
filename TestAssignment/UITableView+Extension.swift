//
//  UITableViewExtension.swift
//  ContactApp
//
//  Created by Pawan Kumar  on 19/08/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func registerCell(nibName: String, bundle: Bundle? = Bundle.main, forCellWithReuseIdentifier: String? = nil) {
        let cellWithReuseIdentifier = forCellWithReuseIdentifier ?? nibName
        self.register(UINib(nibName: nibName, bundle: bundle), forCellReuseIdentifier: cellWithReuseIdentifier)
    }
    
    func indexPath(forItem: AnyObject) -> IndexPath? {
        let itemPosition: CGPoint = forItem.convert(CGPoint.zero, to: self)
        return self.indexPathForRow(at: itemPosition)
    }
}

extension UITableViewCell {
    class var reusableIdentifier: String {
        return "\(self)"
    }
    
    var indexPath: IndexPath? {
        if let tblVw = self.superview as? UITableView {
            return tblVw.indexPath(for: self)
        }
        return nil
    }
}

extension UIView {
    
    func viewWithShadow() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 10.0
        self.layer.masksToBounds = false
    }
    
}
