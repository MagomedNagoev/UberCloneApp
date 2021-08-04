//
//  HomeController.swift
//  UberCloneApp
//
//  Created by Нагоев Магомед on 04.08.2021.
//

import UIKit
import Firebase
import MapKit

class HomeController: UIViewController {
    // MARK: - Properites
    
    private let mapView = MKMapView()
    
    // MARK: - Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkIfUserIsLogged()
//        signOut()
    }
    
    // MARK: API
    
    func checkIfUserIsLogged() {
        if Auth.auth().currentUser?.uid == nil {
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginController())
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
        } else {
            configureUI()
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("DEBUG: Error signing out")
        }
    }
    
    // MARK: - Helper Functions
    
    func configureUI() {
        view.addSubview(mapView)
        mapView.frame = view.frame
    }
    
}
