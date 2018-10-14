module FSM(
    input clk,
    output reg[3:0] ones =0,
    output reg[3:0] tens = 0,
    output reg[3:0] hundreds = 0,
    output reg[3:0] thousands = 0);
    parameter s0 = 4'd0 ,s1 = 4'd1, s2 = 4'd2, s3 = 4'd3, s4 = 4'd4, s5 = 4'd5, s6 = 4'd6, s7 = 4'd7, s8 = 4'd8, s9 = 4'd9, s10=  4'd10, s11 = 4'd11, s12 = 4'd12, s13 = 4'd13,s14 = 4'd14;
    reg[3:0] ps = 0, ns = 0;
    always@(posedge clk)
    begin
        ps<= ns;
    end
    always@(posedge clk)
    begin
        case(ps)
            s0:
            begin
                ones<= 1;
                tens<= 0;
                hundreds<= 0;
                thousands<= 0;
                ns<=s1;
            end
            s1:
            begin
                thousands<=0;
                hundreds<=0;
                tens<=1;
                ones<=2;
                ns<=s2;
            end
            s2:
            begin
                thousands<=0;
                hundreds<=1;
                tens<=2;
                ones<=3;
                ns<=s3;
            end
            s3:
            begin
                thousands<=1;
                hundreds<=2;
                tens<=3;
                ones<=3;
                ns<=s4;
            end
            s4:
            begin
                thousands<=2;
                hundreds<=3;
                tens<=3;
                ones<=4;
                ns<=s5;
            end
            s5:
            begin
                thousands<=3;
                hundreds<=3;
                tens<=4;
                ones<=0;
                ns<=s6;
            end
            s6:
            begin
                ns<=s7;
                thousands<=3;
                hundreds<=4;
                tens<=0;
                ones<=5;
            end
            s7:
            begin
                ns<=s8;
                thousands<=4;
                hundreds<=0;
                tens<=5;
                ones<=6;
            end
            s8:
            begin
                ns<=s9;
                thousands<=0;
                hundreds<=5;
                tens<=6;
                ones<=4;
            end
            s9:
            begin
                ns<=s10;
                thousands<=5;
                hundreds<=6;
                tens<=4;
                ones<=7;
            end
            s10:
            begin
                ns<=s11;
                thousands<=6;
                hundreds<=4;
                tens<=7;
                ones<=3;
            end
            s11:
            begin
                ns<=s12;
                thousands<=4;
                hundreds<=7;
                tens<=3;
                ones<=8;
            end
            s12:
            begin
                ns<=s13;
                thousands<=7;
                hundreds<=3;
                tens<=8;
                ones<=0;
            end
            s13:
            begin
                ns<=s14;
                thousands<=3;
                hundreds<=8;
                tens<=0;
                ones<=0;
            end
             s14:
           begin
                ns<=s0;
               thousands<=8;
               hundreds<=0;
               tens<=0;
               ones<=0;
           end
            
        endcase
    end
    endmodule