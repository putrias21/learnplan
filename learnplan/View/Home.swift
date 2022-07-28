//
//  Home.swift
//  learnplan
//
//  Created by putri as on 27/07/22.
//

import SwiftUI

struct Home: View {
    @StateObject var taskModel: TaskViewModel = .init()
    @Namespace var animation
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                CustomSegmentedBar()
                    .padding(.top, 5)
            }
            .padding()
        }
        .overlay(alignment: .bottom){
            Button{
                
            } label: {
                Label{
                    
                }
                icon:{
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    @ViewBuilder
    func CustomSegmentedBar()->some View{
        let tabs = ["Upcoming", "Done"]
        HStack(spacing: 9){
            ForEach(tabs, id: \.self){tab in Text(tab)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .scaleEffect(0.9)
                    .foregroundColor(taskModel.currentTab == tab ? .white : .green)
                    .padding(.vertical, 6)
                    .frame(maxWidth: .infinity)
                    .background{
                        if taskModel.currentTab == tab{
                            Capsule()
                                .fill(.green)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                    .contentShape(Capsule())
                    .onTapGesture {
                        withAnimation{taskModel.currentTab = tab}
                    }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
