//
//  SkiDetails.swift
//  SnowSeeker
//
//  Created by Nick Pavlov on 3/19/23.
//

import SwiftUI

struct SkiDetails: View {
    let resort: Resort
    
    var body: some View {
        Group {
            VStack {
                Text("Elevation")
                    .font(.caption.bold())
                Text("\(resort.elevation)m")
                    .font(.title3)
                    .foregroundColor(.green)
            }
            
            VStack {
                Text("Snow")
                    .font(.caption.bold())
                Text("\(resort.snowDepth)cm")
                    .font(.title3)
                    .foregroundColor(.green)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct SkiDetails_Previews: PreviewProvider {
    static var previews: some View {
        SkiDetails(resort: .example)
    }
}
