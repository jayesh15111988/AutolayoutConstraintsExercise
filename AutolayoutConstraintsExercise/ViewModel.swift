//
//  ViewModel.swift
//  AutolayoutConstraintsExercise
//
//  Created by Jayesh Kawli on 11/8/23.
//

import Foundation

protocol DownloaderDelegate: AnyObject {
    func downloadComplete()
}

class ViewModel {
    weak var delegate: DownloaderDelegate?

    func downloadProfileInfo() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.delegate?.downloadComplete()
        }
    }
}
