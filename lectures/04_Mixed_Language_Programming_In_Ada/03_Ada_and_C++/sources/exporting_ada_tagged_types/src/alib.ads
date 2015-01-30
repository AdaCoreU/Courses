with Interfaces.C;

package ALib is

	type Animal is tagged record
		The_Age : Interfaces.C.int;
	end record;
	pragma Convention (CPP, Animal);

	function New_Animal return Animal'Class;
	pragma Export(CPP, New_Animal);

	function Age(X : Animal) return Interfaces.C.int;
	pragma Export(CPP, Age);

end ALib;