#!/bin/bash
echo "Instaling extentions from the extensions.txt file"

while read line;
  do code --install-extension $line;
done < extensions.txt