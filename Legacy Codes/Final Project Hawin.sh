#!/bin/bash

lagi='y'
while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
do
	echo -n "masukam username : ";
	read usr
	echo -n "Masukkan pin : ";
	read pin
	u=hawin;
	p=1;
	o=hmm;
	s=2;
	z=zaid;
	x=3;
	if [[ $usr == $u && $p == $pin ]];
	then
	echo "hy $user Kamu berhasil login."
	ulangi='y';
	elif [[ $usr == $o && $s == $pin ]];
	then
	echo "hy $user Kamu berhasil login."
	ulangi='y';
	elif [[ $usr == $z && $x == $pin ]];
	then
	echo "hy $user Kamu berhasil login."
	ulangi='y';
	else
		echo "Kamu Salah memasukkan pin"
		echo "Tolong ulangi lagi."
		echo -n "Ingin Lanjut ke Program? [y/n]: ";
		read lagi;
		if [ $lagi == 'n' ]
		then
			echo "+================================+"
			echo "| Anda keluar dari program ini...|"
			echo "+================================+"
			exit 
		fi
	fi
	clear
ulangi='y';
while [ $ulangi == 'y' ] || [ $ulangi == 'Y' ]
do
clear
echo "+=================================+"
echo "  hy $usr				";
echo "  Menu TUNAIGO			";
echo "+=================================+"
echo "| 1. ajukan pinjaman		|";
echo "| 2. lanjutkan pinjaman		|";
echo "| 3. Cetak detail pinjaman	|";
echo "| 4. konfirmasi pinjaman	|";
echo "| 5. about us			|";
echo "| 6. exit			|";
echo "+=================================+"
read -p " input menu : " menu

case $menu in
1)
clear;
	echo -n "Masukkan jumlah pinjaman : ";
	read pj
	echo -n "Masukkan periode pinjaman : ";
	read pp
	let pc=$pj/$pp/1/100;
	let ccl=$pj/$pp+pc;
	echo "cicilan anda perbulan : Rp $ccl";
;;

2)
clear;
echo "============================================";
echo -n "Masukan Nama lengkap			: ";
read nm 
echo -n "Masukan Alamat				: ";
read lmt
echo -n "E-mail					: ";
read eml
echo -n "No HP(+62)				: ";
read hp
echo -n "Masukan nomor ktp			: ";
read ktp
echo -n "Masukan jenis bank anda			: ";
read bnk
echo -n "Masukan nomor rekening bank anda	: ";
read rek
echo "============================================";
;;

3)
clear;
echo "+====================================+";
echo "+====================================+";
echo " DATA NASABAH                       ";
echo "+====================================+";
echo " JUMLAH PINJAMAN	: Rp $pj           "
echo " PERIODE PINJAMAN: $pp bulan        ";
echo " CICILAN		: Rp $ccl          ";
echo "+====================================+";
echo " NAMA		: $nm              ";
echo " ALAMAT		: $lmt             ";
echo " E-mail		: $eml             "
echo " Nomor Hp	: $hp              "
echo " KTP		: $ktp             ";
echo " REKENING	: $rek             ";
echo "+====================================+";
echo "+====================================+";
sleep 5s
;;

4)
clear;
echo " pastikan data diri anda sudah terisi dengan benar!!";
echo -n "konfirmasi pinjaman [y/n] : ";
read lanjut
if [ $lanjut = 'n' ]
then
	exit
fi
echo "transaksi sedang dalam proses, apabila uang belum terkirim dalam 24 jam silahkan hubungi customer service (000000)";
sleep 5s
clear
while :; do
dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1
if [ $? -eq 0 ];then
echo "$2 > in.fifo"
exit 
fi
done
;;

5)
clear;
echo "TUNAIGO merupakan aplikasi pinjaman online yang terpercaya di Indonesia. Didukung dengan teknologi dan data analytics canggih, TUNAIGO mampu melayani dengan sangat cepat (24 jam) dan dengan persyaratan yang mudah ";
echo "+=========================+"
echo "|layanan pelanggan :	|";
echo "|go.asking@tunaigo.com	|";
echo "+=========================+"
sleep 5s

;;
6)
echo "+=====================================================+"
echo "|   Terima Kasih, telah menggunakan jasa kami....     |"
echo "+=====================================================+"
exit
;;

*)
clear
echo "+=====================================================+"
echo "|    Maaf, menu yang anda masukkan tidak tersedia     |"
echo "+=====================================================+"
;;
esac

echo -n "Apakah anda ingin lanjut ke Program ? [y/n]: ";
read lagi;
while [ $lagi != 'y' ] && [ $lagi != 'Y' ]
do	
	echo "+=====================================================+"
	echo "|        Maaf, input yang anda masukkan salah !!      |"
	echo "+=====================================================+"
	echo -n "Ingin Lanjut ke Program Yang Lain? [y/n]: ";
	read lagi;
	if [ $lagi == 'n' ]
	then
		echo "+=====================================================+"
		echo "|     bye.........................................    |"
		echo "+=====================================================+"
		exit
		break;
fi
done
done
done
