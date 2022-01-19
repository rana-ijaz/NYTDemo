//
//  ImageView.swift
//  NYTDemo
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import UIKit


extension UIImageView {
    
    func loadImageWithURLString(urlString: String, completion: @escaping () -> Void) {
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { (imageData, resp, error) in
                completion()
                if error != nil || imageData == nil {
                    return
                }
                DispatchQueue.main.async {
                    self.image = UIImage(data: imageData!)
                }
            }.resume()
        }
    }
}
