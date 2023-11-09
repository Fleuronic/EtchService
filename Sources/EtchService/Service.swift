// Copyright © Fleuronic LLC. All rights reserved.

import PersistDB

import protocol Catenary.API
import protocol Catenoid.Database

public struct Service<
	API: Catenary.API,
	// Database: Catenoid.Database,
	TeamDetails
> /*where Database.Store == Store<ReadWrite>*/ {
	let api: API
	// let database: Database
	let teamDetailsType: TeamDetails.Type

	public init(
		api: API,
		// database: Database,
		teamDetailsType: TeamDetails.Type
	) {
		self.api = api
		// self.database = database
		self.teamDetailsType = teamDetailsType
	}
}

// MARK: -
public extension Service {
	typealias APIResult<Resource> = API.Result<Resource>
	// typealias DatabaseResult<Resource> = Database.Result<Resource>
}
