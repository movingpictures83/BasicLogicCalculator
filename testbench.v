module testbench();

//////////////////////////
// INPUTS
reg A, B;
reg[1:0] S;
//////////////////////////

//////////////////////////
// OUTPUTS
wire Result;
//////////////////////////

BasicLogicCalculator myCalculator(A, B, S, Result);

initial begin
/////////////////////////////////////////////////////////////////////////
// AB
A=0; B=0; S=2'b00;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=0; B=1; S=2'b00;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=0; S=2'b00;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=1; S=2'b00;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
/////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////
// A+B
A=0; B=0; S=2'b01;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=0; B=1; S=2'b01;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=0; S=2'b01;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=1; S=2'b01;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
/////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////
// A'
A=0; B=0; S=2'b10;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=0; B=1; S=2'b10;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=0; S=2'b10;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=1; S=2'b10;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
/////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////
// B'
A=0; B=0; S=2'b11;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=0; B=1; S=2'b11;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=0; S=2'b11;  #10; 
if (Result !== 1) begin
           $display("Error: Expected 1 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
A=1; B=1; S=2'b11;  #10; 
if (Result !== 0) begin
           $display("Error: Expected 0 got %d for A=%d, B=%d, S=%d", Result, A, B, S); $stop;
end
/////////////////////////////////////////////////////////////////////////

$display("All tests passed.");
end

endmodule