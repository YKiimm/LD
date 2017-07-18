//
//  Model.swift
//  LD1
//
//  Created by YKiimm on 11/07/2017.
//  Copyright © 2017 yonghwankim's macbook. All rights reserved.
//

import UIKit

class Model: NSObject {
    
    var text: String
    var image: UIImage
    var createdDate: Date
    
    init(text: String, image: UIImage, createdDate: Date) {
        self.text = text
        self.image = image
        self.createdDate = createdDate
    }
}
