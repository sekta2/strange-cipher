# strange-cipher

# What is what
- needle.lua - main alphabet and some helpers
- script.lua - encoder

# How it works
- The text is divided into pairs of 2 characters, then calculate their position in the alphabet (in needles.lua), and in the result (ciphertext) write the difference between the positions as a character from the alphabet.

- Also if the difference is equal to zero, then the very first character in the alphabet is written, if the difference is less than zero (negative), then (total characters) + (negative difference) is written as a character from the alphabet.

- ```
    Using the example:

    60 - 50 = 10( p )

    5 - 5 = 1( q )

    13 - 17 = 63( | )
    ```

# Fact
- This method of encryption was invented overnight ._.