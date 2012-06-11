-- Ada Specification File --
-- bingo.ads --
-- Uday Subedi, Cameron University --
-- Programming language and compilers ---

package bingo is
type cardType is private;

procedure create(card: out cardType);		
-- Creates a random unmarked Bingo card.

procedure mark(card: in out cardType; col: in character; num: in integer);	
-- Receives a card, a column label and a number. Then, it marks
-- the proper square on the Bingo card.

procedure print(card : in cardType);	
-- Outputs a card. Marked squares will be displayed with an asterisk *, for example, 45*.

private
	type square is
	record
		value : integer := 0;
		marked : boolean := false;
	end record;
	type cardType is array(1..5, 1..5) of square;

end bingo;

