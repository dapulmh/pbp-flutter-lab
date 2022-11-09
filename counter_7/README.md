# Tugas 7 : Elemen Dasar Flutter

Repositori ini milik Daffa Maulana Haekal (2106652083) untuk kebutuhan [Tugas7](https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tugas/tugas-7/)

## Pertanyaan

1.   Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya ?

stateless widget adalah widget yang tidak dapat berubah ketika user melakukan interaksi. Beberapa Contoh dari stateless widget bawaan Flutter adalah: Text, Icon, IconButton, dan lain-lain.

sedangkan

stateful widget adalah widget yang dapat berubah ketika user melakukan interaksi. Beberapa contoh dari stateful widget bawaan Flutter adalah: Checkbox, Radio, Slider, TextField, dan lain-lain.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!

Widget yang saya pakai pada proyek kali ini yaitu:
- Text fungsinya adalah menampilkan widget dalam bentuk text dan mendesign text tersebut
- Stack fungsinya adalah sebagai widget yang memposisikan widget pada tepi flutter app
- FloatingActionButton adalah widget yang berfungsi sebagai button tempat user berinteraksi seperti button untuk increment dan decrement counter pada proyek ini

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!

Fungsi dari setState() adalah untuk memanipulasi dan mengubah data-data yang berada dalam stateful widget yang disimpan pada object state. Variabel-variabel yang terdampak dengan fungsi tersebut
adalah _counter dan category dimana _counter dimanipulasi increment dan decrement nya sedangkan category digunakan untuk mengkateforikan _counter apakah ganjil ataupun genap.

4. Jelaskan perbedaan antara const dengan final.

Perbedaan const dengan final adalah const mengharuskan variabel harus diinisiasikan pada saat kompilasi dan nilai bersifat konstan sehingga setelah proses kompilasi sudah memiliki nilai sedangkan final 
tidak mengharuskan variabel harus diinisiasikan pada saat kompilasi

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat method decrementcounter untuk button pengurangan
- buat comtrol flow di dalam method decrementcounter jika counter != 0
- inisialisasi category untuk menentukan apakah genap atau ganjil
- buat method chooseCategory untuk control flow genap dan ganjil
- create widget text untuk category dan itenary control flow untuk warnanya
- buat floatingactionbutton stack dan positioned untuk letak buttonnya
- dalam child positioned buat FloatingActionButton untuk method _decrementCounter dan _incerementCounter
- Untuk penilaian bonus, tambahkan control flow untuk FloatingActionButton yang method _decrementCounter
