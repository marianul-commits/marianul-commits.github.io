import Foundation
import Ignite

struct Home: StaticPage {
    @Environment(\.decode) private var decode
    var title = "Nasturica Marian"
    
    var body: some HTML {
        NavBar()
        
        Include("scrollingText.html")
        
        Text("Projects")
            .font(.title2)
            .foregroundStyle(.mainText)

        CardView(title: "Portfolio",
                 description: "**Personal web portfolio** made with *Ignite* and *Swift*.",
                 link:"",
                 target: "",
                 badgeTitle: ["Swift", "Ignite", "JavaScript", "HTML", "CSS"])
        CardView(title: "shelfy",
                 description: "Rethinking book tracking with personalized, on-device recommendations that learn your style, no cloud needed. shelfy aims to be the smart alternative to Goodreads.",
                 link: "",
                 target: "",
                 badgeTitle: ["SwiftUI", "SwiftData", "SupaBase", "CoreML"])
        CardView(title: "moodly",
                 description: "A personal mood and journaling app inspired by *Year in Pixels*, reimagined digitally.",
                 link: "GitHub",
                 target: "https://github.com/marianul-commits/Moodly",
                 badgeTitle: ["SwiftUI", "SwiftData"])
        CardView(title: "trackIt",
                 description: "My first SwiftUI project - a lightweight news tracker using the NewsAPI.",
                 link: "GitHub",
                 target: "https://github.com/marianul-commits/trackIt",
                 badgeTitle: ["SwiftUI"])
        CardView(title: "shelfy - UIKit",
                 description: "The original version of *shelfy*, built using UIKit and Core Data.",
                 link: "GitHub",
                 target: "https://github.com/marianul-commits/Shelfy",
                 badgeTitle: ["UIKit", "CoreData", "AutoLayout", "Programatic Views"])
        
        CodeBlock(.swift) {
        """
        Text("Tap any of the icons below to get in touch with me")
            .padding()
            .foregroundStyle(.mainText)
            .font(.regular(size:20))
        """
        }
        SocialFooter()
    }
}
