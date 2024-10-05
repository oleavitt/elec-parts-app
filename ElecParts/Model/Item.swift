//
//  Item.swift
//  ElecParts
//
//  Created by Oren Leavitt on 10/5/24.
//

import Foundation
import SwiftData

@Model
class Item {
    var title: String
    var detail: String
    
    init(title: String = "",
         detail: String = "") {
        self.title = title
        self.detail = detail
    }
}
