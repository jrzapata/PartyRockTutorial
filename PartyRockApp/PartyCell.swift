//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Jordan Zapata on 1/4/17.
//  Copyright © 2017 JZ. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

	@IBOutlet weak var videoPreviewImage: UIImageView!
	
	@IBOutlet weak var videoPreviewTitle: UILabel!
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
			
			
			
    }
	
	func updateUI(partyRock: PartyRock) {
		videoPreviewTitle.text = partyRock.videoTitle
		
		//todo set image for code
	}

	

}
