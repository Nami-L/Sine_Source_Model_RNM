`timescale 1ns / 1ps
`define M_TWO_PI 6.28318530718586476925286766559005768394338798750211641949889

nettype real realnet;

module sin_src (out);
    output real out;
    real outval;
    //assign out = outval;
    parameter  real freq = 1e+9 ; //Frecuencia de muestreo
    parameter real amplitude = 1.0; // Amplitud de la señal
    parameter real ptspercycle = 20; //Numero de puntos por ciclo
    real ts; // sampling period

    initial begin// 20 point er period
        ts = 1s / (freq*ptspercycle);//expressed sample period in terms of timescale (1e-9)
    end
    always #ts begin//// compute , wait ts & repeat
        outval = amplitude * $sin(`M_TWO_PI * freq * $realtime/1s);

    end
    
    assign out = outval;
endmodule