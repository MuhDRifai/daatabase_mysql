Database adalah representasi kumpulan fakta yang saling berhubungan disimpan secara bersama sedemikian rupa dan tanpa pengulangan (redudansi) yang tidak perlu, untuk memenuhi berbagai kebutuhan.
Di dalam database terdapat field, record, dan table
Field => field merujuk pada kumpulan berbagai karakter didalam database yang mempunyai arti didalamnya.
Record => adalah kumpulan field yang sudah lengkap didalam basis data. Kumpulan tersebut biasanya dihitung di satuan baris yang telah tersedia di database.
Table => Tabel disebut sebagai kumpulan record dan field yang sudah lengkap di sistem database

melihat databases,menggunakan database dan melihat table di dalam databases yang telah dipilih
<img src="/images/databases_table.png>


melihat data table di database
<img src="/images/data.png">

JOIN TABLE 
JOIN adalah proses menggabungkan 2 table atau lebih, dalam mysql terdapat beberapa jenis join.

INNER JOIN 
INNER JOIN membandingkan record di setiap table untuk dicek apakah nilai sama atau tidak.
Jika nilai kedua table sama maka akan terbentuk table baru yang hanya menampilkan record yang sama dari kedua table
<img src="/images/inner_join.png">

LEFT JOIN 
LEFT JOIN menghasilkan nilai berdasarkan table kiri (table1) dan nilai yang sama di table kanan (table2).
Jika table kanan tidak nilainya ada maka akan diisi nilai NULL
<img src="/images/left_join.png">

RIGHT JOIN
Konsep RIGHT JOIN hampir sama seperti LEFT JOIN hanya yang menjadi master adalah table kanan (table 2)
Jika table kanan tidak nilainya ada maka akan diisi nilai NULL
<img src="/images/rigt_join.png">

FLOWCART Z_WALLET
<img src="/images/zwallet_flowcart.png">