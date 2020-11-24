with Ada.Text_IO, Ada.Integer_Text_IO, Stack;
procedure Test_Stack is

   A: Integer;
   X: Integer;

begin
   loop
      Ada.Text_IO.Put("Enter an integer to push please. 0 to quit --> ");
      Ada.Integer_Text_IO.Get(X);
      Stack.Push(X);
      exit when (X = 0);

   end loop;

   Ada.Text_IO.Put("Stack contents: ");
   while (not Stack.isEmpty) loop
      Stack.Pop(A);
      Ada.Text_IO.Put(Integer'Image(A));
   end loop;

end Test_Stack;
