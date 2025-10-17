import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "mnasturica"
    var titleSuffix = " – Profile"
    var url = URL(static: "https://www.example.com")
    var builtInIconsEnabled = true
    var author = "Marian Nasturica"
    var pageWidth = 12
    var homePage = Home()
    var layout = MainLayout()
    var theme = MyTheme()
}
