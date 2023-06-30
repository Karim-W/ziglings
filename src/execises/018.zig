const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex18======\n", .{});
    // The new function deepThought() should return the number 42. See below.
    const answer: u8 = deepThought();

    std.debug.print("Answer to the Ultimate Question: {}\n", .{answer});
}

// Please define the deepThought() function below.
//
// We're just missing a couple things. One thing we're NOT missing is the
// keyword "pub", which is not needed here. Can you guess why?
//
fn deepThought() u8 {
    return 42; // Number courtesy Douglas Adams
}
