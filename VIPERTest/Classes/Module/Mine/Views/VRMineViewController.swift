//
//  VRMineViewController.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/15.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRMineViewController: UIViewController {
    var presenter: VRMinePresenter?

    lazy var ageLab: UILabel = {
        let ageLab = UILabel()
        ageLab.textColor = UIColor.gray
        ageLab.font = UIFont.systemFont(ofSize: 16)
        return ageLab
    }()

    lazy var nikenameBtn: UIButton = {
        let nikenameBtn = UIButton(type: .custom)
        nikenameBtn.setTitleColor(UIColor.black, for: .normal)
        nikenameBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return nikenameBtn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        view.addSubview(ageLab)
        view.addSubview(nikenameBtn)
        nikenameBtn.frame = CGRect(x: 12, y: 64, width: view.frame.width - 24, height: 40)
        ageLab.frame = CGRect(x: 12, y: nikenameBtn.frame.maxY + 12, width: view.frame.width - 24, height: 40)
        nikenameBtn.setTitle(presenter?.getUserName(), for: .normal)
        ageLab.text = "\(presenter?.getAge() ?? 0)岁"
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}
