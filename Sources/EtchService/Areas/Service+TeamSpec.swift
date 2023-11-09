// Copyright © Fleuronic LLC. All rights reserved.

import struct Etch.Team

extension Service: TeamSpec where
	API: TeamSpec,
	API.TeamDetailsResult == APIResult<API.TeamDetails>/*,
	 Database: TeamSpec,
	 Database.TeamDetailsResult == DatabaseResult<API.TeamDetails?>*/ {
	public func fetchDetails(forTeamWith id: Team.ID) -> AsyncStream<API.TeamDetailsResult> {
		.init { continuation in
			Task {
				// let localDetails = await database.fetchDetails(forTeamWith: id).value.value
				// if let localDetails {
				// 	continuation.yield(.success(localDetails))
				// }

				let remoteDetails = await api.fetchDetails(forTeamWith: id).value
				continuation.yield(remoteDetails)
				continuation.finish()
			}
		}
	}
}
