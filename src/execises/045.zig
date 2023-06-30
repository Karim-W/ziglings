const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex46======\n", .{});
    const result = deepThought() orelse 42;

    // Please threaten the result so that answer is either the
    // integer value from deepThought() OR the number 42:
    const answer: u8 = result;

    std.debug.print("The Ultimate Answer: {}.\n", .{answer});
}

fn deepThought() ?u8 {
    // It seems Deep Thought's output has declined in quality.
    // But we'll leave this as-is. Sorry Deep Thought.
    return null;
}
// Blast from the past:
//
// Optionals are a lot like error union types which can either
// hold a value or an error. Likewise, the orelse statement is
// like the catch statement used to "unwrap" a value or supply
// a default value:
//
//    var maybe_bad: Error!u32 = Error.Evil;
//    var number: u32 = maybe_bad catch 0;
//
