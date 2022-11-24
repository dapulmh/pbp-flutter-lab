# Tugas 9 : Integrasi Web Service pada Flutter

Repositori ini milik Daffa Maulana Haekal (2106652083) untuk kebutuhan [Tugas7](https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tugas/tugas-7/)

## Pertanyaan

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Jawab:
Iya, kita tetap dapat mengambil data JSON tanpa perlu membuat model terlebih dahulu. Akan tetapi bukan merupakan best practice. Hal tersebut akan membuat penyimpanan data yang telah di fetch akan berantakan sehingga lebih baik membuat model sebelum melakukan pengembalian data json karena data akan disimpan menjadi lebih rapi dan terstruktur sehingga mudah untuk diolah.

2.Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Jawab:

- FutureBuilder: sebagai widget yang dapat membangun dirinya sendiri sesuai dengan status yang pada future sebagai wujud komputasi asinkronus
- ListView : dengan method builder() untuk membuat cards pada layar sesuai dengan banyak data yang di-fetch sebelumnya.
- InputDecoration : untuk mengkustomisasi tampilan dari TextFormField, seperti menambahkan teks bantuan, label, ikon, serta border.
- ElevatedButton: untuk menampilkan button untuk kembali ke page my watch list setelah masuk ke bagian detail.
- beberapa Widget lainnya dari lab dan tugas sebelumnya.


3.Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

Jawab:

- Diberikan alamat URI dari API endpoint untuk di-parse agar dapat di-fetch.
- Data akan di-fetch dari API endpoint dari Heroku (Lab 3)
- Data yang telah di-fetch akan di-decode menjadi JSON dengan format UTF-8.
- Dari model yang telah dibuat sebelumnya, data JSON akan diubah menjadi data dalam bentuk model agar mudah untuk diolah.
- Data yang sudah didapat akan ditampilkan secara langsung atau melewati beberapa operasi logika di aplikasi Flutter.

4.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Jawab:

- Menambahkan dependency http ke dalam projek Tugas Flutter ini.
- Membuat model MyWatchlist sesuai dengan respons dari data yang diambil, yaitu atribut/fields yang sesuai dengan model yang dibuat pada Tugas 3.
- Membuat halaman my_watchlist_page untuk menampilkan setiap identitas film yang di-fetch sebelumnya.
- Membuat halaman my_watchlist_detail yang menampilkan setiap detail dari objek MyWatchlist yaitu setiap atribut yang dimilikinya.
- Membuat button back dengan menggunakan ElevatedButton di halaman my_watchlist_detail agar pengguna dapat kembali ke halaman sebelumnya.
- Melakukan refactoring files yang ada sebelumnya dari Tugas 6 dan 7.
