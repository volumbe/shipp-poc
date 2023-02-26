//
//  AppView.swift
//  Shipp
//
//  Created by Vivek Olumbe on 1/8/23.
//

import SwiftUI

struct AppView: View {
    @EnvironmentObject var authModel: AuthModel
    @State var isSignedIn = false
    var body: some View {
        Group {
            if isSignedIn {
                HomeView()
            } else {
                AuthView()
            }
        }
        .onAppear {
            Task {
                isSignedIn = await authModel.isSignedIn()
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView().environmentObject(AuthModel())
    }
}
