//
//  FeedViewController.swift
//  journal
//
//  Created by Oscar Lara on 12/10/20.
//

import UIKit
import Parse
import AlamofireImage

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var notes = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Notes")
        query.includeKey("author")
        query.limit = 20
        
        query.findObjectsInBackground { (notes, error) in
            if notes != nil {
                self.notes = notes!
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell") as! NoteCell
        let note = notes[indexPath.row]
        
        cell.titleLabel.text = note["title"] as! String
        cell.contentLabel.text = note["content"] as! String
        
        let imageFile = note["image"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)
        
        cell.photoView.af_setImage(withURL: url!)
        
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
