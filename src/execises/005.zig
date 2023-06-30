const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex5======\n", .{});
    const le = [_]u8{ 1, 3 };
    const et = [_]u8{ 3, 7 };

    // (Problem 1)
    // Please set this array concatenating the two arrays above.
    // It should result in: 1 3 3 7
    const leet = le ++ et;

    // (Problem 2)
    // Please set this array using repetition.
    // It should result in: 1 0 0 1 1 0 0 1 1 0 0 1
    const bit_pattern = [_]u8{ 1, 0, 0, 1 } ** 3;

    // Okay, that's all of the problems. Let's see the results.
    //
    // We could print these arrays with leet[0], leet[1],...but let's
    // have a little preview of Zig 'for' loops instead:
    //
    //    for (<item array>) |item| { <do something with item> }
    //
    // Don't worry, we'll cover looping properly in upcoming
    // lessons.
    //
    std.debug.print("LEET: ", .{});

    for (leet) |n| {
        std.debug.print("{}", .{n});
    }

    std.debug.print(", Bits: ", .{});

    for (bit_pattern) |n| {
        std.debug.print("{}", .{n});
    }

    std.debug.print("\n", .{});
}
