//
//  TimerView.swift
//  ObservableObject-Timer
//
//  Created by Ben Bradley on 2021-10-18.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var basicTimer = BasicTimer()
    
    var body: some View {
        VStack{
            Text("\(basicTimer.seconds)")
                .padding()
            Image(systemName: "house.fill")
                .resizedToFill(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}

extension Image{
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
}

struct LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(TimerView())
    }
    
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
        
            base.resizedToFill(width: 100.0, height: 100.0))
    }
}


