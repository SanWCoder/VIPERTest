//
//  VRHomePageViewCell.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRHomePageViewCell: UICollectionViewCell {
    var clickHandle: ((_ itemData: [String: Any]?) -> Void)?
    lazy var titleLab: UILabel = {
        let titleLab = UILabel()
        titleLab.textColor = UIColor.black
        titleLab.font = UIFont.systemFont(ofSize: 16)
        return titleLab
    }()

    lazy var contentLab: UILabel = {
        let contentLab = UILabel()
        contentLab.textColor = UIColor.gray
        contentLab.font = UIFont.systemFont(ofSize: 16)
        return contentLab
    }()

    lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "settingVoiceDef"))
        return imageView
    }()

    lazy var confimBtn: UIButton = {
        let confimBtn = UIButton(type: .custom)
        confimBtn.setTitle("跳转", for: .normal)
        confimBtn.setTitleColor(UIColor.white, for: .normal)
        confimBtn.backgroundColor = UIColor.red
        confimBtn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        confimBtn.addTarget(self, action: #selector(btnClick(sender:)), for: .touchUpInside)
        confimBtn.layer.cornerRadius = 10
        confimBtn.layer.masksToBounds = true
        return confimBtn
    }()

    class func homePageViewCell(indexPath: IndexPath, collectionView: UICollectionView) -> VRHomePageViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: VRHomePageViewCell.self), for: indexPath)
        return cell as! VRHomePageViewCell
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var itemData: [String: Any]? {
        didSet {
            addData()
            addLayout()
        }
    }

    func addSubviews() {
        contentView.addSubview(titleLab)
        contentView.addSubview(contentLab)
        contentView.addSubview(imageView)
        contentView.addSubview(confimBtn)
    }

    func addData() {
        let title: String? = itemData?["title"] as? String
        let content: String? = itemData?["content"] as? String
//        let url: String? = itemData?["content"] as? String
        titleLab.text = title
        contentLab.text = content
    }

    func addLayout() {
        let margin: CGFloat = 12
        imageView.frame = CGRect(x: margin, y: margin, width: margin * 5, height: margin * 5)
        titleLab.frame = CGRect(x: imageView.frame.maxX + margin, y: margin, width: contentView.frame.width - (imageView.frame.maxX + margin * 2), height: margin * 2)
        contentLab.frame = CGRect(x: imageView.frame.maxX + margin, y: imageView.frame.maxY - margin * 2, width: contentView.frame.width - (imageView.frame.maxX + margin * 2), height: margin * 2)
        confimBtn.frame = CGRect.init(x: contentView.frame.width - 80 - margin, y: 0, width: 80, height: 40)
        confimBtn.center.y = imageView.center.y
    }

    @objc func btnClick(sender _: UIButton) {
        if clickHandle != nil {
            clickHandle!(itemData)
        }
    }
}
