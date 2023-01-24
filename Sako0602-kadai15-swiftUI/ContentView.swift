//
//  ContentView.swift
//  Sako0602-kadai15-swiftUI
//
//  Created by sako0602 on 2023/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    @State private var fruits = [
        Fruits(name: "りんご", isChecked: false),
        Fruits(name: "みかん", isChecked: true),
        Fruits(name: "バナナ", isChecked: false),
        Fruits(name: "パイナップル", isChecked: true),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.indices, id: \.self) { count in
                    Button {
                        fruits[count].isChecked.toggle()
                    } label: {
                        HStack{
                            Image(systemName: fruits[count].isChecked
                                  ? "checkmark"
                                  : ""
                            )
                            .foregroundColor(Color.red)
                            .frame(width: 30, height: 30)
                            Text(fruits[count].name)
                        }
                    }
                    .foregroundColor(Color.black)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isPresented = true
                    }, label: {
                        Image(systemName: "plus")
                    })
                    .padding()
                }
            }
        }
        .sheet(isPresented: $isPresented) {
            FruitsAddView(
                save: { name in
                    fruits.append(Fruits(name: name, isChecked: false)
                    )
                    isPresented = false
                } ,cancel: {
                    isPresented = false
                }
            )
        }
    }
}

struct Fruits {
    var id = UUID()
    var name: String
    var isChecked: Bool
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
