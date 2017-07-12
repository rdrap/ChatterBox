//
//  NewPostViewController.swift
//  ChatterBox
//
//  Created by Ryan Draper on 7/10/17.
//  Copyright © 2017 iDTech. All rights reserved.
//

import Foundation
import UIKit

class NewPostViewController: UIViewController {
    var post: Post!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var postTextView: UITextView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SaveNewPost" {
            post = Post(text: self.postTextView.text, date: NSDate(), userName: self.usernameTextField.text!)
        }
    }
}
