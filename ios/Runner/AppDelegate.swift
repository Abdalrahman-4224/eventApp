import Flutter
import UIKit
import GoogleMaps                                          // Add this import

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyC0Oe6EmSTYIAMSYXKXCL8OArilj99qVEQ")  
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
