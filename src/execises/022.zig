const std = @import("std");

const MyNumberError = error{TooSmall};

pub fn Ex() void {
    std.debug.print("======Ex22======\n", .{});
    var my_number: MyNumberError!u8 = 5;

    // Looks like my_number will need to either store a number OR
    // an error. Can you set the type correctly above?
    my_number = MyNumberError.TooSmall;

    std.debug.print("I compiled!\n", .{});
}
