//
//  ContentView.swift
//  learnplan
//
//  Created by putri as on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            //Use this if NavigationBarTitle is with Large Font
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemGreen]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.systemGreen]
        }
    
    var body: some View {
        NavigationView{
            Home()
                .navigationBarTitle("Learning Plan")
                .navigationBarTitleDisplayMode(.large)
        }
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
