pragma SPARK_Mode;

package questiontwo is 
   
   procedure NewProc (X, Y : in Integer; Z : out Integer) with
     Depends => (Z => (X,Y)),
     Pre => (X in 0 .. 1000 and Y in 0 .. 1000),
     Post => (Z = X + Y);

    
end questiontwo;
