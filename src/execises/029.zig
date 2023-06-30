const std = @import("std");

var counter: u32 = 0;

const MyErr = error{ GetFail, IncFail };

pub fn Ex() void {
    std.debug.print("======Ex29======\n", .{});
    // We simply quit the entire program if we fail to get a number:
    var a: u32 = makeNumber() catch return;
    var b: u32 = makeNumber() catch return;

    std.debug.print("Numbers: {}, {}\n", .{ a, b });
}

fn makeNumber() MyErr!u32 {
    std.debug.print("Getting number...", .{});

    // Please make the "failed" message print ONLY if the makeNumber()
    // function exits with an error:
    errdefer std.debug.print("failed!\n", .{});

    var num = try getNumber(); // <-- This could fail!

    num = try increaseNumber(num); // <-- This could ALSO fail!

    std.debug.print("got {}. ", .{num});

    return num;
}

fn getNumber() MyErr!u32 {
    // I _could_ fail...but I don't!
    return 4;
}

fn increaseNumber(n: u32) MyErr!u32 {
    // I fail after the first time you run me!
    if (counter > 0) return MyErr.IncFail;

    // Sneaky, weird global stuff.
    counter += 1;

    return n + 1;
}
