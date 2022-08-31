module full_adder(sum, outcarry, a, b, incarry);
    input a, b, incarry;
    output sum, outcarry;

    assign sum = ( (a ^ b) ^ incarry );
    assign outcarry = ( ( (a ^ b) & incarry ) | (a & b) );
endmodule

module testbenchforfulladder;
    wire sum, outcarry;
    reg a, b, incarry;
    full_adder wire_driver(sum, outcarry, a, b, incarry);

    initial begin
              a = 1'b0; b = 1'b0; incarry = 1'b0;
        #20   a = 1'b0; b = 1'b0; incarry = 1'b1;
        #20   a = 1'b0; b = 1'b1; incarry = 1'b0;
        #20   a = 1'b0; b = 1'b1; incarry = 1'b1;
        #20   a = 1'b1; b = 1'b0; incarry = 1'b0;
        #20   a = 1'b1; b = 1'b0; incarry = 1'b1;
        #20   a = 1'b1; b = 1'b1; incarry = 1'b0;
        #20   a = 1'b1; b = 1'b1; incarry = 1'b1;
        
    end
    

endmodule