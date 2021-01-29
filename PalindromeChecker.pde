public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
 int a = word.length()-1;
  String word1="";
  for(int i=0;i<=a;i++){
    if(word.substring(i,i+1).equals(" ")&&Character.isLetter(word.charAt(i))){
    }
    else{
      word1+=word.substring(i,i+1).toLowerCase();
    }
  }
  if(reverse(word).equals(word1)){
    return true;
  }
  else{
    return false;
  }
}
public String reverse(String str)
{
     String sNew = new String();
    for(int i=str.length()-1;i>=0;i--){
      if(str.substring(i,i+1).equals(" ")&&Character.isLetter(str.charAt(i))){
      }
      else{
        sNew+=str.substring(i,i+1).toLowerCase();
      }
    }
    return sNew;
}


