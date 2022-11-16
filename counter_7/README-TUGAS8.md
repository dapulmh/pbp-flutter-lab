# Tugas 7 : Elemen Dasar Flutter

Repositori ini milik Daffa Maulana Haekal (2106652083) untuk kebutuhan [Tugas7](https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tugas/tugas-7/)

## Pertanyaan

1.Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

Jawab:
Ketika kita memanggil Navigator.push() route baru akan ditambahkan di puncak stack dan ketika kita melakukan Navigator.pop() kita akan kembali ke route/halaman sebelumnya.

Sedangkan

ketika kita memanggil Navigator.pushReplacement(), route baru akan ditambahkan dengan menggantikan route yang berada di puncak stack (menghapus puncak stack tersebut). Setelah itu, ketika kita lakukan Navigator.pop() kita akan kembali ke route sebelum route yang dihapus.

2.Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Jawab:

-DropdownButton : Widget yang memunculkan dropdown.
-Drawer : widget pada appbar yang memunculkan daftar menu jika ditekan.
-TextFormField : Widget yang menerima input teks masukan dari User.
-TextButton : Widget yang dapat memanggil suatu function ketika ditekan.
-ListView - Sebuah widget yang hanya bisa dibuild dengan salah satu dari beberapa method untuk membuat loop widget berdasarkan sebuah iterable.
-ListTile - Sebuah widget yang memiliki atribut leading, title, subtitle, dan trailing untuk membentuk sebuah kartu.


3.Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

Jawab:

-onPressed : eveint ini akan memanggil properti function yang digunakan ketika widget ditekan. Event ini biasanya terdapat pada widget jenis Button
-onSaved : event ini akan memanggil properti function yang digunakan ketika form disimpan. Event ini biasanya ada pada widget jenis input/form.
-onChanged : event ini akan memanggil properti function yang digunakan ketika isi value dari widget diubah. Event ini biasanya terdapat pada widget jenis input/form.

4.Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Jawab:

Navigator adalah widget yang mengelola sekumpulan widget turunan dengan tumpukan. Banyak aplikasi memiliki navigator di dekat bagian atas hierarki widget mereka untuk menampilkan riwayat logisnya menggunakan hamparan dengan halaman yang terakhir dikunjungi secara visual di atas halaman lama. Navigator menggunakan pola ini memungkinkan navigator melakukan transisi secara visual dari satu halaman ke halaman lain dengan memindahkan widget di sekitar overlay. Demikian pula, navigator dapat digunakan untuk menampilkan dialog dengan menempatkan widget dialog di atas halaman saat ini.

5.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Jawab:

 - membuat drawer untuk add.dart dan budget.dart
 - membuat add.dart dan budget.dart pada folder
 - import ketiga dart pada masing-masing file
 - membuat form pada body add.dart
 - membuat TextFormField agar dapat menerima input text dari user bagi judul dan nominal
 - membuat dropdownbutton sebagai dropdown bagi jenis pembayaran
 - membuat tombol submit dengan TextButton
 - membuat class budget untuk input
 - membuat class result untuk menampung hasil submitan form
 - masukkan semua hasil input form ke class result pada event onPressed()
 - Tampilkan semua hasil input dengan widget ListView
 - Buat Readme.md
