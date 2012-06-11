-- Main.adb--
-- Bingo Driver Program --
-- Uday Subedi, Prog. lang. and compilers --


with Text_IO;
with bingo;	

procedure main is

-- instaniate integer ada text package
package Int_IO is new Text_IO.Integer_IO(Integer);

use bingo;
use Text_IO;
	
--variables inintialized here
board: cardType;	
value: Positive;	
title : Character;	

begin

	bingo.create(board);
	
	for game_call in 1..25 loop
		Put_line("          B----------I------------N-----------G-----------O  ");
		bingo.print(board);
		New_Line;


		put_line("** Game Moderator starts calling the number **");
		put_line("** Enter the selection in (Title Value) order. eg B45 or b45 **");
		Put("** Enter the selection: ");
	
		Text_IO.Get(title);
		Int_IO.Get(value);

		-- start marking the coresponding location
		bingo.mark(board, title, value);

	end loop;

end main;
