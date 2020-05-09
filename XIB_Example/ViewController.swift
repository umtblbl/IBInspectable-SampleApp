//
//  ViewController.swift
//  XIB_Example
//
//  Created by Ümit on 9.05.2020.
//  Copyright © 2020 Ümit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scTeam: UISegmentedControl!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var lblTeamList: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnTeamInfo(_ sender: Any) {
        
        guard let selectedTeam = scTeam.titleForSegment(at: scTeam.selectedSegmentIndex) else { return }
        switch selectedTeam {
            case LocalizableType.Barcelona.rawValue: lblInfo.text = LocalizableType.Barcelona.rawValue.localized
            case LocalizableType.Juventus.rawValue: lblInfo.text = LocalizableType.Juventus.rawValue.localized
            case LocalizableType.Chelsea.rawValue: lblInfo.text = LocalizableType.Chelsea.rawValue.localized
            default: lblInfo.text = ""
        }
    }
    
    @IBAction func btnUpdateTeamList(_ sender: Any) {
        if let countryList = LocalizableType.newCountryList.value().localizedArray {
            var temp = ""
            for country in countryList { temp += "\(country)\n" }
            lblTeamList.text = temp
        }
    }
    
}

