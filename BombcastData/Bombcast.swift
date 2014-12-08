//
//  Bombcast.swift
//  BombcastNavigator
//
//  Created by Robert Speicher on 12/8/14.
//  Copyright (c) 2014 Robert Speicher. All rights reserved.
//

import Foundation

public class Bombcast: Deserializable {
    public var id: Int?
    public var title: String?
    public var description: String?
    public var media: NSURL?

    public class func all() -> [Bombcast] {
        var json: AnyObject? = JSONSampleData.JSON()
        var bombcasts = [Bombcast]()
        bombcasts <<<<* json
        return bombcasts
    }

    // MARK: Deserializable

    public required init(data: [String: AnyObject]) {
        id <<< data["id"]
        title <<< data["title"]
        description <<< data["description"]
        media <<< data["media_link"]
    }
}

extension Bombcast: DebugPrintable {
    public var debugDescription: String {
        return "Bombcast(id: \(id!) title: \(title!))"
    }
}