domain nestedTypes is
	public type IntSeq is sequence of integer;
	public type AnotherIntSeq is IntSeq;
	service test();
end;