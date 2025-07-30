//
//  ContentView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var loading: Bool = true
    @State var username: String = ""
    
    var body: some View {
        ZStack{
            if loading {
                launchView()
                    .transition(.opacity)
                    .zIndex(2)
            } else{
                NavigationStack {
                    ZStack {
                        Image("BGMainScreen")
                            .resizable()
                            .ignoresSafeArea()
                        
                        NameScreen()
                    }
                } .onAppear{
                    NotificationManagerModel.requirePermissions()
                }
            }
        }.animation(.easeInOut(duration: 0.4), value: loading)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                loading = false
            }
            
        }
    }
}

#Preview {
    ContentView()
}
