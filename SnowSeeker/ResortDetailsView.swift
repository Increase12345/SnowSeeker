//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by Nick Pavlov on 3/19/23.
//

import SwiftUI

struct ResortDetailsView: View {
    let resort: Resort
    
    var size: String {
        switch resort.size {
        case 1:
            return "Small"
        case 2:
            return "Avarage"
        default:
            return "Large"
        }
    }
    
    var price: String {
        String(repeating: "$", count: resort.price)
    }
    
    var sizeColor: Color {
        switch size {
        case "Small":
            return .green
        case "Avarage":
            return .orange
        default:
            return .red
        }
    }
    
    var priceColor: Color {
        switch resort.price {
        case 1:
            return .green
        case 2:
            return .orange
        default:
            return .red
        }
    }
    
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
                    .foregroundColor(sizeColor)
            }
            
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
                    .foregroundColor(priceColor)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct ResortDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetailsView(resort: .example)
    }
}
