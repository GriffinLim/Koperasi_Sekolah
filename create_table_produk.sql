create table tabel_produk(
  id serial primary key,
  nama varchar(50) not null,
  harga int check(harga>0),
  stok int default 0,
  kategory_id int,

  constraint fk_kategori
    foreign key(kategory_id)
    references table_category(id)
    on delete set null
)
