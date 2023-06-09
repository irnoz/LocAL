//
//  LocationsViewController.swift
//  LocAL
//
//  Created by Irakli Nozadze on 09.06.23.
//

import UIKit
import CoreData
import CoreLocation

class LocationsViewController: UITableViewController {
  var managedObjectContext: NSManagedObjectContext!
  var locations = [Location]()
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let fetchRequest = NSFetchRequest<Location>()
    let entity = Location.entity()
    fetchRequest.entity = entity
    
    let sortDescriptor = NSSortDescriptor(
      key: "date",
      ascending: true)
    fetchRequest.sortDescriptors = [sortDescriptor]
    do {
      locations = try managedObjectContext.fetch(fetchRequest)
    } catch {
      fatalCoreDataError(error)
    }
  }
  
  // MARK: - Table View Data Source
  override func tableView(
    _ tableView: UITableView,
    numberOfRowsInSection section: Int
  ) -> Int {
    return locations.count
  }
  
  override func tableView(
    _ tableView: UITableView,
    cellForRowAt indexPath: IndexPath
  ) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(
      withIdentifier: "LocationCell",
      for: indexPath)
    let location = locations[indexPath.row]
    let descriptionLabel = cell.viewWithTag(100) as! UILabel
    descriptionLabel.text = location.locationDescription
    let addressLabel = cell.viewWithTag(101) as! UILabel
    if let placemark = location.placemark {
      var text = ""
      if let tmp = placemark.subThoroughfare {
        text += tmp + " "
      }
      if let tmp = placemark.thoroughfare {
        text += tmp + ", "
      }
      if let tmp = placemark.locality {
        text += tmp
      }
      addressLabel.text = text
    } else {
      addressLabel.text = ""
    }
    return cell
  }
}
