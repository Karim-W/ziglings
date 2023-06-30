const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex39======\n", .{});
    var num1: u8 = 5;
    var num1_pointer: *u8 = &num1;

    var num2: u8 = undefined;

    num2 = num1_pointer.*;

    std.debug.print("num1: {}, num2: {}\n", .{ num1, num2 });
}
