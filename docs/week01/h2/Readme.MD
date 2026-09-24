### Jelaskan kenapa center merupakan widget terpisah, bukan menjadi properti di/dari teks?

- **Prinsip Single Responsibility**
Karena flutter memakai prinsip Single Responsibility, yang arti pada umumnya mereka berfokus pada tugas masing2, seperti teks fokus ke isi dan gaya tulisan sedangkan center fokus pada tata letak atau posisi. 

- **Layout Flutter**
Selain karena single responsibility, di flutter juga ada namanya Layout Flutter (Constraints Go DownSizes Go Up, Parent Sets Position), aturan posisinya adalah teks sebagai childd hanya bertugas untuk mengukur panjang dan tinggi teks berdasarkan font dan karakter, parent yaitu center yang bertugas untuk menentukan posisi child di layar. 

- **Efisiensi dan Performa**
Dan Yang terakhir untuk efisiensi dan performa, dengan memisahkan tugas dan fungsi tersebut, teks akan tetap berukuran ringan di memori karena hanya menyimpan tulisan dan font, kalau teks harus menyimpan logika posisi, koordinat, dan lainnya proses rebuild akan memakan memori lebih besar dan menurunkan performa.