public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  int first = 0;
  word = StripNonAlpha(word.toLowerCase());
  int last = word.length()-1;
  do
  {   
    if (word.charAt(first) != word.charAt(last))
    {
      return false;
    } else
    {
      first++;
      last--;
    }
  } 
  while (first <= last);
  return true;
}
String StripNonAlpha(String lines)
{
  String AlphaOnly = "";
  for (int i = 0; i < lines.length (); i++)
  {
    if (lines.charAt(i)!= ' ' && lines.charAt(i)!= ',' && lines.charAt(i) != '!' && lines.charAt(i) != '?' && lines.charAt(i) != '.' && lines.charAt(i) != '\'')
    {
      AlphaOnly= AlphaOnly + lines.charAt(i);
    }
  }
  return AlphaOnly;
  //return false;
}

