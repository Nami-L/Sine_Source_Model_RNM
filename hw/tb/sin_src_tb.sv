`timescale 1ns/1ps
module tb;

    real out_sine;

    // Instancia del módulo generador de seno
    sin_src sine_inst (
        .out(out_sine)
    );

    initial begin
        $display("Tiempo(ps)   Seno(V)");
        repeat (1000) begin
            #(50ps);
            $display("%10t: %6.3f", $realtime, out_sine);
        end
        $finish;
    end
    initial begin
                // Configurar formato de tiempo para mejor visualización
        //$timeformat(-12, 3, " ps", 8);
    $timeformat(-12, 1, "ps", 10);
    $fsdbDumpvars;  // Synopsys VCS
  end


endmodule