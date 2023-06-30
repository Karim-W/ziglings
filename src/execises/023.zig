const std = @import("std");

const MyNumberError = error{TooSmall};

pub fn Ex() void {
    std.debug.print("======Ex23======\n", .{});
    const a: u32 = addTwenty(44) catch 22;
    const b: u32 = addTwenty(4) catch 22;

    std.debug.print("a={}, b={}\n", .{ a, b });
}

// Please provide the return type from this function.
// Hint: it'll be an error union.
fn addTwenty(n: u32) !u32 {
    if (n < 5) {
        return MyNumberError.TooSmall;
    } else {
        return n + 20;
    }
}
