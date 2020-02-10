//
//  ContentView.swift
//  Bullseye
//
//  Created by jieqiong-yu on 2020/01/25.
//  Copyright © 2020 MerJQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            // Target row
            HStack {
                Text("Put the bullseye as closest as you can to:")
                Text("100")
            }
            
            // Slider row
            HStack {
                Text("1")
                Slider(value: .constant(10))
                Text("100")
            }
            
            // Button row
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) { () ->
                Alert in
                return Alert(title: Text("Hello there!"), message: Text("this is my first pop-up."), dismissButton: .default(Text("Awesome")))
            }
            
            // Score row
            HStack {
                Button(action: {}) {
                    Text("Start over")
                }
                Text("Score: ")
                Text("999999")
                Text("Round: ")
                Text("999")
                Button(action: {}) {
                    Text("Info")
                }
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
