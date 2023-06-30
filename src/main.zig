const std = @import("std");
const runner = @import("./execises/runner.zig");

const List = @import("./LinkedLists/LL.zig");

fn seedList(list: *List.List) !void {
    try list.Push(0);
    try list.Push(1);
    try list.Push(2);
    try list.Push(3);
    try list.Push(4);
    try list.Push(5);
    try list.Push(6);
    try list.Push(7);
    try list.Push(8);
    try list.Push(9);
    try list.Push(10);
    try list.Push(11);
}

pub fn main() !void {
    std.debug.print("======{s}======\n", .{"Ziglings"});
    var list = List.List{};
    try seedList(&list);
    var ptr = list.head;
    std.debug.print("Size:\t{d}\n", .{list.size});
    std.debug.print("First:\t{d}\n", .{list.head.?.data});
    std.debug.print("Last:\t{d}\n", .{list.tail.?.data});
    var i: i32 = 0;
    std.debug.print("===================\n", .{});
    list.PrettyPrint();
    i = 0;
    var pop: i32 = 0;
    while (i < 5) {
        pop = list.Pop();
        std.debug.print("popped:\t{d}\n", .{pop});
        i += 1;
    }
    i = 0;
    ptr = list.head;
    std.debug.print("===================\n", .{});
    list.PrettyPrint();
    i = 0;
    var shift: i32 = 0;
    while (i < 5) {
        shift = list.Shift();
        std.debug.print("Shifted:\t{d}\n", .{shift});
        i += 1;
    }
    std.debug.print("===================\n", .{});
    list.PrettyPrint();
    try seedList(&list);
    std.debug.print("Before Reverse:\t", .{});
    list.PrettyPrint();
    const rev = try list.Reverse();
    std.debug.print("After  Reverse:\t", .{});
    rev.PrettyPrint();
    std.debug.print("===================\n", .{});
    try runner.ExerciseRunner();
}
