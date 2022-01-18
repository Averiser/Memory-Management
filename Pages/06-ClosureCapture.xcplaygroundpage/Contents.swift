//: [Previous](@previous)

//import Darwin

var value = 0

let show = {
  print(value)
}

show()
value = 10
show()

let show2 = { [value] in
  print(value)
}

value = 11

show2()
value = 20

show2()
value = 30

let show3 = { [v = value, b = value + 1] in
  print(v, b)
}
show3()
value = 40
show3()


class Cat {
  func speak() {print("Meow")}
}

var play: () -> Void

do {
  let whiskers = Cat()

  play = { [weak cat = whiskers] in
    guard let cat = cat else {
      print("no playing today")
      return
    }
    cat.speak()
  }
  play()
}

play()
