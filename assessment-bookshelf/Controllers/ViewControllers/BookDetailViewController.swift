//
//  BookDetailViewController.swift
//  assessment-bookshelf
//
//  Created by Andrew Elliott on 3/18/22.
//

import UIKit

class BookDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        guard let book = self.book else { return }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        titleLabel.text = book.title
        authorLabel.text = book.author
        coverImage.image = UIImage(named: book.cover)
        releaseLabel.text = "Released: \(formatter.string(from: book.release))"
        descriptionLabel.text = String(book.description)
    }

}
