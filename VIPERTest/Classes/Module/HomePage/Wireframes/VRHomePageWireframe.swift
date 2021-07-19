//
//  VRHomePageWireframe.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRHomePageWireframe: NSObject {
    var view: UIViewController?
    var router: VRRouter?

    func pushMineViewController(nickName: String, age: Int) {
        let vc = router?.viewForCreatingMineWithDelegate(nickName: nickName, age: age)
        if vc != nil, view != nil {
            router?.pushViewController(viewController: vc!, source: view!, animated: true)
        }
    }
}
