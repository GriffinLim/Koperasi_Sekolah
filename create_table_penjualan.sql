create table tabel_penjualan(
  id serial primary key,
  produk_id int,
  kelas varchar(5),
  jumlah int default 0,
  tanggal date,

  constraint fk_penjualan
    foreign key(produk_id)
    references tabel_produk(id)
    on delete set null
)
