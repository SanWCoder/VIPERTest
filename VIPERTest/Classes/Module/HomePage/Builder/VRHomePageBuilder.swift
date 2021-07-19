//
//  VRHomePageBuilder.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRHomePageBuilder: NSObject {
    class func storyboardViewController(Interactor: VRHomePageInteractor, router: VRRouter) -> UIViewController {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let view = sb.instantiateViewController(identifier: "VRHomePageViewController")
//        NSAssert([view isKindOfClass:[ZIKTNoteListViewController class]], nil);
        buildView(view: view, Interactor: Interactor, router: router)
        return view
    }

    class func viewController(Interactor: VRHomePageInteractor, router: VRRouter) -> UIViewController {
        let view = VRHomePageViewController()
        buildView(view: view, Interactor: Interactor, router: router)
        return view
    }

    class func buildView(view: UIViewController, Interactor _: VRHomePageInteractor, router: VRRouter) {
        let presenter: VRHomePageViewPresenter = VRHomePageViewPresenter()
        let interactor: VRHomePageInteractor = VRHomePageInteractor()
        interactor.presenter = presenter

        let wireframe = VRHomePageWireframe()
        wireframe.view = view
        wireframe.router = router

        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        //
        (view as? VRHomePageViewController)?.presenter = presenter
    }
}
