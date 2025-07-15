//
//  ContentView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("BGMainScreen")
                    .resizable()
                    .ignoresSafeArea()
                ZStack {
                    
                    MainButton()
                }
                
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
