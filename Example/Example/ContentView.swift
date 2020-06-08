//
//  ContentView.swift
//  ProgressHUD
//
//  Created by Doug Diego on 5/29/20.
//  Copyright © 2020 Doug Diego. All rights reserved.
//

import SwiftUI
import ProgressHUD

struct ContentView: View {
    @State var showProgress1: Bool = false
    @State var showProgress2: Bool = false
    @State var showProgress3: Bool = false
    @State var progressHUD3Type: ProgressHUDType = .default
    @State var progressHUD3Text: String = "Loading..."
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.showProgress1 = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.showProgress1 = false
                    }
                }) {
                    Text("Progress ")
                        .foregroundColor(.purple)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.purple, lineWidth: 1)
                    )
                }
                
                Button(action: {
                    self.showProgress2 = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.showProgress2 = false
                    }
                }) {
                    Text("Error")
                        .foregroundColor(.purple)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.purple, lineWidth: 1)
                    )
                }.padding(.top, 16)
                
                Button(action: {
                    self.showProgress3 = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.progressHUD3Type = .success
                        self.progressHUD3Text = "Success"
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.showProgress3 = false
                            self.progressHUD3Type = .default
                            self.progressHUD3Text = "Loading..."
                        }
                    }
                }) {
                    Text("Progress and Success")
                        .foregroundColor(.purple)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.purple, lineWidth: 1)
                    )
                }.padding(.top, 16)
                
            }
            .navigationBarTitle(Text("ProgressHUD"), displayMode: .large)
            .progressHUD(isShowing: $showProgress1, text: Text("Loading..."))
            .progressHUD(isShowing: $showProgress2, type: .error, text: Text("Error"))
            .progressHUD(isShowing: $showProgress3, type: progressHUD3Type, text: Text(progressHUD3Text))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
