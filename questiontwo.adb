pragma SPARK_Mode;

package body questiontwo is 
   
   procedure NewProc (X, Y : in Integer; Z : out Integer) is
   AUX : Integer;
     begin
      AUX := 0;
      Z := X;
      loop
      pragma Loop_Invariant (X = Z - AUX and AUX <= Y and 0 <= AUX );
      exit when AUX = Y;
      AUX := AUX + 1;
      Z := Z + 1;
      end loop;
   end NewProc;
   
end questiontwo;   
     
