//
//  file.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 11/04/23.
//

import SwiftUI

struct SingleStage: View {
    var stage: Stages
    var body: some View {
        VStack{
            Image(stage.image)
                .resizable()
                .cornerRadius(16)
                //.aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 120)
            Text(stage.name)
                .bold()
            
        }
    }
}

struct SingleStage_Previews: PreviewProvider {
    static var previews: some View {
        SingleStage(stage: stages[0])
    }
}
