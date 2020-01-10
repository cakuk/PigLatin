public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
{
	//precondition: sWord is a valid String of length greater than 0.
	//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
		int ans = -1;
		boolean found = false;
		for(int i = 0; i < sWord.length(); i = i + 1) {
		  if(found == false) {
		    if(sWord.substring(i, i + 1).equals("a") || sWord.substring(i, i + 1).equals("e") || sWord.substring(i, i + 1).equals("i") || sWord.substring(i, i + 1).equals("o") || sWord.substring(i, i + 1).equals("u")) {
		      ans = i;
		      found = true;
		    } 
		  }
		}
		return ans;
}

public String pigLatin(String sWord)
{
	//precondition: sWord is a valid String of length greater than 0
	//postcondition: returns the pig latin equivalent of sWord
	
	if(findFirstVowel(sWord) == -1) {
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0) {
		return sWord + "way";
	} 
	if(sWord.substring(0, 2).equals("qu")) {
		return sWord.substring(2) + "quay"; // check--------------------
	} 
	if(findFirstVowel(sWord) > 0) {//sWord.substring(0, 1).!equals("a") || sWord.substring(0, 1).!equals("e") || sWord.substring(0, 1).!equals("i") || sWord.substring(0, 1).!equals("o") || sWord.substring(0, 1).!equals("u")) {
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	} else {
		return "ERROR!";
	}

}
