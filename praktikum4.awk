Isi praktikum4.awk

BEGIN {
    print "LAPORAN NILAI MAHASISWA"
    print "=========================================="
    printf "%-12s %-10s %-10s\n", "Nama", "Total", "Rata-rata"
    print "------------------------------------------"
}

{
    # Menyimpan total nilai dan menghitung berapa kali nama muncul
    sum[$1] += $2
    count[$1]++
}

END {
    # Loop ini hanya akan berjalan SATU KALI untuk setiap nama unik
    for (nama in sum) {
        rata_rata = sum[nama] / count[nama]
        printf "%-12s %-10d %-10.1f\n", nama, sum[nama], rata_rata
        n++
    }
    print "------------------------------------------"
    printf "Total Mahasiswa: %d\n", n
}
