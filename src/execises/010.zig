const std = @import("std");

pub fn Ex() void {
    std.debug.print("======Ex10======\n", .{});
    const discount = true;
    // Please use an if...else expression to set "price".
    // If discount is true, the price should be $17, otherwise $20:
    const price: u8 = if (discount) 17 else 20;

    std.debug.print("With the discount, the price is ${}.\n", .{price});
}
