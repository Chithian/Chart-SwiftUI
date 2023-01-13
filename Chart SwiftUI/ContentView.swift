//
//  ContentView.swift
//  Chart SwiftUI
//
//  Created by Samony Chithian on 12/1/23.
//

import SwiftUI
import Charts

struct Item: Identifiable{
    var id = UUID()
    let type: String
    let value: Double
    
}

struct ContentView: View {
    
    let items: [Item] = [
        Item(type: "Swift" ,value: 100),
        Item(type: "C+" ,value: 50),
        Item(type: "C#" ,value: 10),
        Item(type: "Python" ,value: 90),
        Item(type: "Ruby" ,value: 50),
        Item(type: "PHP" ,value: 40),
        Item(type: "SQL" ,value: 60),
        Item(type: "Java" ,value: 80),
        
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                //MARK: BarMark Chart
                Chart(items) {item in
                    
                    BarMark(x: .value("Hello", item.type), y: .value("World", item.value))
                        .foregroundStyle(Color.black.gradient)
                }
                .frame(height : 200)
                .padding()
                
                //MARK: PointMark Chart
                Chart(items) {item in
                    
                    PointMark(x: .value("Hello", item.type), y: .value("World", item.value))
                        .foregroundStyle(Color.black.gradient)
                }
                .frame(height : 200)
                .padding()
                
                //MARK: LineMark Chart
                Chart(items) {item in
                    
                    LineMark(x: .value("Hello", item.type), y: .value("World", item.value))
                        .foregroundStyle(Color.black.gradient)
                }
                .frame(height : 200)
                .padding()
                
                //MARK: AreaMark Chart
                Chart(items) {item in
                    
                    AreaMark(x: .value("Hello", item.type), y: .value("World", item.value))
                        .foregroundStyle(Color.black.gradient)
                }
                .frame(height : 200)
                .padding()
                
            }
            .navigationTitle("Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
