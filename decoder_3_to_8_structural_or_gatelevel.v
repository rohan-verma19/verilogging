module decoder_3_to_8_structural_or_gatelevel(in_lines, out_lines);
    
    input[2:0] in_lines;
    output[7:0] out_lines;

    //* Gate-level modelling
    and(out_lines[0], ~in_lines[2], ~in_lines[1], ~in_lines[0]);
    and(out_lines[1], ~in_lines[2], ~in_lines[1],  in_lines[0]);
    and(out_lines[2], ~in_lines[2],  in_lines[1], ~in_lines[0]);
    and(out_lines[3], ~in_lines[2],  in_lines[1],  in_lines[0]);
    and(out_lines[4],  in_lines[2], ~in_lines[1], ~in_lines[0]);
    and(out_lines[5],  in_lines[2], ~in_lines[1],  in_lines[0]);
    and(out_lines[6],  in_lines[2],  in_lines[1], ~in_lines[0]);
    and(out_lines[7],  in_lines[2],  in_lines[1],  in_lines[0]);

    always @(in_lines) begin
        #0 
        $display("Encoded Input : %b\nDecoded Output : %b\n", in_lines, out_lines);
    end

endmodule

module decoder_3_to_8_structural_or_gatelevel_test;

    reg[2:0] in_lines;
    wire[7:0] out_lines;
    
    decoder_3_to_8_structural_or_gatelevel wire_driver(in_lines, out_lines);
    
    initial begin
            in_lines = 3'b000;
        #20 in_lines = 3'b001;
        #20 in_lines = 3'b010;
        #20 in_lines = 3'b011;
        #20 in_lines = 3'b100;
        #20 in_lines = 3'b101;
        #20 in_lines = 3'b110;
        #20 in_lines = 3'b111;
        #20 $finish;        
    end

endmodule





