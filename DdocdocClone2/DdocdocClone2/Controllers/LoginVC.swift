//
//  LoginVC.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit
import Alamofire
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser


//struct userData {
//    let email: String
//    let accessToken: String
//    let name: String
//}
//
//var userdata = userData(email: String, accessToken: String, name: String)

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var kakaoLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.placeholder = "이메일 주소 입력"
        passwordTextField.placeholder = "비밀번호 확인"
    }
    
    @IBAction func kakaoLoginButtonTapped(_ sender: UIButton) {
        
        // 카카오톡 설치 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
        } else {
            // 카톡 없으면 웹 브라우저를 통해서 카카오톡 계정으로 로그인
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")

                        //do something
                        _ = oauthToken
                    }
                }
        }
        
        
//        func getUserData() {
//            UserApi.shared.me { [self] user, error in
//                if let error = error {
//                    print(error)
//                } else {
//
//                    guard let token = oauthToken?.accessToken, let email = user?.kakaoAccount?.email,
//                          let name = user?.kakaoAccount?.profile?.nickname else{
//                              print("token/email/name is nil")
//                              return
//                          }
//
//                    self.userdata.email = email
//                    self.accessToken = token
//                    self.name = name
//
//                    //서버에 이메일/토큰/이름 보내주기
//                }
//            }
//
//
//        }
        
    }
    
}
