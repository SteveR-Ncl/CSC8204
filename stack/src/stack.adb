package body Stack with SPARK_Mode
is
   function isEmpty return Boolean
   is
   begin
      return (Pointer = 0);
   end isEmpty;

   procedure Push(X: in Integer) is
   begin
      Pointer := Pointer + 1;
      S(Pointer) := X;
   end Push;

   procedure Pop(X: out Integer) is
   begin
      X:=S(Pointer);
      Pointer := Pointer -1;
   end Pop;



begin
   Pointer := 0;
   S := Vector'(Index_Range => 0);
end Stack;

