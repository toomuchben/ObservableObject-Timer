//
//  ContentView.swift
//  ObservableObject-Timer
//
//  Created by Ben Bradley on 2021-10-18.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var basicTimer = BasicTimer()

    var body: some View {
        VStack{
            ColorPickerView()
        //TimerView()
//        Text("\(basicTimer.seconds)")
//            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
