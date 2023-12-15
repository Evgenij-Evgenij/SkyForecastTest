//
//  ViewController+Alert.swift
//  SkyForecast
//
//  Created by Hellen Soloviy on 3/18/19.
//  Copyright © 2019 HellySolovii. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showError(_ message: String) {
        let alert = UIAlertController(title: "Error occured", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel) { _ in
            fatalError()
        })
        
        DispatchQueue.main.sync {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

//extension UIStackView {
//    func addSeparator (size: CGFloat) {
//        let view = UIView()
//        
//        view.translatesAutoresizingMaskIntoConstraints = false
//        if axis == .vertical {
//            view.heightAnchor.constraint(equalToConstant: size).isActive = true
//        } else {
//            view.widthAnchor.constraint(equalToConstant: size).isActive = true
//        }
//        
//        addArrangedSubview(view)
//    }
//}
