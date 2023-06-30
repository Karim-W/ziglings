const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex27======\n", .{});
    // Without changing anything else, please add a 'defer' statement
    // to this code so that our program prints "One Two\n":
    defer std.debug.print("Two\n", .{});
    std.debug.print("One ", .{});
}
