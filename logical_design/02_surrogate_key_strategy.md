## Penentuan Surrogate Keys

| Dimension Table | Natural Key | Surrogate Key | Keterangan |
|:---|:---|:---|:---|
| Dim Mahasiswa | NIM | SK_Mahasiswa | [cite_start]NIM tetap disimpan sebagai atribut deskriptif untuk analisis [cite: 183] |
| Dim_Kegiatan | ID_Kegiatan | SK_Kegiatan | [cite_start]Menjamin konsistensi meskipun kode kegiatan berubah [cite: 184] |
| Dim_Organisasi | ID_Organisasi | SK_Organisasi | [cite_start]Berguna saat penggabungan data organisasi dari berbagai format [cite: 184] |
| Dim Prestasi | ID Prestasi | SK Prestasi | [cite_start]Memudahkan rekaman multi-versi (SCD) [cite: 184] |
| Dim Beasiswa | ID Beasiswa | SK Beasiswa | [cite_start]Mendukung integrasi dari beasiswa internal & eksternal [cite: 184] |
| Dim_Tanggal | Tanggal | SK_Tanggal | [cite_start]Key integer (yyyymmdd) untuk performa join [cite: 184] |
