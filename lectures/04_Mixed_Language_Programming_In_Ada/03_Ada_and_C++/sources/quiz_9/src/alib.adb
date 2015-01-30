package body ALib is

	function New_Animal 
		return Animal'Class is
	begin
		return Animal'(The_Age => 20);
	end New_Animal;

	function Age(X : Animal)
		return Interfaces.C.int is
	begin
		return X.The_Age;
	end Age;

end ALib;
