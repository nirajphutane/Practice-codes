# VigenereCipher

Caesar's cipher takes a word and encrypts it by offsetting each letter in the word by a fixed number, the key. For a key of 3, for example: a -> d, p -> s, and y -> b

Vigenere's Cipher is a Caesar cipher, but instead of a single key, a sequence
of keys is used. For example, if we encrypt "bananasinpajamas" with the
key sequence [1, 2, 3], the result would be "ccqbpdtkqqcmbodt":

Word:   b a n a n a s i n p a j a m a s

Keys:   1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1

Cipher: c c q b p d t k q q c m b o d t

Examples:

vigenereCipher("toerrishuman", [1], alphabet) => "upfssjtivnbo"

vigenereCipher("toerrishuman", [1, 2], alphabet) => "uqftsktjvobp"

vigenereCipher("toerrishuman", [1, 2, 3], alphabet) => "uqhstltjxncq"

Write a funcition `vigenereCipher(string, keySequence, alphabet)` that takes a
string and a key-sequence, returning the encrypted word.

# Run:

1.Example

Input:

String word = 'apy'; List<int> keys = [3];

Output:

Process:-

(a) -->	1	+	3	=	4	--> (d)

(p) -->	16	+	3	=	19	--> (s)

(y) -->	25	+	3	=	2	--> (b)

Vigenere Cipher of 'apy' with key(s) '3' is 'dsb'.

2.Example

Input:

String word = 'bananasinpajamas'; List<int> keys = [1, 2, 3];

Output:

Process:-

(b) -->	2	+	1	=	3	--> (c)

(a) -->	1	+	2	=	3	--> (c)

(n) -->	14	+	3	=	17	--> (q)

(a) -->	1	+	1	=	2	--> (b)

(n) -->	14	+	2	=	16	--> (p)

(a) -->	1	+	3	=	4	--> (d)

(s) -->	19	+	1	=	20	--> (t)

(i) -->	9	+	2	=	11	--> (k)

(n) -->	14	+	3	=	17	--> (q)

(p) -->	16	+	1	=	17	--> (q)

(a) -->	1	+	2	=	3	--> (c)

(j) -->	10	+	3	=	13	--> (m)

(a) -->	1	+	1	=	2	--> (b)

(m) -->	13	+	2	=	15	--> (o)

(a) -->	1	+	3	=	4	--> (d)

(s) -->	19	+	1	=	20	--> (t)

Vigenere Cipher of 'bananasinpajamas' with key(s) '1,2,3' is 'ccqbpdtkqqcmbodt'.


3.Example

Input:

String word = 'toerrishuman'; List<int> keys = [1];

Output:

Process:-

(t) -->	20	+	1	=	21	--> (u)

(o) -->	15	+	1	=	16	--> (p)

(e) -->	5	+	1	=	6	--> (f)

(r) -->	18	+	1	=	19	--> (s)

(r) -->	18	+	1	=	19	--> (s)

(i) -->	9	+	1	=	10	--> (j)

(s) -->	19	+	1	=	20	--> (t)

(h) -->	8	+	1	=	9	--> (i)

(u) -->	21	+	1	=	22	--> (v)

(m) -->	13	+	1	=	14	--> (n)

(a) -->	1	+	1	=	2	--> (b)

(n) -->	14	+	1	=	15	--> (o)

Vigenere Cipher of 'toerrishuman' with key(s) '1' is 'upfssjtivnbo'.

4.Example

Input:

String word = 'toerrishuman'; List<int> keys = [1, 2];

Output:

Process:-

(t) -->	20	+	1	=	21	--> (u)

(o) -->	15	+	2	=	17	--> (q)

(e) -->	5	+	1	=	6	--> (f)

(r) -->	18	+	2	=	20	--> (t)

(r) -->	18	+	1	=	19	--> (s)

(i) -->	9	+	2	=	11	--> (k)

(s) -->	19	+	1	=	20	--> (t)

(h) -->	8	+	2	=	10	--> (j)

(u) -->	21	+	1	=	22	--> (v)

(m) -->	13	+	2	=	15	--> (o)

(a) -->	1	+	1	=	2	--> (b)

(n) -->	14	+	2	=	16	--> (p)

Vigenere Cipher of 'toerrishuman' with key(s) '1,2' is 'uqftsktjvobp'.

5.Example

Input:

String word = 'toerrishuman'; List<int> keys = [1, 2, 3];

Output:

Process:-

(t) -->	20	+	1	=	21	--> (u)

(o) -->	15	+	2	=	17	--> (q)

(e) -->	5	+	3	=	8	--> (h)

(r) -->	18	+	1	=	19	--> (s)

(r) -->	18	+	2	=	20	--> (t)

(i) -->	9	+	3	=	12	--> (l)

(s) -->	19	+	1	=	20	--> (t)

(h) -->	8	+	2	=	10	--> (j)

(u) -->	21	+	3	=	24	--> (x)

(m) -->	13	+	1	=	14	--> (n)

(a) -->	1	+	2	=	3	--> (c)

(n) -->	14	+	3	=	17	--> (q)

Vigenere Cipher of 'toerrishuman' with key(s) '1,2,3' is 'uqhstltjxncq'.

