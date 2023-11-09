// Copyright © Fleuronic LLC. All rights reserved.

import struct Etch.Team

public protocol TeamSpec {
	associatedtype TeamDetails
	associatedtype TeamDetailsResult
	
	func fetchDetails(forTeamWith id: Team.ID) -> AsyncStream<TeamDetailsResult>
}
