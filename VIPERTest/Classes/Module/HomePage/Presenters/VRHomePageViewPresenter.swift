//
//  VRHomePageViewPresenter.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRHomePageViewPresenter: NSObject {
    var interactor: VRHomePageInteractor?
    var view: UIViewController?
    var wireframe: VRHomePageWireframe?

    // dataSource
    func numberOfItemsInSection(section: Int) -> NSInteger {
        return interactor?.numberOfItemsInSection(section: section) ?? 0
    }

    func dataIndexPath(indexPath: IndexPath) -> [String: Any]? {
        return interactor?.dataIndexPath(indexPath: indexPath)?.toDiction()
    }

    func loadRequestData() {
        interactor?.loadRequestData()
    }

    // eventHandle
    func didSelectItemAt(indexPath _: IndexPath? = nil, itemData _: [String: Any]? = nil) {
        wireframe?.pushMineViewController(nickName: "测试", age: 28)
    }
}
