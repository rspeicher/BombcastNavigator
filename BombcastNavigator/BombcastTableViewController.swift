//
//  BombcastTableViewController.swift
//  BombcastNavigator
//
//  Created by Robert Speicher on 12/8/14.
//  Copyright (c) 2014 Robert Speicher. All rights reserved.
//

import UIKit
import BombcastData

class BombcastTableViewController: UITableViewController {
    var viewModel: BombcastTableViewModel = BombcastTableViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewModel = BombcastTableViewModel(bombcasts: Bombcast.all())
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func randomBombcast(sender: AnyObject) {
        self.tableView.selectRowAtIndexPath(viewModel.randomIndexPath, animated: true, scrollPosition: .Middle)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BombcastCell", forIndexPath: indexPath) as BombcastTableViewCell

        if let cellViewModel = viewModel.viewModelForIndexPath(indexPath) {
            cell.configureWithViewModel(cellViewModel)
        }

        return cell
    }
}