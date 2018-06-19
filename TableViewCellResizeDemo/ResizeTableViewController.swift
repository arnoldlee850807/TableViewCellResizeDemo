//
//  ResizeTableViewController.swift
//  TableViewCellResizeDemo
//
//  Created by Arnold Lee on 2018/6/19.
//  Copyright © 2018年 Arnold Lee. All rights reserved.
//

import UIKit

class ResizeTableViewController: UITableViewController {

    var data = ["Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, macOS, watchOS, tvOS, and Linux. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of existing Objective-C (ObjC) code written for Apple products.","It is built with the open source LLVM compiler framework and has been included in Xcode since version 6. On platforms other than Linux, it uses the Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program.","Apple intended Swift to support many core concepts associated with Objective-C, notably dynamic dispatch, widespread late binding, extensible programming and similar features, but 'safer' (easier to catch software bugs); Swift has features addressing some common programming errors like null pointers and provides syntactic sugar to help avoid the pyramid of doom. Swift supports the concept of protocol extensibility, an extensibility system that can be applied to types, structs and classes, which Apple promotes as a real change in programming paradigms they term 'protocol-oriented programming'","Swift was introduced at Apple's 2014 Worldwide Developers Conference (WWDC). It underwent an upgrade to version 1.2 during 2014 and a more major upgrade to Swift 2 at WWDC 2015. Initially a proprietary language, version 2.2 was made open-source software under the Apache License 2.0 on December 3, 2015, for Apple's platforms and Linux.","In March 2017, Swift made the top 10 in the monthly TIOBE index ranking of popular programming languages, and was ranked 11th at the end of 2017. By October 2017, however, Swift had begun to lose momentum in the TIOBE index as mobile development moved toward Xamarin and C#, as well as similar tools for JavaScript. As of April 2018, Swift ranked No. 15 at 1.53% share, losing 0.75% from its 2.28% share just one year earlier.","Different major versions have been released at an annual schedule with incompatible syntax and library invocations each, requiring significant source code rewrites. For larger code bases this has caused many developers to dismiss Swift until a more stable version becomes available."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 85.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ResizeTableViewCell
        
        // Asign data to label in tableViewCell
        cell.myLabel.text = data[indexPath.row]
        
        // Make it easier to see the effect
        cell.myLabel.backgroundColor = UIColor.lightGray
       
        return cell
    }

}

class ResizeTableViewCell: UITableViewCell{
    @IBOutlet weak var myLabel: UILabel!
}
