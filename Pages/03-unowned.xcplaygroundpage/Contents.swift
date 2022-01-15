//: [Previous](@previous)

import Foundation

class Star: CelestialBody {
  var planets: [Planet] = []
}

class Planet: CelestialBody {
  unowned let system: Star
  init(_ name: String, system: Star) {
    self.system = system
    super.init(name)
  }
}

do {
  let sun = Star("Sun")
  let earth = Planet("Earth", system: sun)
  sun.planets.append(earth)
  print(sun.name, "is alive!")
}
