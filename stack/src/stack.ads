
package Stack with SPARK_Mode
is
   pragma Elaborate_Body;

   Stack_Size : constant := 100;
   type Pointer_Range is range 0 .. Stack_Size;
   subtype Index_Range is Pointer_Range range 1 .. Stack_Size;
   type Vector is array(Index_Range) of Integer;

   S: Vector;
   Pointer: Pointer_Range;

   function isEmpty return Boolean;

   procedure Push(X : in Integer)
     with
       Global => (In_out => (S, Pointer)),
       Depends => (S => (S, Pointer, X),Pointer => Pointer);

   procedure Pop(X : out Integer)
     with
       Global => (input => S,
                 in_out => Pointer),
     Depends => (Pointer => Pointer,
                 X => (S, Pointer));

end Stack;

