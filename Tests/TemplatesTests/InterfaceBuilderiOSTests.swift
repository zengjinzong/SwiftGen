//
// Templates UnitTests
// Copyright © 2019 SwiftGen
// MIT Licence
//

class InterfaceBuilderiOSTests: InterfaceBuilderTests {
  func testScenesSwift4() {
    test(
      template: "scenes-swift4",
      contextNames: Contexts.all,
      directory: .interfaceBuilder,
      resourceDirectory: .interfaceBuilderiOS,
      contextVariations: variations
    )
  }

  func testSeguesSwift4() {
    test(
      template: "segues-swift4",
      contextNames: Contexts.all,
      directory: .interfaceBuilder,
      resourceDirectory: .interfaceBuilderiOS,
      contextVariations: variations
    )
  }

  func testScenesSwift5() {
    test(
      template: "scenes-swift5",
      contextNames: Contexts.all,
      directory: .interfaceBuilder,
      resourceDirectory: .interfaceBuilderiOS,
      contextVariations: variations
    )
  }

  func testSeguesSwift5() {
    test(
      template: "segues-swift5",
      contextNames: Contexts.all,
      directory: .interfaceBuilder,
      resourceDirectory: .interfaceBuilderiOS,
      contextVariations: variations
    )
  }
}
