//
//  MapView.swift
//  TestApp
//
//  Created by 曹光耀 on 2021/3/9.
//

import SwiftUI
import MapKit

/** UIViewRepresentable 协议需要实现两个方法：
 makeUIView(context:) 用来创建一个 MKMapView，
 updateUIView(_:context:) 用来配置视图并响应修改
 */
struct MapView: UIViewRepresentable {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//    该方法创建并返回一个空的 MKMapView
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    //
    }
    // 方法，给地图视图设置坐标，使其在 Turtle Rock 上居中
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
