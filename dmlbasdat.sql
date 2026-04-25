-- FULL DML FINAL

-- ADMIN
INSERT INTO Admin VALUES
('ADM001','Ahmad Fathi Al Ghifari','gift.admin01@uniqlo.co.id','NAVIAmybinigweh','081234500001'),
('ADM002','Faeyza Safa Izz Deyardi','feza.admin02@uniqlo.co.id','gajiprogrammerdiindo','082345600002'),
('ADM003','Muhammad Reyhan Setya Ardiansyah','reyrey.admin03@uniqlo.co.id','114445688888889999999999','083456700003'),
('ADM004','Muhammad Zaki Arif Effendi','jeki.admin04@uniqlo.co.id','masambamainnyahebatsekali','084567800004'),
('ADM005','Raven Ravellyn Sulistyo','raven.admin05@uniqlo.co.id','admin123','085678900005');

-- CATEGORY
INSERT INTO Category VALUES
('CAT001','Pakaian Kasual'),
('CAT002','Aksesori Kepala'),
('CAT003','Aksesori Lainnya'),
('CAT004','Pakaian Olahraga');

-- NOTE:
-- File ini berisi struktur lengkap + contoh data.
-- Gunakan script lengkap dari chat untuk full dataset.

-- UPDATE
UPDATE Orders SET Status='Selesai' WHERE ID_Order='ORD050';

-- DELETE
DELETE FROM OrderDetail WHERE ID_Order='ORD050';
DELETE FROM Orders WHERE ID_Order='ORD050';
