a=`ps -ef  | grep -i "john" | grep -v "grep"| wc -l`
echo $a
if [ $a -lt 1 ];then
#/users/pgrad/velusamk/code/infosec/hashcat/hashcat -m 1500 -a 3 -w 4 --increment --increment-min=8 --increment-max=8 /users/pgrad/velusamk/Downloads/velusamk.hashes ?l?l?l?l?l?l?l?l -O --force
#/users/pgrad/velusamk/code/infosec/hashcat/hashcat --session=1800 --restore
#/users/pgrad/velusamk/code/infosec/hashcat/hashcat -m 1800 -a 3 -w 4 --increment --increment-min=5 --increment-max=5 /users/pgrad/velusamk/Downloads/velusamk.hashes ?l?l?l?l?l?l?l?l -O --force 
#/users/pgrad/velusamk/code/infosec/hashcat/hashcat -a 3 -i --increment-min=5 --increment-max=15 -w 4 -m 10900 /users/pgrad/velusamk/Downloads/velusamk.hashes ?l?l?l?l?l -O --force
#/users/pgrad/velusamk/code/infosec/hashcat/hashcat -m 7400 -a 1 -w 4 /users/pgrad/velusamk/Downloads/velusamk.hashes /users/pgrad/velusamk/Downloads/rockyou_4letters.txt /users/pgrad/velusamk/Downloads/rockyou_4letters.txt -O --force --session=something
#/users/pgrad/velusamk/code/infosec/hashcat/hashcat -m 7400 -a 1 -w 4 /users/pgrad/velusamk/Downloads/velusamk.hashes /users/pgrad/velusamk/Downloads/rockyou_4letters.txt /users/pgrad/velusamk/Downloads/dictionary.txt -O --force --session=something
/users/pgrad/velusamk/Downloads/JohnTheRipper-bleeding-jumbo/run/john --format=PBKDF2-HMAC-SHA256-opencl --mask=?1?1?1?1?1 -1=[a-z] -min-len=5 -max-len=5 /users/pgrad/velusamk/Downloads/velusamk.hashes
echo $?
echo "started new session"
else
echo "exiting without start"
exit 0
fi
