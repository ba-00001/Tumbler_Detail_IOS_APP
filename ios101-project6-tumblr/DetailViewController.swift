//
//  DetailViewController.swift
//  ios101-project6-tumblr
//


// DetailViewController.swift


// DetailViewController.swift

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    // Property to store the passed-in post
    var post: Post?
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var summaryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        guard let post = post else {
            print("Warning: post object is nil.")
            return
        }
        
        summaryTextView.text = post.summary
        
        if let photoUrl = post.photos.first?.originalSize.url {
            Nuke.loadImage(with: photoUrl, into: postImageView)
        } else {
            print("Warning: Photo URL is nil.")
        }
    }
}
