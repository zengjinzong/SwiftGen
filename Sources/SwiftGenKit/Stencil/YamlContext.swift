//
// SwiftGenKit
// Copyright © 2019 SwiftGen
// MIT Licence
//

import Foundation

//
// See the documentation file for a full description of this context's structure:
// Documentation/SwiftGenKit Contexts/Yaml.md
//

extension Yaml.Parser {
  public func stencilContext() -> [String: Any] {
    let files = self.files
      .sorted { lhs, rhs in lhs.name < rhs.name }
      .map(map(file:))

    return [
      "files": files
    ]
  }

  private func map(file: Yaml.File) -> [String: Any] {
    [
      "name": file.name,
      "path": file.path.string,
      "documents": file.documents.map(map(document:))
    ]
  }

  private func map(document: Any) -> [String: Any] {
    [
      "data": document,
      "metadata": Metadata.generate(for: document)
    ]
  }
}
