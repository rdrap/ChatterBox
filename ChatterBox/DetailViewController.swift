//
//  DetailViewController.swift
//  ChatterBox
//
//  Created by Ryan Draper on 7/10/17.
//  Copyright © 2017 iDTech. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var detailUsernameLabel: UILabel!
    @IBOutlet weak var detailDateLabel: UILabel!


    func configureView() {
        var post = detailItem as! Post
        detailDescriptionLabel?.text = post.text
        detailUsernameLabel?.text = post.userName
        detailDateLabel?.text = DateFormatter.localizedString(from: post.date as Date, dateStyle: .short, timeStyle: .short)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Post? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

