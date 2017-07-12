//
//  MasterViewController.swift
//  ChatterBox
//
//  Created by Ryan Draper on 7/10/17.
//  Copyright © 2017 iDTech. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = [Any]()
    var posts = postArray

    
    @IBAction func cancelToMainMenu(segue: UIStoryboardSegue) {
        
    }
    @IBAction func saveNewPost(segue: UIStoryboardSegue) {
        let newPostViewController = segue.source as! NewPostViewController
        posts.insert(newPostViewController.post, at: 0)
        let indexPath = NSIndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath as IndexPath], with: .automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(_ sender: Any) {
        objects.insert(NSDate(), at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = posts[indexPath.row]
                (segue.destination as! DetailViewController).detailItem = object
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell

        let post = posts[indexPath.row]
        cell.postTextLabel.text = post.text
        cell.dateLabel.text = DateFormatter.localizedString(from: post.date as Date, dateStyle: .short, timeStyle: .short)
        cell.userNameLabel.text = post.userName
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) { }


}

