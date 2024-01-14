//
// The Zig language is in rapid development and continuously
// improves the language constructs. Ziglings evolves with it.
//
// Until version 0.11, Zig's 'for' loops did not directly
// replicate the functionality of the C-style: "for(a;b;c)"
// which are so well suited for iterating over a numeric
// sequence.
//
// Instead, 'while' loops with counters clumsily stood in their
// place:
//
//     var i: usize = 0;
//     while (i < 10) : (i += 1) {
//         // Here variable 'i' will have each value 0 to 9.
//     }
//
// But here we are in the glorious future and Zig's 'for' loops
// can now take this form:
//
//     for (0..10) |i| {
//         // Here variable 'i' will have each value 0 to 9.
//     }
//
// The key to understanding this example is to know that '0..9'
// uses the new range syntax:
//
//     0..10 is a range from 0 to 9
//     1..4  is a range from 1 to 3
//
// At the moment, ranges are only supported in 'for' loops.
//
// Perhaps you recall Exercise 13? We were printing a numeric
// sequence like so:
//
//     var n: u32 = 1;
//
//     // I want to print every number between 1 and 20 that is NOT
//     // divisible by 3 or 5.
//     while (n <= 20) : (n += 1) {
//         // The '%' symbol is the "modulo" operator and it
//         // returns the remainder after division.
//         if (n % 3 == 0) continue;
//         if (n % 5 == 0) continue;
//         std.debug.print("{} ", .{n});
//     }
//
// We can achieve the same, using a 'for' loop and a range, without
// having to initialise 'var n':
//
//     for (0..21) |n| {
//             // The '%' symbol is the "modulo" operator and it
//             // returns the remainder after division.
//             if (n % 3 == 0) continue;
//             if (n % 5 == 0) continue;
//             std.debug.print("{} ", .{n});
//         }
//
// That's a bit nicer, right?
//
// Of course, both 'while' and 'for' have different advantages.
// Exercises 11, 12, and 14 would NOT be simplified by switching
// a 'while' for a 'for'.
//
//
// According to wikipedia: In mathematics, the factorial of a
// non-negative integer n, denoted by n!, is the product of
// all positive integers less than or equal to n.
//
// The factorial can be calculated recursively, but here let's
// try out the new form of 'for' to calculate 10! :
//
const std = @import("std");

const FactorialError = error{ NonPositive };

pub fn main() !void {

    var factorial: u64 = undefined;

    // I want to print 10!
    for (???) |n| {
        // 0! is a special case, and by convention equals 1.
        // we don't handle that case in this exercise
        if (n < 1) return FactorialError.NonPositive;
        if (n == 1) {
            factorial = 1;
        } else factorial = factorial * n;
    }

    std.debug.print("{}\n", .{ factorial });
}

