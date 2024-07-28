//
// The last two exercises were functionally identical. Continue
// expressions really show their utility when used with 'continue'
// statements!
//
// Example:
//
//     while (condition) : (continue expression) {
//
//         if (other condition) continue;
//         more statements;
//     }
//
// The continue statement causes the rest of the statements in the block {} to be skipped
// for this iteration of the loop.
//
// Then, the "continue expression" is executed and then 
// the condition is checked again.  If the condition is true, the block executes again.
//

const std = @import("std");

pub fn main() void {
    var n: u32 = 1;

    // I want to print every number between 1 and 20 that is NOT
    // divisible by 3 or 5.
    while (n <= 20) : (n += 1) {
        // The '%' symbol is the "modulo" operator and it
        // returns the remainder after division.
        if (n % 3 == 0) ???;
        if (n % 5 == 0) ???;
        std.debug.print("{} ", .{n});
    }

    std.debug.print("\n", .{});
}
