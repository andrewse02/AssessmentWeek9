//
//  BookListTableViewController.swift
//  assessment-bookshelf
//
//  Created by Andrew Elliott on 3/18/22.
//

import UIKit

class BookListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookController.books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)

        cell.textLabel?.text = BookController.books[indexPath.row].title
        cell.detailTextLabel?.text = BookController.books[indexPath.row].author

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toDetailVC",
              let indexPath = tableView.indexPathForSelectedRow,
              let destination = segue.destination as? BookDetailViewController else { return }
        
        let bookToSend = BookController.books[indexPath.row]
        destination.book = bookToSend
    }
}
