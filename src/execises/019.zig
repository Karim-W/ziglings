const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex19======\n", .{});
    std.debug.print("Powers of two: {} {} {} {}\n", .{
        twoToThe(1),
        twoToThe(2),
        twoToThe(3),
        twoToThe(4),
    });
}

// Please give this function the correct input parameter(s).
// You'll need to figure out the parameter name and type that we're
// expecting. The output type has already been specified for you.
//
fn twoToThe(my_number: u32) u32 {
    return std.math.pow(u32, 2, my_number);
    // std.math.pow(type, a, b) takes a numeric type and two
    // numbers of that type (or that can coerce to that type) and
    // returns "a to the power of b" as that same numeric type.
}
