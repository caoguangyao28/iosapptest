//
//  LandmarkRow.swift
//  TestApp
//
//  Created by 曹光耀 on 2021/3/9.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                            .resizable()
                            .frame(width: 50, height: 50)
                        //
            Text(landmark.name)
            //
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
            }else {
                Image(systemName: "star")
                    .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
