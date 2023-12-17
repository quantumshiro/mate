const std = @import("std");

const DIMENTION: comptime_int = 2;
const CLASS: comptime_int = 4;
const PATT: comptime_int = 8;

const PATTERN = [PATT][DIMENTION]f16{
    [_]f16{ -10.0, 3.0 },
    [_]f16{ 10.0, 8.0 },
    [_]f16{ -1.0, -2.0 },
    [_]f16{ 1.0, -3.0 },
    [_]f16{ 5.0, 3.0 },
    [_]f16{ -2.0, -8.0 },
    [_]f16{ -3.0, 6.0 },
    [_]f16{ 7.0, -4.0 },
};

const INITCENTERPOSIT = [CLASS][DIMENTION]f16{
    [_]f16{ 1.0, 1.0 },
    [_]f16{ 1.0, -1.0 },
    [_]f16{ -1.0, -1.0 },
    [_]f16{ -1.0, 1.0 },
};

pub fn distance(dim: i8, point1: *f16, point2: *f16) f16 {
    var rntDistance: f16 = 0.0;
    for (0..dim) |i| {
        rntDistance += (point1[i] - point2[i]) * (point1[i] - point2[i]);
    }
    return std.math.sqrt2(rntDistance);
}

pub fn main() !void {
    var endFlag: bool = false;
    _ = endFlag;
    var centerPosit: [CLASS][DIMENTION]f16 = undefined;
    var sum: [CLASS][DIMENTION]f16 = undefined;
    var elementNum: [CLASS]i8 = undefined;
    var tempDisance: [CLASS]f16 = undefined;
    var class_num: [CLASS]i8 = undefined;
    _ = class_num;
    for (0..DIMENTION) |i| {
        for (0..DIMENTION) |j| {
            centerPosit[i][j] = INITCENTERPOSIT[i][j];
        }
    }

    while (1) {
        // initialize
        for (0..CLASS) |i| {
            for (0..DIMENTION) |j| {
                sum[i][j] = 0.0;
            }
            elementNum[i] = 0;
        }

        // decide class
        for (0..PATT) |i| {
            for (0..CLASS) |j| {
                tempDisance[j] = distance(DIMENTION, &PATTERN[j][0], &centerPosit[i][0]);
            }
        }
    }
}
