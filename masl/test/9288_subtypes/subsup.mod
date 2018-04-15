domain subsup is 

	object A;
	object A is end object;
	object B;
	object B is end object;
	object C;
	object C is end object;
	
	relationship R1 is A is_a (B, C);
	private service test();
end domain;
