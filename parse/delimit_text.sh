#!/bin/bash
while IFS='.' read -r LINE; do
	echo "delimit stuff"
done << Text
potatoes, green beans, corn, rice, black peas, oranges,

1. 2. 3. 4. 5. 6. 7. 8. 9. 0.
a b c d e f g h i j
just text and spaces
Text
