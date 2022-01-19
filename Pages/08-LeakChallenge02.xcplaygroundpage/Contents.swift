
import CoreFoundation

class WWDCGreeting {
  let who: String
  
  init(who: String) {
    self.who = who
  }
  
  deinit {
    print("\(who) went away")
  }
  
  lazy var greetingMaker: () -> String = { [weak self] in
    guard let self = self else {
      return "No greeting."
    }
    return "Hello \(self.who)."
  }
}

do {
  let mermaid = WWDCGreeting(who: "caffinated mermaid who helped me with this course")
//  DispatchQueue.global().asyncAfter(deadline: .now() + 0.1) {
//    [weak mermaid] in
//    guard let mermaid = mermaid else {
//      print("Nada")
//      return
//    }
//  }
  print(mermaid.greetingMaker())
}
