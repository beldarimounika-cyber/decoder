`timescale 1ns/1ps

module decoder2x4_tb;

reg [1:0] A;
reg EN;
wire [3:0] Y;

// Instantiate the Decoder
decoder2x4 uut (
    .A(A),
    .EN(EN),
    .Y(Y)
);

initial begin

    $display("-----------------------------------------");
    $display("Time\tEN\tA\tY");
    $display("-----------------------------------------");

    $monitor("%0t\t%b\t%b\t%b", $time, EN, A, Y);

    EN = 0;
    A = 2'b00;
    #10;

    EN = 1;

    A = 2'b00;
    #10;

    A = 2'b01;
    #10;

    A = 2'b10;
    #10;

    A = 2'b11;
    #10;

    EN = 0;
    #10;

    $finish;

end

endmodule