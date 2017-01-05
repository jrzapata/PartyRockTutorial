//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Jordan Zapata on 1/4/17.
//  Copyright © 2017 JZ. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

	var partyRocks = [PartyRock]()
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let p1 = PartyRock(imageUrl: "http://exclusiveaccess.net/content/2011/08/oceandrive1.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZkRJ59tB1D8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Ocean Drive")
		
		let p2 = PartyRock(imageUrl: "https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/c181.0.718.718/15276510_1526750567353731_6086481623556030464_n.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XGlkEmr72FE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Savage Mode")
		
		let p3 = PartyRock(imageUrl: "https://i1.sndcdn.com/artworks-000171542292-pquwha-t500x500.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6wtwpUwxQik\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "No Heart")
		
		let p4 = PartyRock(imageUrl: "http://dailychiefers.com/wp-content/media/2016/05/21savage.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SpXw0qiy3Wo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "X")
		
		let p5 = PartyRock(imageUrl: "http://img2-ak.lst.fm/i/u/arO/94793dd3268b13433d33163c5f7094c7", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0o4lgv5Bag4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "No Advance")
		
		
		partyRocks.append(p1)
		
		partyRocks.append(p2)
		
		partyRocks.append(p3)
		
		partyRocks.append(p4)
		
		partyRocks.append(p5)
			
		tableView.delegate = self
		
		tableView.dataSource = self
		
	}
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return UITableViewCell()
		if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell
			{
				
				let partyRock = partyRocks[indexPath.row]
				
				cell.updateUI(partyRock: partyRock)
				
		} else {
			return UITableViewCell()
		}
	}
	
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return partyRocks.count
	}

	


}

