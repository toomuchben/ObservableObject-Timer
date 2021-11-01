//
//  ColorPickerView.swift
//  ObservableObject-Timer
//
//  Created by Ben Bradley on 2021-10-18.
//

import SwiftUI



struct ColorPickerView: View {
    
    @State private var selectedColor = Color.red
        
        var body: some View {
            
            NavigationView {
                VStack(spacing: 20) {
                    // 2.
                    Rectangle()
                        .fill(selectedColor)
                        .frame(width: 100, height: 100)
                    // 3.
                    ColorPicker("Set the rectangle color", selection: $selectedColor)
                        .padding()
                    Button("Print Color"){
                        print(selectedColor)
                    }
                    Spacer()
                
                }.navigationTitle("Color picker")
            }
            .onAppear(perform: printColor)
        }
    func printColor(){
        print(selectedColor)
    }
    }

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorPickerView()
        }
    }
}
