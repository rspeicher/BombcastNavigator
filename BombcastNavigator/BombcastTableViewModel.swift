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

    func viewModelForIndexPath(indexPath: NSIndexPath) -> BombcastViewModel? {
        let index = indexPath.item
        if index < numberOfRows {
            return BombcastViewModel(bombcast: bombcasts[indexPath.row])
        } else {
            return .None
        }
    }
}
