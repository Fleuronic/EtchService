// swift-tools-version:5.9
import PackageDescription

let package = Package(
	name: "EtchService",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15),
		.tvOS(.v13),
		.watchOS(.v6)
	],
	products: [
		.library(
			name: "EtchService",
			targets: ["EtchService"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/Fleuronic/Etch", branch: "main"),
		.package(url: "https://github.com/JohnSundell/Identity", from: "0.1.0"),
		.package(url: "https://github.com/Fleuronic/Catenary", branch: "main"),
		.package(url: "https://github.com/Fleuronic/Catenoid", branch: "main")
	],
	targets: [
		.target(
			name: "EtchService",
			dependencies: [
				"Etch",
				"Identity",
				"Catenary",
				"Catenoid"
			]
		)
	]
)
