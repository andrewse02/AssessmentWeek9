//
//  BookController.swift
//  assessment-bookshelf
//
//  Created by Andrew Elliott on 3/18/22.
//

import Foundation

class BookController {
    static var books: [Book] {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        let nineteenEightyFour = Book(title: "1984", author: "George Orwell", cover: "1984", release: formatter.date(from: "06/08/1949") ?? Date(), description: "Nineteen Eighty-Four is a dystopian social science fiction novel and cautionary tale written by English writer George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime.")
        let boundaries = Book(title: "Boundaries", author: "Henry Cloud, John Townsend", cover: "boundaries", release: formatter.date(from: "10/03/2017") ?? Date(), description: "Christians often focus so much on being loving and giving that they forget their own limits and limitations. Have you ever found yourself wondering Can I set limits and still be a loving person? How do I answer someone who wants my time, love, energy or money? Why do I feel guilty when I consider setting boundaries? In this Gold Medallion Award-winning book, Drs. Henry Cloud and John Townsend give you biblically based answers to these and other tough questions, and show you how to set healthy boundaries with your parents, spouses, children, friends, coworkers and even yourself.")
        let notAFan = Book(title: "Not A Fan", author: "Kyle Idleman", cover: "notafan", release: formatter.date(from: "06/07/2011") ?? Date(), description: "Pastor Kyle Idleman doesn’t just want to be a fan of Jesus, he wants to full heartedly commit to him and be a follower of Jesus. But how can you make the leap from fan to follower? In Not a Fan Idleman uses biblical examples to show how the people who met Jesus also had to decide if they were fans or followers, and what it meant for them to then become followers. Being a follower doesn’t mean that you go to church every week, that you slap a Jesus fish on the back of your car, and that you give to charity. That’s what a fan does. What a follower of Jesus does, Idleman observes, is die to themselves each and every moment of the day because “you can’t say yes to following Jesus unless you say no to living for yourself.” In this three part book Idleman helps you to discover whether you are a fan or a follower, how to recognize the invitation Jesus has given, and what following Jesus looks like in your daily life. With humor and real life examples to draw you closer to Jesus, Kyle Idleman compels each and every one of us to Not Be A Fan.")
        let theChecklistManifesto = Book(title: "The Checklist Manifesto", author: "Atul Gawande", cover: "checklist", release: formatter.date(from: "12/22/2009") ?? Date(), description: "The Checklist Manifesto: How to Get Things Right is a 2009 non-fiction book by Atul Gawande. It was released on December 22, 2009, through Metropolitan Books and focuses on the use of checklists in relation to several elements of daily and professional life.")
        let numberTheStars = Book(title: "Number the Stars", author: "Lois Lowry", cover: "numberthestars", release: formatter.date(from: "01/01/1989") ?? Date(), description: "Number the Stars is a work of historical fiction by the a American author Lois Lowry about the escape of a family of Jews from Copenhagen, Denmark, during World War II.")
        let whereTheRedFernGrows = Book(title: "Where the Red Fern Grows", author: "Wilson Rawls", cover: "redfern", release: formatter.date(from: "01/01/1961") ?? Date(), description: "Where the Red Fern Grows is a 1961 children's novel by Wilson Rawls about a boy who buys two hunting dogs. The book is a work of autobiographical fiction based on Rawls' own childhood in the Ozarks.")
        
        return [nineteenEightyFour, boundaries, notAFan, theChecklistManifesto, numberTheStars, whereTheRedFernGrows]
    }
}
