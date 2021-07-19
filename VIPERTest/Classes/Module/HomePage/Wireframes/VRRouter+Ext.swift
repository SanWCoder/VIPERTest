//
//  VRRouter+Ext.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/15.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit
extension VRRouter{
    func viewForCreatingMineWithDelegate(nickName:String,age:Int) -> UIViewController {
        let vc = VRMineViewController.init()
        VRMineBuilder.buildView(view: vc, Interactor: VRMineInteractor.init(), router: VRRouter.init(),nickName: nickName,age: age)
        return vc
    }
}
