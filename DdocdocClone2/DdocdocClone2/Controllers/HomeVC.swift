//
//  HomeVC.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var currenLocationButton: UIButton!
    @IBOutlet weak var currentTimeButton: UIButton!
    @IBOutlet weak var currentLocation: UILabel!
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var mapButtonTapped: UIButton!
    @IBOutlet weak var ad1: UIButton!
    @IBOutlet weak var ad2: UIButton!
    @IBOutlet weak var ad3: UIButton!
    
    
    var nowPage: Int = 0
    
    var adImageArray: Array<UIImage> = [
        UIImage(named: "ad1.png")!,
        UIImage(named: "ad2.png")!,
        UIImage(named: "ad3.png")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUI()
    }
    
    // MARK: - 화면 UI 설정
    func setUI() {
        searchButton.layer.cornerRadius = 15
        searchButton.layer.shadowColor = UIColor.gray.cgColor
        searchButton.layer.shadowOpacity = 0.3 // alpha값
        searchButton.layer.shadowOffset = CGSize.zero
        searchButton.layer.shadowRadius = 4 // 반경
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        searchButton.setTitle("질병, 진료과, 병원을 검색해보세요", for: .normal)
        searchButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        searchButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        
        searchButton.setTitleColor(.lightGray, for: .normal)
        
        currenLocationButton.layer.cornerRadius = 8
        currenLocationButton.layer.masksToBounds = true
        currentTimeButton.layer.cornerRadius = 8
        currentTimeButton.layer.masksToBounds = true
    }
    
    
}


