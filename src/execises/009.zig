const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex9======\n", .{});
    const foo = 1;

    // Please fix this condition:
    if (foo == 1) {
        std.debug.print("Foo is 1!\n", .{});
        return;
    }
    std.debug.print("Foo is not 1!\n", .{});
}
