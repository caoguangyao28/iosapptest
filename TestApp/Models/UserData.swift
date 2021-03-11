//
//  UserData.swift
//  TestApp
//
//  Created by 曹光耀 on 2021/3/11.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    //
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    //
}
