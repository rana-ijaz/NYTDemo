//
//  Label.swift
//  NYTDemo
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import UIKit

extension UILabel {
    static func imageWithText(image: UIImage, text:String) -> NSAttributedString {
        let textAttachment = NSTextAttachment(image: image)
        let attachmentString = NSAttributedString(attachment: textAttachment)
        
        let attributedString = NSMutableAttributedString(attributedString: attachmentString)
        attributedString.append(NSAttributedString(string: " " + text))
        return attributedString
    }
}
