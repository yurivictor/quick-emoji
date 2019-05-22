//
//  ViewController.swift
//  collection-view-tutorial-2
//
//  Created by Victor, Yuri on 5/7/19.
//  Copyright © 2019 Victor, Yuri. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

var emojis = [ "😀", "humans", "smiling", "sad-face" ]

extension ViewController: NSCollectionViewDataSource {
    
    static let labelItem = "LabelItem"
    
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return emojis.count
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let cell = collectionView.makeItem(
            withIdentifier: NSUserInterfaceItemIdentifier(rawValue: ViewController.labelItem),
            for: indexPath
        )
        
        let emoji = emojis[indexPath.item]
        cell.textField?.stringValue = emoji
        
        return cell
    }
    
}
