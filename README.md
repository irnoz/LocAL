<!-- <p align="center">
  <img src="Qarty/AppIcon.appiconset/qarty-appicon.png" height="128"/>
</p> -->
<!-- <img src=https://github.com/irnoz/Checklists/assets/58843342/1504af31-735c-485c-bec7-4aa70bfc24fd width="100" height="100"/> -->
<!-- <img src=https://github.com/irnoz/Checklists/assets/58843342/15e8c7d4-ee48-4d8a-86ac-674595cabd94 width="200" height="400"/> -->
# 📍 LocAL 📍
<img src=https://github.com/irnoz/LocAL/assets/58843342/77535a34-f961-4b28-8049-916e49fa2d8a width="100" height="100"/>

<!-- **LocAL**  -->
LocAL is a location aware app📱 built to store locations and whatever data users want to associate with that location. it demonstrates use and knowledge of Swift programming language and the followeing concepts: navigation flow, data cacheing with CoreData and GeoCodeing with MapKit.

## 💡 About the Project

If you whant to keep an album of locations you've visited this app is for you, LocAL(Location Album) allows you to get and tag your current location. On startup users are greated with beautiful logo and a navigation bar. As the soon as the app loads "Get My Location" button will appear on the screen along with previously described items. If the user taps the icon or the button the app trasitions with a beautiful animation to a new screen containing latitude, longitude and adress of current lcoation. To obtain this GPS coordinates for the user’s whereabouts the app uses Core Location framework 

<img src=https://github.com/irnoz/LocAL/assets/58843342/aa965c74-dff4-46d2-bfc7-bb125b4b713b width="225" height="400"/>
<img src=https://github.com/irnoz/LocAL/assets/58843342/6917f9ca-c749-4068-a81b-f0063a1a974c width="225" height="400"/>

After tapping on the "Tag Location" button app moves to new screen where user can add aditional data like description category or a image. From Image Picker users are able to take new photoes or import existing images from the library.

<img src=https://github.com/irnoz/LocAL/assets/58843342/6a371bf1-1c87-4bc7-b9ee-9838cf726b9e width="225" height="400"/>
<img src=https://github.com/irnoz/LocAL/assets/58843342/94096f94-e9e7-4279-8912-ee8ee874a6b9 width="225" height="400"/>

In Locations tab LocAL also contains list of all saved locations with a rounded image and a description. from this screen it is possible to delete, mass edit or change contents of any saved item. taping the saved item takes users to new screen where it's possible to edit data associated to the location.

<img src=https://github.com/irnoz/LocAL/assets/58843342/7d724e73-358d-4da9-956a-c4f9b19ccde9 width="225" height="400"/>

LocAL also displays saved locations on the map with custom pins using MapKit, which users can tap and edit details of that location.

<img src=https://github.com/irnoz/LocAL/assets/58843342/8103c476-0e00-476e-aed4-af2a9d3e29d7 width="225" height="400"/>

The app also contains sound effects which is played when the first reverse geocoding successfully completes.

## Built With

* UIKit
* Cooa (Touch)
* CoreData
* MapKit
* CoreLocation
* AudioToolbox
* MVC (Model-View-Controller) Design Pattern
* Delegate Design pattern
* UserDefaults

## Want to Contribute 🙋‍♂️?

Awesome! If you want to contribute to this project, you're always welcome!

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You only need to have xcode installed.

* xcode

### Installation

Just clone the roepo and you are all set.

1. Clone the repo
   ```sh
   git clone https://github.com/irnoz/LocAL.git
   ```
<!-- ## Want to discuss? 💬

 Have any questions, doubts or want to present your opinions, views? You're always welcome. -->

## Credits
* Sound effect based on a flute sample by elmomo, downloaded from The Freesound Project (freesound.org).
* Image resizing category is based on code by Trevor Harmon (bit.ly/2wNGRX3).
* HudView code is based on MBProgressHud by Matej Bukovinski (github.com/ matej/MBProgressHUD).
