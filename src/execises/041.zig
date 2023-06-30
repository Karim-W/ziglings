const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex41======\n", .{});
    var foo: u8 = 5;
    var bar: u8 = 10;

    // Please define pointer "p" so that it can point to EITHER foo or
    // bar AND change the value it points to!
    var p: *u8 = undefined;

    p = &foo;
    p.* += 1;
    p = &bar;
    p.* += 1;
    std.debug.print("foo={}, bar={}\n", .{ foo, bar });
}
