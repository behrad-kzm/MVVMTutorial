//
//  ResultsViewController.swift
//  MVVMTutorial
//
//  Created by Behrad Kazemi on 9/12/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
	
	@IBOutlet weak var searchTextField: UITextField!
	@IBOutlet weak var resultsTableView: UITableView!
	var viewModel: ResultsViewModel!

	override func viewDidLoad() {
		super.viewDidLoad()
		resultsTableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: ResultTableViewCell.identifier)
		resultsTableView.dataSource = self
		resultsTableView.delegate = self
		// Do any additional setup after loading the view.
	}
	@IBAction func searchingValueChanged(_ sender: UITextField) {
		viewModel.updateSearchItemsFor(key: sender.text!)
		resultsTableView.reloadData()
	}
	
}
extension ResultsViewController: UITableViewDataSource, UITableViewDelegate{
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return viewModel.searchingItems.count
	}
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 45
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: ResultTableViewCell.identifier, for: indexPath) as! ResultTableViewCell
		let itemViewModel = viewModel.searchingItems[indexPath.row]
		cell.setup(viewModel: itemViewModel)
		return cell
	}
	
	
}
