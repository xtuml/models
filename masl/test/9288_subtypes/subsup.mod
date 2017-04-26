domain subsup is 

	object A;
	object A is end;
	object B;
	object B is end;
	object C;
	object C is end;
	
	relationship R1 is A is_a (B, C);
	private service test();
end