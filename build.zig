const std = @import("std");

pub fn build(b: *std.Build) !void {
    b.getInstallStep().dependOn(&b.addInstallDirectory(.{
        .source_dir = .{ .path = "Eigen" },
        .install_dir = .prefix,
        .install_subdir = "include/"
    }).step);
}
