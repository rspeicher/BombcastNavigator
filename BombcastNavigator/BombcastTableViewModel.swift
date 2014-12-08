//
//  BombcastTableViewModel.swift
//  BombcastNavigator
//
//  Created by Robert Speicher on 12/8/14.
//  Copyright (c) 2014 Robert Speicher. All rights reserved.
//

import Foundation
import BombcastData

public struct BombcastTableViewModel {
    let bombcasts: [Bombcast]

    public init(bombcasts: [Bombcast] = []) {
        self.bombcasts = bombcasts
    }
}

public extension BombcastTableViewModel {
    var numberOfRows: Int {
        return bombcasts.count
    }

    var randomIndex: Int {
        return Int(arc4random_uniform(UInt32(numberOfRows)))
    }

    var randomIndexPath: NSIndexPath {
        return NSIndexPath(forRow: randomIndex, inSection: 0)
    }

    func viewModelForIndexPath(indexPath: NSIndexPath) -> BombcastViewModel? {
        let index = indexPath.item
        if index < numberOfRows {
            return BombcastViewModel(bombcast: bombcasts[indexPath.row])
        } else {
            return .None
        }
    }
}
