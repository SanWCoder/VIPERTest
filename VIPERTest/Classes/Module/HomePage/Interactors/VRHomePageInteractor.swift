//
//  VRHomePageInteractor.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRHomePageInteractor: NSObject {
    var dataSource: [VRHomeModel] = Array<VRHomeModel>.init()
    var presenter: VRHomePageViewPresenter?

    func numberOfItemsInSection(section _: Int) -> NSInteger {
        return dataSource.count
    }

    func dataIndexPath(indexPath: IndexPath) -> VRHomeModel? {
        if indexPath.item < 0 || indexPath.item >= dataSource.count{
            return dataSource.first
        }
        return dataSource[indexPath.item]
    }

    func loadRequestData(count:Int = 15) -> [VRHomeModel] {
        for i in 1 ... count {
            let tempData: VRHomeModel = VRHomeModel(title: "测试标题：\(i)", content: "测试内容：\(i)", iconUrl: "")
            dataSource.append(tempData)
        }
        return dataSource
    }
}
