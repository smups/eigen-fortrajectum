const std = @import("std");

pub fn build(b: *std.Build) !void {
    // Add fake static lib
    const eigen = b.addStaticLibrary(.{
        .name = "eigen-fortrajectum",
        .root_source_file = b.addWriteFiles().add("null.c", ""),
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}) 
    });
    eigen.installHeadersDirectory("Eigen", "Eigen");
    b.installArtifact(eigen);
}
