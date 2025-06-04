//
//  ViewController.swift
//  Quickstart
//
//  Created by David Bauduin on 15/05/2025.
//

import UIKit
import DriveKitCoreModule
import DriveKitTripAnalysisModule
import DriveKitPermissionsUtilsUI

class ViewController: UIViewController {

    @IBAction func askForPermissions() {
        // Add here the code related to permissions
        DriveKitPermissionsUtilsUI.shared.showPermissionViews([.location, .activity], parentViewController: self) {
            // Code called when requested permissions are properly granted.
        }
    }

    @IBAction func configureDriveKit() {
        // Add here the code related to DriveKit Configuration
        DriveKit.shared.setApiKey(key: /* Your API Key here */)
        DriveKit.shared.setUserId(userId: /* Your user ID here */)
        DriveKitTripAnalysis.shared.activateAutoStart(enable: true)
    }

}
