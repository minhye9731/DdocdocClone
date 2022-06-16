//
//  LoginViewController.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/16/22.
//

import UIKit
import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser


class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var kakaoButton: UIButton!
    @IBOutlet weak var naverButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kakaoButton.layer.cornerRadius = kakaoButton.bounds.height / 2
        kakaoButton.clipsToBounds = true
        naverButton.layer.cornerRadius = naverButton.bounds.height / 2
        naverButton.clipsToBounds = true
        facebookButton.layer.cornerRadius = facebookButton.bounds.height / 2
        facebookButton.clipsToBounds = true
        appleButton.layer.cornerRadius = appleButton.bounds.height / 2
        appleButton.clipsToBounds = true
        
        emailTextField.placeholder = "이메일 주소 입력"
        passwordTextField.placeholder = "비밀번호 확인"
        
        emailTextField.layer.borderColor = UIColor.white.cgColor // 적용안됨
    }
    
    @IBAction func email(_ sender: UITextField) {
        if sender.text?.isEmpty ?? true {
            // placeholder 내용은 여기에
            emailTextField.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
            emailTextField.textColor = .lightGray
        } else {
            // 사용자가 타이핑을 시작할 때
            emailTextField.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            emailTextField.textColor = .black
        }
    }
    
    
    // MARK: - 카카오톡으로  로그인
    @IBAction func kakaoButtonTapped(_ sender: UIButton) {
        
        // 카카오톡 설치 여부 확인
        if UserApi.isKakaoTalkLoginAvailable() {
            // 카톡 설치 O -> 카톡 로그인(즉, api 호출 결과를 클로저로 전달)
            loginWithApp()
            
        } else {
            // 카카 설치 X -> 웹브라우저로 카카오톡 계정 로그인
            loginWithWeb()
        }
    }
}



extension LoginViewController {
    
    // 카톡 앱으로 로그인
    func loginWithApp() {
        UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
            if let error = error {
                print(error)
            } else {
                print("카카오 톡으로 로그인 성공")
                // 여기에 로그인 관련 메소드 추가 가능
                _ = oauthToken
            }
        }
    }
    
    // 카톡 웹으로 로그인
    func loginWithWeb() {
        UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
            if let error = error {
                print(error)
            } else {
                print("카카오 톡으로 로그인 성공")
                
                // 여기에  관련 메소드 추가 가능
                _ = oauthToken
                
            }
        }
    }
}
