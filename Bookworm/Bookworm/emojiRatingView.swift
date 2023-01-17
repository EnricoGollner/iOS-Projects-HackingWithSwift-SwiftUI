//
//  emojiRatingView.swift
//  Bookworm
//
//  Created by Enrico Sousa Gollner on 15/01/23.
//

import SwiftUI

struct emojiRatingView: View {
    let rating: Int16
    
    var body: some View {
        switch rating{
        case 1:
            return Text("🙈")
        case 2:
            return Text("☹️")
        case 3:
            return Text("🙂")
        case 4:
            return Text("😊")
        default:
            return Text("🤩")
        }
    }
}

struct emojiRatingView_Previews: PreviewProvider {
    static var previews: some View {
        emojiRatingView(rating: 3)
    }
}
