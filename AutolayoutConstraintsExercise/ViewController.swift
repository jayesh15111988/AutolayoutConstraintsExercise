//
//  ViewController.swift
//  AutolayoutConstraintsExercise
//
//  Created by Jayesh Kawli on 10/20/23.
//

import UIKit

class ViewController: UIViewController {

    let viewModel: ViewModel

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.delegate = self
        viewModel.downloadProfileInfo()
    }
}

extension ViewController: DownloaderDelegate {
    func downloadComplete() {
        print("download complete")
    }
}

