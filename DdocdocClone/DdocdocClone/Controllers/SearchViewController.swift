//
//  SearchViewController.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/13/22.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var currenLocationButton: UIButton!
    @IBOutlet weak var currentTimeButton: UIButton!
    @IBOutlet weak var currentLocation: UILabel!
    @IBOutlet weak var currentTime: UILabel!
    
    @IBOutlet weak var mapButtonTapped: UIButton!
    @IBOutlet weak var adBannerCollectionView: UICollectionView!
    
    // 현재 페이지 체크 변수
    var nowPage: Int = 0
    
    // 광고배너 이미지 배열
    var adImageArray: Array<UIImage> = [
        UIImage(named: "ad1.png")!,
        UIImage(named: "ad2.png")!,
        UIImage(named: "ad3.png")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adBannerCollectionView.delegate = self
        adBannerCollectionView.dataSource = self
        bannerTimer()
        

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
    
    // MARK: - 광고배너 자동스크롤 메서드
    // 4초마다 이미지 넘기는 메서드
    func bannerTimer() {
        let _: Timer = Timer.scheduledTimer(withTimeInterval: 4, repeats: true) { (Timer) in
            self.bannerMove()
        }
    }
    
    // 배너 움직이는 메서드
    func bannerMove() {
        // 현재페이지가 마지막 페이지일 경우
        if nowPage == adImageArray.count-1 {
        // 맨 처음 페이지로 돌아감
            adBannerCollectionView.scrollToItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, at: .right, animated: true)
            nowPage = 0
            return
        }
        // 다음 페이지로 전환
        nowPage += 1
        adBannerCollectionView.scrollToItem(at: NSIndexPath(item: nowPage, section: 0) as IndexPath, at: .right, animated: true)
    }
    

}


// MARK: - 광고 자동배너 스크롤 컬렉션뷰 설정
extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //컬렉션뷰 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return adImageArray.count
    }
    
    //컬렉션뷰 셀 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = adBannerCollectionView.dequeueReusableCell(withReuseIdentifier: "AdBannerCell", for: indexPath) as! AdBannerCell
        cell.imgView.image = adImageArray[indexPath.row]
//        cell.layer.cornerRadius = 8
//        cell.layer.masksToBounds = true
//        cell.imgView.image =
//        cell.imgView.contentMode = .scaleAspectFit
        return cell
    }
    
    // UICollectionViewDelegateFlowLayout 상속
    //컬렉션뷰 사이즈 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: adBannerCollectionView.frame.size.width  , height:  adBannerCollectionView.frame.height)
    }
    
    //컬렉션뷰 감속 끝났을 때 현재 페이지 체크
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
}
