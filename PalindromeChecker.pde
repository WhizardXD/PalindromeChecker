public void setup() {
    String lines[] = loadStrings("palindromes.txt");
    println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++) {
        if (palindrome(lines[i]) == true) {
            println(lines[i] + " IS a palindrome.");
        } else {
            println(lines[i] + " is NOT a palindrome.");
        }
    }
}

public boolean palindrome(String word) {
    String process = word.toLowerCase();
    String letters = "";
    for (int i = 0; i < process.length(); i++) {
        if (Character.isLetter(process.charAt(i))) {
            letters += process.substring(i,i+1);
        }
    }
    if (letters.equals(reverse(letters))) {
        return true;
    }
    return false;
}

public String reverse(String str) {
    String reversed = "";
    for (int i = str.length(); i > 0; i--) {
        reversed += str.substring(i-1,i);
    }
    return reversed;
}
