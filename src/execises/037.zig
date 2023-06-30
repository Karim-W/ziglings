const std = @import("std");

// We'll use an enum to specify the character class.
const Class = enum {
    wizard,
    thief,
    bard,
    warrior,
};

// Please add a new property to this struct called "health" and make
// it a u8 integer type.
const Character = struct {
    class: Class,
    gold: u32,
    experience: u32,
    health: u8 = 100,
};

pub fn Ex() void {
    std.debug.print("======Ex37======\n", .{});
    // Please initialize Glorp with 100 health.
    var glorp_the_wise = Character{
        .class = Class.wizard,
        .gold = 20,
        .experience = 10,
    };

    // Glorp gains some gold.
    glorp_the_wise.gold += 5;

    // Ouch! Glorp takes a punch!
    glorp_the_wise.health -= 10;

    std.debug.print("Your wizard has {} health and {} gold.\n", .{
        glorp_the_wise.health,
        glorp_the_wise.gold,
    });
}
