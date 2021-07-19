//
//  VRRouter.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRRouter: NSObject {
    func pushViewController(viewController: UIViewController, source: UIViewController, animated: Bool) {
        source.navigationController?.pushViewController(viewController, animated: animated)
    }

    func popViewController(viewController: UIViewController, animated: Bool) {
        viewController.navigationController?.popViewController(animated: animated)
    }

    func presentViewController(viewController: UIViewController, source: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        source.present(viewController, animated: animated, completion: completion)
    }

    func dismissViewController(viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        viewController.dismiss(animated: animated, completion: completion)
    }
}
