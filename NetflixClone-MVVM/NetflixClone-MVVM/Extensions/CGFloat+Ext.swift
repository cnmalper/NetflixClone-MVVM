//
//  CGFloat+Ext.swift
//  NetflixClone-MVVM
//
//  Created by Alper Canımoğlu on 17.01.2024.
//

import UIKit

extension UIViewController {
    var screenWidth: CGFloat {
        return view.frame.size.width
    }
    
    var screenHeight: CGFloat {
        return view.frame.size.height
    }
}

extension UIView {
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
}
