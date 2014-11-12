module adder #(parameter n =4)( input[ (n-1):0] in1, in2, output[n:0] sum);

assign sum = in1 + in2;


endmodule


