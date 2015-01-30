const int x = 30;

const int getRef(char* aString)
{
	return x;
}

extern "C" {
	const int getRefWithString(char* aString)
	{
		return x;
	}
}
