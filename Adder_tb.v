`timescale 10ns/1ns
module adder_tb;


//change inputs to reg and outputs as wire
parameter n=4;
reg [ (n-1):0] in1,in2;
wire[n:0] sum;
integer i;


//instantiate the testing module
adder testing ( in1, in2, sum);

initial
begin

  printheader();
  for(i=0; i<20; i = i+1)
    begin
      in1 <= {$random}%16;
      in2 <= {$random}%16;
      #5;           //to wait for the in1 and in2 to load properly
      printresult();
    end

  $finish;
  
end



task printresult();
  if(sum == in1 + in2)
    $display("%d                 %d               %d          %t             CORRECT :)", in1,in2,$time,sum);
  else
    $display("%d                 %d               %d          %t             WRONG :(", in1,in2,$time,sum);
endtask


task printheader();
  
  $display(" Input 1                      Input 2                      Sum                     Time                  STATUS\n");
  
  
endtask


endmodule