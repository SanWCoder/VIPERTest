//
//  VRMineBuilder.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/15.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRMineBuilder: NSObject {
    
    class func buildView(view: UIViewController, Interactor _: VRMineInteractor, router: VRRouter,nickName:String,age:Int) {
        let presenter: VRMinePresenter = VRMinePresenter()
        let interactor: VRMineInteractor = VRMineInteractor()
        interactor.userName = nickName
        interactor.age = age
//        interactor.presenter = presenter

        let wireframe = VRMineWireframe()
//        wireframe.view = view
//        wireframe.router = router

//        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        //
        (view as? VRMineViewController)?.presenter = presenter
    }
}
