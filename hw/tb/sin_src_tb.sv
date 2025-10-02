`timescale 1ns/1ps 
// Unidad de tiempo de simulacion /resolucion
// Queire decir que en 1 ns para 1 ps son 10e3 es decir 1000 muestras, por cada nano segundo me simula 1000 puntos
module tb;

    real out_sine;

    // Instancia del módulo generador de seno
    sin_src sine_inst (
        .out(out_sine)
    );

    initial begin
        $display("Tiempo(ps)   Seno(V)");
        repeat (100) begin

    // El rtl trabaja con 1e-9, es decir cada nanosegundo, entonces
    //Si pongo que sea 100 cada valor, hara 10 muestras solamente, porque 100*10 = 1000 psy esto es 1ns
    
    // pero si. pongo 50 hara  tendre 20 muestras, es decir, 50*20 = 1000 y esto es 1 ns, pero como tengo un repeat de 1000, seria 50*100= 50 000 ps o 50 ns, y como una señal se compelta en 1ns, entonces tengo 50 señales
       // si pongo 10, tendre 100 muestras, es decir 10*100=1000 y esto es 1ns, y como el repeat es de 1000*10=10.000 osea 10 ciclos pero con mas muestras mas fino
            #(10ps); // tiempo para la simulacion
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