#!/bin/bash

  if [ "$1" == "mickey" ]; then
    # printf '\033]11;#231C1F\007'
    printf '\033]11;#332C1F\007'
  elif [ "$1" == "drip" ]; then
    printf '\033]11;#292476\007'
  elif [ "$1" == "other" ]; then
    printf '\033]11;#2533f0\007'
  else
    printf '\033]11;#0f160f\007'
  fi

  exit 0
