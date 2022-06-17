//
//  ChartVC.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class ChartVC: UIViewController {

    @IBOutlet weak var seeDoctorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seeDoctorButton.layer.cornerRadius = 8
        seeDoctorButton.clipsToBounds = true
    }

    @IBAction func seeDocorButtonTapped(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 0
    }
    
    // MARK: - 로그인 페이지 올라오도록 test
    func showLoginPage() {
        let slideVC = LoginVC()
        slideVC.modalPresentationStyle = .custom
        slideVC.transitioningDelegate = self
        self.present(slideVC, animated: true, completion: nil)
    }
    
    
    @IBAction func showLoginButtonTapped(_ sender: UIButton) {
        showLoginPage()
    }
    
}

// MARK: - 로그인 하프뷰를 보여주는 화면전환 delegate
extension ChartVC: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        LoginPresentationController(presentedViewController: presented, presenting: presenting)
    }
}
