domain Issue9638 is
	object Dog;
	object Dog is end object;
	
	object Person;
	object Person is end object;
	
	relationship R1 is
		Dog unconditionally is_owned_by one Person,
		Person unconditionally owns many Dog;
		
	public service test();
end domain;