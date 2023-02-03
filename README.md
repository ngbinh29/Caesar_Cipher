# This is Caesar Cipher Project for Odin

## Project Guides and Instructions

### Have you known that?

> In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

### Target

The main purpose of this assignment is that we have to implement the **caesar_cipher** function which takes two arguments:

1. plain text
2. shift factor

and returns the encoded text.

`caesar_cipher("What a string!", 5)`
`=> "Bmfy f xywnsl!"`

You can find more details on [Wikipedia](https://en.wikipedia.org/wiki/Caesar_cipher) or [CS50](https://www.youtube.com/@cs50) Youtube Channel

### How to solve it

There are something you need to be careful here.
First, only alphabetical characters are rotated.
Second, it is case-sensitive.

Now, by reading through the documentation on Wikipedia, we know that there is an algorithm to encode the letter with given shift factor.
> Ci = (Pi + k) % 26
where Ci is index number of encoded letter on alphabet, Pi is the index number of plain letter, k is shift factor. (A->0, ....,Z->25) 26 letters in total

By using this, we can now find out the position of encrypted letter on the alphabet. But letters are represented in decimal code point in ASCII table. The letter 'a' is represented by 65, 'A' is 97. So the starting index for lower character is 97, for upper is 65.

The logic is that we have to iterate through each character in the plain text, see if it is alphabetical or special character. If it's letter from alphabet, check if it's lower or upper in order to use the right index of Pi (plain letter index) to find the Ci (index number of encrypted letter) following by above mentioned algorithm (Caesar's algorithm). If it is not alphabetical character, just keep it that way.
