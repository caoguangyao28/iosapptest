//
//  LandmarkList.swift
//  TestApp
//
//  Created by 曹光耀 on 2021/3/9.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                //
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            //
            .navigationBarTitle(Text("Landmarks"))
            //
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//      在不同设备中预览
//        ForEach(["iPhone SE", "iPhone XS Max", "iPhone 12"], id: \.self) { deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                //
//                .previewDisplayName(deviceName)
//                //
//        }
        LandmarkList()
    }
}
