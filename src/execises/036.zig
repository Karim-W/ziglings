const std = @import("std");

// Zig lets us write integers in hexadecimal format:
//
//     0xf (is the value 15 in hex)
//
// Web browsers let us specify colors using a hexadecimal
// number where each byte represents the brightness of the
// Red, Green, or Blue component (RGB) where two hex digits
// are one byte with a value range of 0-255:
//
//     #RRGGBB
//
// Please define and use a pure blue value Color:
const Color = enum(u32) {
    red = 0xff0000,
    green = 0x00ff00,
    blue = 0x0000ff,
};

pub fn Ex() void {
    std.debug.print("======Ex36======\n", .{});
    // Remember Zig's multi-line strings? Here they are again.
    // Also, check out this cool format string:
    //
    //     {x:0>6}
    //      ^
    //      x       type ('x' is lower-case hexadecimal)
    //       :      separator (needed for format syntax)
    //        0     padding character (default is ' ')
    //         >    alignment ('>' aligns right)
    //          6   width (use padding to force width)
    //
    // Please add this formatting to the blue value.
    // (Even better, experiment without it, or try parts of it
    // to see what prints!)
    std.debug.print(
        \\<p>
        \\  <span style="color: #{x:0>6}">Red</span>
        \\  <span style="color: #{x:0>6}">Green</span>
        \\  <span style="color: #{x:0>6}">Blue</span>
        \\</p>
        \\
    , .{
        @enumToInt(Color.red),
        @enumToInt(Color.green),
        @enumToInt(Color.blue), // Oops! We're missing something!
    });
}
