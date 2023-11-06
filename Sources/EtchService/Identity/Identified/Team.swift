// Copyright © Fleuronic LLC. All rights reserved.

import PersistDB
import Schemata

import protocol Catena.Model
import struct Etch.Team
import struct Foundation.UUID
import protocol Identity.Identifiable

public struct IdentifiedTeam {
	public let id: Self.ID
	public let value: Team
}

// MARK: -
public extension Team {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedTeam

	func identified(id: ID? = nil) -> Identified {
		.init(
			id: id ?? .random,
			value: self
		)
	}
}

// MARK: -
extension Team.Identified: Identifiable {
	public typealias RawIdentifier = UUID
}

extension Team.Identified: Catena.Model {
	// MARK: Model
	public static let schema = Schema(
		Self.init..."Teams",
		\.id * "id",
		\.value.name * "name"
	)

	public var valueSet: ValueSet<Self> {
		[
			\.value.name == value.name
		]
	}
}

// MARK: -
private extension Team.Identified {
	init(
		id: ID,
		name: String
	) {
		self.id = id
		
		value = .init(
			name: name
		)
	}
}
