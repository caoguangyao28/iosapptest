//
//  LandmarkList.swift
//  TestApp
//
//  Created by 曹光耀 on 2021/3/9.
//

import SwiftUI

struct LandmarkList: View {
    // 状态属性
//    @State var showFavoritesOnly = false
    //
    @EnvironmentObject var userData: UserData
    //
    
    var body: some View {
        NavigationView {
            List {
                //
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                //
                ForEach(userData.landmarks) { landmark in
                    //
                    if !userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
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
        LandmarkList().environmentObject(UserData())
    }
}
