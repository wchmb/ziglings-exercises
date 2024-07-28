//
// Behold the 'for' loop! For loops let you execute code for each
// element of an array:
//
//     for (items) |item| {
//
//         // Do something with item
//         // item does not have to be declared. The type of item is determined by 
//         // the type of the element in the array.
//         // item is a variable that is equal to the particular element of the array items
//         // that the loop is currently on.
//
//     }
//
const std = @import("std");

pub fn main() void {
    const story = [_]u8{ 'h', 'h', 's', 'n', 'h' };

    std.debug.print("A Dramatic Story: ", .{});

    for (???) |???| {
        if (scene == 'h') std.debug.print(":-)  ", .{});
        if (scene == 's') std.debug.print(":-(  ", .{});
        if (scene == 'n') std.debug.print(":-|  ", .{});
    }

    std.debug.print("The End.\n", .{});
}
// Note that 'for' loops also work on things called "slices" and "iterators",
// which we'll see later.
