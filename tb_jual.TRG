TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `jual_barang` BEFORE INSERT ON `tb_jual` FOR EACH ROW BEGIN\nINSERT INTO tb_barang SET\nid_barang = NEW.id_barang,jumlah=NEW.jumlah\nON DUPLICATE KEY UPDATE jumlah=jumlah-NEW.jumlah;\nEND'
sql_modes=1342177280
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci'
