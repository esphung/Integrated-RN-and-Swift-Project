//
//  OnboardingViewController.swift
//  Mixer
//
//  Created by Eric Phung on 10/25/20.
//  Copyright © 2020 Razeware LLC. All rights reserved.
//

import UIKit

import React

class OnboardingViewController: UIViewController {
  var addRatingView: RCTRootView!

  @IBAction func showReactNativeBtnPressed(_ sender: UIButton) {
    print(sender.description)
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // This initializes an instance of RCTRootView with the app bundle served up from index.ios.js.
    addRatingView = RCTRootView(
        bundleURL: URL(string: "http://localhost:8081/index.ios.bundle?platform=ios"),
        moduleName: "AddRatingApp",
        initialProperties: nil,
        launchOptions: nil)
    self.view.addSubview(addRatingView)

    
    // Do any additional setup after loading the view.
    print("Onboarding view controller mounted");
  }
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    addRatingView.frame = self.view.bounds
    // TODO: Layout React View
  }
}
