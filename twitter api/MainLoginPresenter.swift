//
//  MainViewPresenter.swift
//  ViewDemo
//
//  Created by Oleg Chernyshenko on 9/01/18.
//  Copyright © 2018 Tugboat. All rights reserved.
//

import Foundation
import UIKit
import TwitterKit
class MainLoginPresenter {
    func login(){
        TWTRTwitter.sharedInstance().logIn(completion: { (session, error) in
            if let sess = session {
                print("signed in as \(sess.userName)");
            } else {
                print("error: \(error?.localizedDescription)");
            }
        })
    }
}

struct twitterUser {
    
}
