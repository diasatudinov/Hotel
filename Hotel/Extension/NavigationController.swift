//
//  NavigationController.swift
//  Hotel
//
//  Created by Atudinov Dias on 06.09.2023.
//

import Foundation
import UIKit

extension UINavigationController {
    
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        navigationBar.topItem?.backButtonDisplayMode = .minimal
        navigationBar.tintColor = .black
    }
    
}


