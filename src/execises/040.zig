const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex40======\n", .{});
    const a: u8 = 12;
    const b: *const u8 = &a;

    std.debug.print("a: {}, b: {}\n", .{ a, b.* });
}
