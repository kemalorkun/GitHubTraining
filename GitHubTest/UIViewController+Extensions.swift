//
//  UIViewController+Extensions.swift
//  GitHubTest
//
//  Created by Nazmi Yavuz on 30.05.2022.
//

import UIKit

extension UIViewController {
    
    private func showAlert(printText: String) {
        let alert = UIAlertController(title: "Warning", message: nil, preferredStyle: .alert)
        let saveButton = UIAlertAction(title: "Save", style: .default) { _ in
            print("DEBUG: \(printText)")
        }
        alert.addAction(saveButton)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
