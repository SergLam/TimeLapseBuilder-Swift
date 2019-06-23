//
//  ViewController.swift
//  TimeLapseBuilder
//
//  Created by Adam Jensen on 11/18/16.

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let urls = Array(1...60).compactMap { return "https://picsum.photos/id/\($0)/1280/720.jpg"}
        
        let timelapseBuilder = TimeLapseBuilder(photoURLs: urls)
        timelapseBuilder.build({ progress in
            print(progress)
        }, success: { url in
            print(url)
        }, failure: { error in
            print(error)
        })
    }
}

