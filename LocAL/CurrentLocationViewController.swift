//
//  ViewController.swift
//  LocAL
//
//  Created by Irakli Nozadze on 08.06.23.
//

import UIKit
import CoreLocation

class CurrentLocationViewController: UIViewController, CLLocationManagerDelegate {
  
  // MARK: - Declarations
  @IBOutlet weak var messageLabel: UILabel!
  @IBOutlet weak var latitudeLabel: UILabel!
  @IBOutlet weak var longitudeLabel: UILabel!
  @IBOutlet weak var addressLabel: UILabel!
  @IBOutlet weak var tagButton: UIButton!
  @IBOutlet weak var getButton: UIButton!
  
  let locationManager = CLLocationManager()
  var location: CLLocation?
  var updatingLocation = false
  var lastLocationError: Error?
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    updateLabels()
  }

  // MARK: - Actions
  @IBAction func getLocation() {
    let authStatus = locationManager.authorizationStatus
    if authStatus == .notDetermined {
      locationManager.requestWhenInUseAuthorization()
//      return
    }
    if authStatus == .denied || authStatus == .restricted {
      showLocationServicesDeniedAlert()
      return
    }
    
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
    locationManager.startUpdatingLocation()
  }

  // MARK: - CLLocationManagerDelegate
  func locationManager(
    _ manager: CLLocationManager,
    didFailWithError error: Error
  ) {
    print("didFailWithError \(error.localizedDescription)")
  }
  
  func locationManager(
    _ manager: CLLocationManager,
    didUpdateLocations locations: [CLLocation]
  ) {
    let newLocation = locations.last!
    location = newLocation
    updateLabels()
    print("didUpdateLocations \(newLocation)")
  }
  
  // MARK: - Helper Methods
  private func showLocationServicesDeniedAlert() {
    let alert = UIAlertController(
      title: "Location Services Disabled",
      message: "Please enable location services for this app inSettings.",
      preferredStyle: .alert)
    
    let okAction = UIAlertAction(
      title: "OK",
      style: .default,
      handler: nil)
    
    alert.addAction(okAction)
    
    present(alert, animated: true, completion: nil)
  }
  
  private func updateLabels() {
    if let location = location {
      latitudeLabel.text = String(
        format: "%.8f",
        location.coordinate.latitude)
      longitudeLabel.text = String(
        format: "%.8f",
        location.coordinate.longitude)
      tagButton.isHidden = false
      messageLabel.text = ""
    } else {
      latitudeLabel.text = ""
      longitudeLabel.text = ""
      addressLabel.text = ""
      tagButton.isHidden = true
      messageLabel.text = "Tap 'Get My Location' to Start"
    }
  }
}
