//
//  BombcastDetailViewController.swift
//  BombcastNavigator
//
//  Created by Robert Speicher on 12/8/14.
//  Copyright (c) 2014 Robert Speicher. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class BombcastDetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    var viewModel: BombcastViewModel?

    override func viewDidLoad() {
        titleLabel.text = viewModel?.title
        descriptionLabel.text = viewModel?.description

        descriptionLabel.sizeToFit()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "EmbeddedPlayer" {
            if let mediaUrl = viewModel?.media {
                let playerController = segue.destinationViewController as AVPlayerViewController
                playerController.player = AVPlayer(URL: mediaUrl)
                playerController.player.play()
            }
        }
    }
}