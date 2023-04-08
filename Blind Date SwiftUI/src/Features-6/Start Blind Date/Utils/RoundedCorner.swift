//
//  RoundedCorner.swift
//  Blind Date SwiftUI
//
//  Created by user on 4/3/23.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some
    View {
        clipShape(RoundedCorner(radious: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radious: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radious, height: radious))
        return Path(path.cgPath)
    }
}

struct RoundedCorner_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCorner(radious: 200, corners: [.bottomLeft, .topRight]).padding().frame(width: 400, height: 200)
    }
}
