//
//  ResultTableViewCell.swift
//  MVVMTutorial
//
//  Created by Behrad Kazemi on 9/12/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {
		static let identifier = "CellID"
	

	@IBOutlet weak var previewImageView: UIImageView!
	@IBOutlet weak var titleLabel: UILabel!
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
	func setup(viewModel: ResultItemViewModel){
		previewImageView.image = viewModel.image
		titleLabel.text = viewModel.title
	}
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
