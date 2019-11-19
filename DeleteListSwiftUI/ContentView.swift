//
//  ContentView.swift
//  DeleteListSwiftUI
//
//  Created by shiga on 19/11/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var listItems = ["item1", "item2", "item3", "item4","item5"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listItems, id: \.self) { item  in
                    Text(item)
                }.onDelete(perform: self.deleteItem)
            }
        .navigationBarTitle(Text("DELETE ROWS"))
        .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        //self.listItems.remove(at: indexSet)
        self.listItems.remove(atOffsets: indexSet)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
