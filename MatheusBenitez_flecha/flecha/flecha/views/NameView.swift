//
//  NameScreen.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct NameScreen: View {
    
    @State var title = ""
    @State var name: String = ""
    @State var username: String = ""
    @State private var didSendNotification: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("BGNameScreen")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(spacing: 130){
                    VStack {
                        Text("Olá \nprojetista!")
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                            .padding(.trailing, 20)
                            .foregroundStyle(.azulTexto)
                        
                        Text("como posso te chamar?")
                            .font(.system(size: 20, weight: .bold, design: .rounded))               .padding(.trailing,80)
                            .foregroundStyle(.sub)
                            .bold()
                    }
                    
                    VStack{
                        VStack(spacing: 26){
                            ZStack {
                                NameField()
                                TextField("", text: $username)
                                    .padding(.leading, 60)
                                    .padding(.top,190)
                                    .foregroundStyle(.azulEscuro)
                            }
                            
                            NavigationLink {
                                homePage(username: $username)
                                    .navigationBarBackButtonHidden()
                            }
                            label: {
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 29)
                                        .frame(width: 328, height: 54)
                                        .foregroundStyle(.colorNameView)
                                    Text("continuar")
                                        .font(.system(size: 30, weight: .bold, design: .rounded))
                                        .foregroundStyle(.azulTitulo)
                                } .simultaneousGesture(TapGesture().onEnded {
                                    let notification: NotificationModel = NotificationModel(title: "flecha", subtitle: "Olá projetista! Como está?", body: "Não se esqueça que o flecha pode te ajudar!")
                                    NotificationManagerModel.scheduleRepeatingNotification(notification: notification, hour: 13, minute: 30, interval: 259200)
                                    
                                    didSendNotification = true
                                })
                            }
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    NameScreen()
}
