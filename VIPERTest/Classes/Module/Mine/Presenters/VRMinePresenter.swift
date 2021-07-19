//
//  VRMinePresenter.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/15.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRMinePresenter: NSObject {
    var interactor: VRMineInteractor?
    var wireframe: VRMineWireframe?
    func getUserName() -> String? {
        interactor?.userName
    }

    func getAge() -> Int? {
        interactor?.age
    }
}
