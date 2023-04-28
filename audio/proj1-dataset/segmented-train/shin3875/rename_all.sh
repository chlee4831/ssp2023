#for w in 0 1 2 3 4 5 6 7 8 9
#for w in 1 2 3 4 5 6 7 8 9
#do
#mv kdigits

for w in $(seq 0 2); do
  for trial in $(seq 0 9); do
    #f1="${w}/kdigits${w}-${trial}.wav"
    #f2="${w}/kdigits${trial}-${w}.wav"
    f1="${w}/kdigits${trial}_${w}.wav"
    f2="${w}/kdigits${trial}-${w}.wav"
    mv ${f1} ${f2}
  done
done

for w in $(seq 3 9); do
  for trial in $(seq 0 9); do
    #f1="${w}/kdigits${w}-${trial}.wav"
    #f2="${w}/kdigits${trial}-${w}.wav"
    ((w2=(w+1)%10))
    f1="${w}/kdigits${trial}_${w2}.wav"
    f2="${w}/kdigits${trial}-${w}.wav"
    mv ${f1} ${f2}
  done
done
