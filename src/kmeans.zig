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

const CENTERPOSIT = [CLASS][DIMENTION]f16{
    [_]f16{ 1.0, 1.0 },
    [_]f16{ 1.0, -1.0 },
    [_]f16{ -1.0, -1.0 },
    [_]f16{ -1.0, 1.0 },
};
