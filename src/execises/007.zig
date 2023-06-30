const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex7======\n", .{});
    const lyrics =
        \\Ziggy played guitar
        \\Jamming good with Andrew Kelley
        \\And the Spiders from Mars
    ;

    std.debug.print("{s}\n", .{lyrics});
}
