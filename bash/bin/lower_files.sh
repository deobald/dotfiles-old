#!/bin/sh

for i in *; do 
  if [ ! -f "$i" ]; then
    continue
  fi
  mv "$i" `echo $i | tr [:upper:] [:lower:]`; 
done

