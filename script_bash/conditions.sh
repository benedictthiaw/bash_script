#!/bin/bash

until [ -z $reponse ] || [ $reponse != 'oui' ]; do

	read -p 'Dites oui: ' reponse
done
