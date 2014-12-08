//
//  BombcastViewModel.swift
//  BombcastNavigator
//
//  Created by Robert Speicher on 12/8/14.
//  Copyright (c) 2014 Robert Speicher. All rights reserved.
//

import Foundation
import BombcastData

public struct BombcastViewModel {
    public let bombcast: Bombcast

    public init(bombcast: Bombcast) {
        self.bombcast = bombcast
    }
}

public extension BombcastViewModel {
    var title: String {
        return bombcast.title!
    }

    var description: String {
        return bombcast.description!
    }

    var media: NSURL {
        return bombcast.media!
    }
}