//
//  ViewDragons.swift
//  DragonBallSwift
//
//  Created by Esteban Perez Castillejo on 17/7/24.
//

import SwiftUI

struct ViewDragons: View {
    
    @State private var viewModel: AllDragonsViewModel = AllDragonsViewModel()
    @State private var isLoadig = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.white, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                List{
                    ForEach(viewModel.AllDragos, id: \.id){item in
                        VStack(alignment: .leading){
                            HStack{
                                AsyncImage(url: URL(string: item.image)){ image in
                                    image.resizable()
                                }placeholder: {
                                    ProgressView()
                                }.frame(width: 100, height: 100)
                                Text(item.name).font(.title2).bold()
                                
                                
                            }
                            
                        }
                    }
                    .listRowBackground(Color.clear)
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Dragones")
            }
        }
    }
}

#Preview {
    ViewDragons()
}
