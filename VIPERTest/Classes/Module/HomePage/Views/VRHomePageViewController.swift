//
//  VRHomePageViewController.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

import UIKit

class VRHomePageViewController: UIViewController {
    var presenter: VRHomePageViewPresenter?
    lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.itemSize = CGSize(width: view.frame.width, height: 84)
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 64, width: view.frame.width, height: view.frame.height - 64), collectionViewLayout: flowLayout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.clear
        collectionView.register(VRHomePageViewCell.self, forCellWithReuseIdentifier: String(describing: VRHomePageViewCell.self))
        if #available(iOS 11.0, *) {
            collectionView.contentInsetAdjustmentBehavior = .never
        } else {
            automaticallyAdjustsScrollViewInsets = false
        }
        // 延迟scrollView上子视图的响应，所以当直接拖动UISlider时，如果此时touch时间在150ms以内，UIScrollView会认为是拖动自己，从而拦截了event，导致UISlider接收不到滑动的event
        collectionView.delaysContentTouches = false
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter?.loadRequestData()
        view.backgroundColor = UIColor.white
        view.addSubview(collectionView)
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle {
            return .darkContent
    }
}

extension VRHomePageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.numberOfItemsInSection(section: section) ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = VRHomePageViewCell.homePageViewCell(indexPath: indexPath, collectionView: collectionView)
        cell.itemData = presenter?.dataIndexPath(indexPath: indexPath)
        cell.clickHandle = { [weak self] itemData in
            self?.presenter?.didSelectItemAt(indexPath: indexPath, itemData: itemData)
        }
        return cell
    }

    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.didSelectItemAt(indexPath: indexPath)
    }
}
