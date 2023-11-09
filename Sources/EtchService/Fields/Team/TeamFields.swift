// Copyright © Fleuronic LLC. All rights reserved.

import struct Etch.Team
import protocol Catena.Fields
import protocol Schemata.ModelProjection

public protocol TeamFields: Fields where Model == Team.Identified {}
