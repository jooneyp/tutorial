
#!/bin/ksh
#chmod +x bkup.sh


#KGC key generation
cd KGC
 ./BB_KGC_Setup
cd ..
cp -r KGC/new_param/g.param My_param
cp -r KGC/new_param/g_1.param My_param
cp -r KGC/new_param/g_2.param My_param
cp -r KGC/new_param/h_1.param My_param
cp -r KGC/new_param/h_2.param My_param
cp -r KGC/new_param/h_3.param My_param
cp -r KGC/new_param/h_4.param My_param
cp -r KGC/new_param/h_5.param My_param
cp -r KGC/new_param/msk_key.param My_param

#DNS <-> KGC level 1


cp -r DNS/Input_Domain_name.txt KGC



cd KGC  
sudo ./BB_KGC_Keygen
cd ..



cp -r KGC/My_param/g.param DNS/My_param
cp -r KGC/My_param/g_1.param DNS/My_param
cp -r KGC/My_param/g_2.param DNS/My_param
cp -r KGC/My_param/h_1.param DNS/My_param
cp -r KGC/My_param/h_2.param DNS/My_param
cp -r KGC/My_param/h_3.param DNS/My_param
cp -r KGC/My_param/h_4.param DNS/My_param
cp -r KGC/My_param/h_5.param DNS/My_param

cp -r KGC/new_key_level_1/sk_1.key DNS/My_sk
cp -r KGC/new_key_level_1/sk_2.key DNS/My_sk

cp DNS/Input_Domain_name.txt DNS/My_Domain_name.txt


#DNS <-> DNS2 level n

cp -r DNS2/Input_Domain_name.txt DNS



cd DNS  
sudo ./BB_DNS_Keygen
cd ..



cp -r DNS/My_param/g.param DNS2/My_param
cp -r DNS/My_param/g_1.param DNS2/My_param
cp -r DNS/My_param/g_2.param DNS2/My_param
cp -r DNS/My_param/h_1.param DNS2/My_param
cp -r DNS/My_param/h_2.param DNS2/My_param
cp -r DNS/My_param/h_3.param DNS2/My_param
cp -r DNS/My_param/h_4.param DNS2/My_param
cp -r DNS/My_param/h_5.param DNS2/My_param

cp -r DNS/new_key/sk_1.key DNS2/My_sk
cp -r DNS/new_key/sk_2.key DNS2/My_sk
cp -r DNS/new_key/sk_3.key DNS2/My_sk

cp DNS2/Input_Domain_name.txt DNS2/My_Domain_name.txt