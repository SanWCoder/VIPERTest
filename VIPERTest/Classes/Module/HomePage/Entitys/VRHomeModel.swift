//
//  VRHomeModel.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRHomeModel: NSObject {
    // 标题
    var title: String?
    // 内容
    var content: String?
    // 图标
    var iconUrl: String?

    override init() {
        super.init()
    }

    // 快速初始化
    init(title: String, content: String, iconUrl: String) {
        super.init()
        self.title = title
        self.content = content
        self.iconUrl = iconUrl
    }
    
    func toDiction() -> Dictionary<String,Any> {
        return ["title":title ?? "","content":content ?? "","iconUrl":iconUrl ?? ""]
    }
}
