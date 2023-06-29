const std = @import("std");

pub const Node = struct { data: i32, next: ?*Node = null, prev: ?*Node = null };

pub const List = struct {
    head: ?*Node = null,
    tail: ?*Node = null,
    size: i32 = 0,

    pub fn Push(self: *List, val: i32) !void {
        self.size += 1;
        var node = try std.heap.c_allocator.create(Node);
        node.data = val;
        if (self.head == null) {
            self.head = node;
            self.tail = node;
            return;
        }
        node.prev = self.tail;
        self.tail.?.next = node;
        self.tail = node;
    }

    pub fn Pop(self: *List) i32 {
        if (self.size == 0 or self.tail == null) {
            return -1;
        }
        var node = self.tail;
        var val = node.?.data;
        self.tail = self.tail.?.prev;
        self.tail.?.next = null;
        self.size -= 1;
        return val;
    }

    pub fn PrettyPrint(self: List) void {
        var i: i32 = 0;
        std.debug.print("[", .{});
        var ptr = self.head;
        var max = self.size - 1;
        while (i < max) {
            std.debug.print("{d},", .{ptr.?.data});
            ptr = ptr.?.next;
            i += 1;
        }
        std.debug.print("{d}]\n", .{ptr.?.data});
    }

    pub fn Shift(self: *List) i32 {
        if (self.size == 0 or self.head == null) {
            return -1;
        }
        self.size -= 1;
        const val = self.head.?.data;
        self.head = self.head.?.next;
        self.head.?.prev = null;
        return val;
    }

    pub fn Reverse(self: List) !List {
        var list = List{};
        if (self.tail == null) {
            return list;
        }
        var ptr = self.tail;
        var i: i32 = self.size;
        while (i > 0) {
            try list.Push(ptr.?.data);
            ptr = ptr.?.prev;
            i -= 1;
        }
        return list;
    }
};
