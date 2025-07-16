//
//  ContentView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var name: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("BGMainScreen")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    if !name.isEmpty {
                        
                            Text("Welcome \(name)!")
                            TextField("name", text: $name)
                        
                        
                    }
                    
                }
                MainButton()
                
                VStack {
                    HStack (spacing: 280){
                        NavigationLink{
                            NameScreen()
                        } label: {
                            miniLogo()
                        }
                        
                        NavigationLink{
                            FavoriteView()
                        } label: {
                            brushButton()
                        }
                    }
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
