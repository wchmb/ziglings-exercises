//
// Now that you know how "defer" works, let's do something more
// interesting with it.
//
const std = @import("std");

pub fn main() void {
    const animals = [_]u8{ 'g', 'c', 'd', 'd', 'g', 'z' };

    for (animals) |a| printAnimal(a);

    std.debug.print("done.\n", .{});
}

// This function is _supposed_ to print an animal name in parentheses
// like "(Goat) ", but we somehow need to print the end parenthesis
// even though this function can return in four different places!

// In zigling 027 runLater() is said to run when the block, within which runLater() is defined, has finished.
// In zigling 028 the block seems to be the function printAnimal, within which the to be defered print function is formulated, but the defer runs after every if{} block;
// Shoud the explantion in the comments of 027 be reformulated?
fn printAnimal(animal: u8) void {
    std.debug.print("(", .{});

    std.debug.print(") ", .{}); // <---- how?!

    if (animal == 'g') {
        std.debug.print("Goat", .{});
        return;
    }
    if (animal == 'c') {
        std.debug.print("Cat", .{});
        return;
    }
    if (animal == 'd') {
        std.debug.print("Dog", .{});
        return;
    }

    std.debug.print("Unknown", .{});
}
