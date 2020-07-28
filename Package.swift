// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "CFFmpeg",
    products: [
		.library(name: "avformat", targets: [
			"avformat",
		]),
		.library(name: "avcodec", targets: [
			"avcodec",
		]),
		.library(name: "avdevice", targets: [
			"avdevice",
		]),
		.library(name: "avfilter", targets: [
			"avfilter",
		]),
		.library(name: "avutil", targets: [
			"avutil",
		]),
		.library(name: "swresample", targets: [
			"swresample",
		]),
		.library(name: "swscale", targets: [
			"swscale",
		]),
    ],
    dependencies: [
    ],
    targets: [
		.target(name: "FFmpeg"),
		.systemLibrary(name: "avformat"),
		.systemLibrary(name: "avcodec"),
		.systemLibrary(name: "avdevice"),
		.systemLibrary(name: "avfilter"),
		.systemLibrary(name: "avutil"),
		.systemLibrary(name: "swresample"),
		.systemLibrary(name: "swscale"),
    ]
)
