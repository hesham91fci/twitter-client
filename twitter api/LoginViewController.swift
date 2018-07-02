//
//  LoginViewController.swift
//  twitter api
//
//  Created by Macbook on 7/2/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit
import TwitterKit
class LoginViewController: UIViewController {
    var presenter:MainLoginPresenter!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        if(TWTRTwitter.sharedInstance().sessionStore.session()?.userID != nil){
            print("already logged in")
        }
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("signed in as \(session!.userName)");
            } else {
                print("error: \(error!.localizedDescription)");
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
