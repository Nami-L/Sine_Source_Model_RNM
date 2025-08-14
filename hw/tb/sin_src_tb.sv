`timescale 1ns/1ps
module tb;

    real out_sine;

    // Instancia del módulo generador de seno
    sin_src sine_inst (
        .out(out_sine)
    );

    initial begin
        $display("Tiempo(ns)   Seno(V)");
        repeat (40) begin
            #1;
            $display("%t   %f", $time, out_sine);
        end
        $finish;
    end
    initial begin
    $timeformat(-9, 1, "ns", 10);
    $fsdbDumpvars;  // Synopsys VCS
  end


endmodule
