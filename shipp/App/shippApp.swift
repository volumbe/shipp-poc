//
//  ShippApp.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

import Amplify
import AWSCognitoAuthPlugin
import AWSDataStorePlugin
import AWSS3StoragePlugin
import AWSAPIPlugin

@main
struct ShippApp: App {
    @StateObject var authModel:AuthViewModel = AuthViewModel()
    
    init() {
        configureAmplify()
    }
    
    func configureAmplify() {
        Amplify.Logging.logLevel = .error
        do {
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            try Amplify.add(plugin: AWSDataStorePlugin(modelRegistration: models))
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.configure()
        } catch {
            print("Failed on AWS Amplify Configuration: ", error)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                AppView()
                    .environmentObject(authModel)
            }
        }
    }
    
}
