#! /bin/bash
echo "Digite sua nota (0 a 10): "
read charnota
nota=$(echo $charnota | bc)
while [ $nota -ge 0 -a "$charnota" != 'q' ]
do
	if [[ "$charnota" != [a-zA-Z]* ]]
		then if [ $nota -le 10 -a $nota -ge 0 ]
			then if [ $nota -ge 9 ]
				then echo "Muito bem"
				elif [ $nota -ge 7 ]
					then echo "Bem"
				elif [ $nota -ge 5 ]
					then echo "Medio"
				else
					echo "Insuficiente"
			fi
		fi
	fi
	echo "Digite sua nota (0 a 10): "
	read charnota
	nota=$(echo $charnota | bc)
done
