
CREATE TABLE KHACHHANG
(MAKHACHHANG INT PRIMARY KEY,
TENCONGTY VARCHAR(50),
MAGIAODICH INT,
DIACHI VARCHAR(50),
EMAIL VARCHAR(50),
DIENTHOAI VARCHAR(50),
FAX VARCHAR(50)
);
CREATE TABLE NHANVIEN
(MANHANVIEN INT PRIMARY KEY,
HO VARCHAR(50),
TEN VARCHAR(50),
NGAYSINH DATE,
NGAYLAMVIEC DATE,
DIACHI VARCHAR(50),
DIENTHOAI VARCHAR(50),
LUONGCOBAN FLOAT,
PHUCAP FLOAT
) ;
CREATE TABLE DONDATHANG
(SOHOADON INT PRIMARY KEY,
MAKHACHHANG INT, 
MANHANVIEN INT,
NGAYDATHANG DATE,
NGAYGIACHANG DATE,
NGAYCHUYENHANG DATE,
NOIGIAOHANG VARCHAR(50)
);
CREATE TABLE CHITIETDATHANG
(SOHOADON INT,
MAHANG INT,
PRIMARY KEY(SOHOADON, MAHANG),
SOLUONG INT,
GIABAN FLOAT,
MUCGIAMGIA FLOAT,
CONSTRAINT FK_CHITIETDATHANG_DONDATHANG FOREIGN KEY (SOHOADON) REFERENCES DONDATHANG (SOHOADON)
);

CREATE TABLE LOAIHANG
(MALOAIHANG INT PRIMARY KEY,
TENLOAIHANG VARCHAR(50)
);

CREATE TABLE NHACUNGCAP
(MACONGTY INT PRIMARY KEY,
TENCONGTY VARCHAR(50),
TENGIAODICH VARCHAR(50),
DIACHI VARCHAR(50),
DIENTHOAI VARCHAR(50),
FAX INT,
EMAIL VARCHAR(50)
);
CREATE TABLE MATHANG
(MAHANG INT PRIMARY KEY,
TENHANG VARCHAR(50),
MACONGTY INT,
MALOAHANG INT,
SOLUONG INT,
DONVITINH VARCHAR(50),
GIAHANG FLOAT
);
INSERT INTO KHACHHANG
VALUES
(11, 'Công ty ABC1', 10011, '1231 Đường A', 'abc1@example.com', '01234567891', '0123456781'),
(22, 'Công ty ABC2', 10012, '1232 Đường A', 'abc2@example.com', '01234567892', '0123456782'),
(33, 'Công ty ABC3', 10013, '1233 Đường A', 'abc3@example.com', '01234567893', '0123456783'),
(44, 'Công ty ABC4', 10014, '1234 Đường A', 'abc4@example.com', '01234567894', '0123456784'),
(55, 'Công ty ABC5', 10015, '1235 Đường A', 'abc5@example.com', '01234567895', '0123456785');
INSERT INTO DONDATHANG
VALUES
(1, 11, 1, '2024-09-21', '2024-09-22', '2024-09-23', 'Kho A'),
(2, 22, 2, '2024-08-21', '2024-08-22', '2024-09-23', 'Kho B'),
(3, 33, 3, '2024-07-21', '2024-07-22', '2024-09-23', 'Kho C'),
(4, 44, 4, '2024-06-21', '2024-06-22', '2024-09-23', 'Kho D'),
(5, 55, 5, '2024-05-21', '2024-05-22', '2024-09-23', 'Kho E');
INSERT INTO NHANVIEN
VALUES
(1, 'Nguyễn', 'Văn A', '1990-01-01', '2020-01-01', '456 Đường B', '0987654321', 5000000, 1000000),
(2, 'Nguyễn', 'Văn B', '1990-02-01', '2020-02-01', '457 Đường B', '0987654322', 5000000, 1000000),
(3, 'Nguyễn', 'Văn C', '1990-03-01', '2020-03-01', '458 Đường B', '0987654323', 5000000, 1000000),
(4, 'Nguyễn', 'Văn D', '1990-04-01', '2020-04-01', '459 Đường B', '0987654324', 5000000, 1000000),
(5, 'Nguyễn', 'Văn E', '1990-05-01', '2020-05-01', '455 Đường B', '0987654325', 5000000, 1000000);
INSERT INTO CHITIETDATHANG
VALUES
(1, 1, 10, 100, 0.1),
(2, 2, 11, 102, 0.1),
(3, 3, 12, 103, 0.1),
(4, 4, 13, 104, 0.1),
(5, 5, 14, 105, 0.1);
INSERT INTO MATHANG
VALUES
(1, 'DIENTHOAI', 1, 1, 100, 'chiếc', 15000000),
(2, 'DIENTHOAI2', 2,2, 100, 'chiếc', 15000000),
(3, 'DIENTHOAI3', 3,3, 100, 'chiếc', 15000000),
(4, 'Laptop1', 4,4, 100, 'chiếc', 45000000),
(5, 'Laptop', 5,5, 100, 'chiếc', 55000000);
INSERT INTO NHACUNGCAP
VALUES
(1, 'Công ty X', 'Giao dịch 001', '1789 Đường C', '0123456789', 1231, 'contact1@x.com'),
(2, 'Công ty Y', 'Giao dịch 002', '2789 Đường C', '0123456789', 1232, 'contact2@x.com'),
(3, 'Công ty X', 'Giao dịch 003', '3789 Đường C', '0123456789', 1233, 'contact3@x.com'),
(4, 'Công ty G', 'Giao dịch 004', '4789 Đường C', '0123456789', 1234, 'contact4@x.com'),
(5, 'Công ty K', 'Giao dịch 005', '5789 Đường C', '0123456789', 1235, 'contact5@x.com');
INSERT INTO LOAIHANG
VALUES
 (1, 'Điện tử'),
 (2, 'Điện tử'),
 (3,'Điện tử'),
 (4, 'Điện tử'),
 (5, 'Điện tử');
SELECT TENCONGTY FROM NHACUNGCAP;
SELECT TENGIAODICH FROM nhacungcap;
SELECT MAHANG, TENHANG, SOLUONG FROM MATHANG;
SELECT HO, TEN, DIACHI, NGAYLAMVIEC FROM NHANVIEN;
SELECT DIACHI, DIENTHOAI FROM nhacungcap WHERE TENGIAODICH='Giao dịch 002';
SELECT mathang.MAHANG, mathang.TENHANG, chitietdathang.GIABAN FROM mathang
JOIN chitietdathang ON mathang.MAHANG = chitietdathang.MAHANG  
WHERE 50>mathang.SOLUONG AND GIABAN>100000 ;
SELECT DISTINCT mathang.TENHANG, nhacungcap.TENGIAODICH, nhacungcap.TENCONGTY 
FROM mathang 
JOIN nhacungcap on mathang.MACONGTY=nhacungcap.MACONGTY;
SELECT mathang.TENHANG, nhacungcap.TENCONGTY FROM nhacungcap JOIN mathang on mathang.MACONGTY=nhacungcap.MACONGTY WHERE TENCONGTY = 'Cong ty X'; 
8.
SELECT nhacungcap.TENCONGTY, nhacungcap.DIACHI, loaihang.TENLOAIHANG FROM nhacungcap
JOIN mathang on nhacungcap.MACONGTY = mathang.MACONGTY
JOIN loaihang on mathang.MALOAHANG = loaihang.MALOAIHANG
WHERE TENLOAIHANG = 'điện tử';
9.+
SELECT DISTINCT khachhang.MAGIAODICH, mathang.TENHANG
from khachhang
JOIN dondathang on khachhang.MAKHACHHANG = dondathang.MAKHACHHANG
JOIN chitietdathang on dondathang.SOHOADON = chitietdathang.SOHOADON
JOIN mathang on chitietdathang.MAHANG = mathang.MAHANG
WHERE mathang.TENHANG = 'Laptop';
10.+
SELECT dondathang.SOHOADON, khachhang.TENCONGTY, khachhang.MAGIAODICH, nhanvien.HO, nhanvien.TEN, dondathang.NGAYDATHANG, dondathang.NOIGIAOHANG 
FROM dondathang
JOIN khachhang ON khachhang.MAKHACHHANG = dondathang.MAKHACHHANG
JOIN nhanvien ON dondathang.MANHANVIEN = nhanvien.MANHANVIEN
WHERE SOHOADON = '1';
11.
SELECT nhanvien.HO, nhanvien.TEN, (LUONGCOBAN + PHUCAP) AS LUONG
FROM nhanvien;
12.+
SELECT mathang.TENHANG, (ct.SOLUONG * ct.GIABAN - ct.SOLUONG * ct.GIABAN * ct.MUCGIAMGIA) 
FROM chitietdathang as ct
JOIN mathang on ct.MAHANG = mathang.MAHANG
WHERE SOHOADON = '3';
13.*
-- SELECT kh.TENCONGTY FROM khachhang as kh
-- JOIN 
-- WHERE kh.TENCONGTY = nhacungcap.TENGIAODICH;
14.+
Select v1.MaNhanVien, v1.ho, v1.ten, v2.MaNhanVien, v2.Ho, v2.ten
From nhanvien v1
JOIN nhanvien v2 on v1.NGAYSINH = v2.NGAYSINH
WHERE v1.MANHANVIEN <> v2.MANHANVIEN;
15.
SELECT dondathang.SOHOADON, khachhang.TENCONGTY
FROM dondathang
JOIN khachhang ON dondathang.MAKHACHHANG = khachhang.MAKHACHHANG
JOIN nhacungcap ON khachhang.TENCONGTY = nhacungcap.TENCONGTY
                AND khachhang.DIACHI = nhacungcap.DIACHI
                AND khachhang.DIENTHOAI = nhacungcap.DIENTHOAI
                AND khachhang.FAX = nhacungcap.FAX
                AND khachhang.EMAIL = nhacungcap.EMAIL
WHERE dondathang.NOIGIAOHANG = khachhang.DIACHI;
37.
UPDATE nhanvien
SET LUONGCOBAN = (LUONGCOBAN + PHUCAP) * 1.5
WHERE MANHANVIEN IN (
    SELECT dondathang.MANHANVIEN
    FROM dondathang
    JOIN chitietdathang ON dondathang.SOHOADON = chitietdathang.SOHOADON
    WHERE YEAR(dondathang.NGAYDATHANG) = 2003
    GROUP BY dondathang.MANHANVIEN
    HAVING SUM(chitietdathang.SOLUONG) > 100
);

38.
UPDATE nhanvien
SET PHUCAP = LUONGCOBAN * 0.5
WHERE MANHANVIEN IN (
    SELECT MANHANVIEN
    FROM (
        SELECT dondathang.MANHANVIEN
        FROM dondathang
        JOIN chitietdathang ON dondathang.SOHOADON = chitietdathang.SOHOADON
        GROUP BY dondathang.MANHANVIEN
        ORDER BY SUM(chitietdathang.SOLUONG) DESC
        LIMIT 1
    ) AS BANNHIEUNHAT
);
39.
UPDATE nhanvien SET LUONGCOBAN = (LUONGCOBAN + PHUCAP) *0.75
WHERE MANHANVIEN IN (
SELECT dondathang.MANHANVIEN
FROM dondathang
JOIN chitietdathang ON dondathang.SOHOADON = chitietdathang.SOHOADON
WHERE SOLUONG = 0 
);
40.+
UPDATE dondathang SET SOTIEN = (
SELECT SUM(chitietdathang.SOLUONG * chitietdathang.GIABAN) as SOTIEN
FROM chitietdathang
INNER JOIN dondathang ON chitietdathang.SOHOADON = dondathang.SOHOADON
);
41.
DELETE FROM nhanvien
WHERE DATEDIFF(CURRENT_DATE, NGAYLAMVIEC) > (40 * 365);
42.
DELETE chitietdathang FROM chitietdathang
INNER JOIN dondathang ON chitietdathang.SOHOADON = dondathang.SOHOADON
WHERE dondathang.NGAYDATHANG < '2000-01-01';
DELETE FROM dondathang
WHERE NGAYDATHANG < '2000-01-01';
43.
DELETE FROM loaihang
WHERE MALOAIHANG NOT IN (
    SELECT DISTINCT MALOAIHANG
    FROM mathang
);
44.
DELETE FROM khachhang 
WHERE MAKHACHHANG NOT IN (
SELECT MAKHACHHANG
FROM dondathang
);
45.
DELETE FROM mathang
WHERE SOLUONG = 0 AND MAHANG NOT IN (
SELECT DISTINCT MAHANG 
FROM chitietdathang
);
-- Tìm nhà cung cấp có số lượng mặt hàng cung cấp nhiều nhất? -> có thể sử dụng thêm hàm max hoặc min tùy bài toán
SELECT nhacungcap.TENCONGTY, mathang.SOLUONG
FROM nhacungcap
INNER JOIN mathang ON nhacungcap.MACONGTY = mathang.MACONGTY
ORDER BY SOLUONG DESC
LIMIT 1;
+++
SELECT nhacungcap.TENCONGTY, MAX(mathang.SOLUONG)
FROM nhacungcap
INNER JOIN mathang ON nhacungcap.MACONGTY = mathang.MACONGTY;
-- Liệt kê danh sách khách hàng (TENCONGTY) cùng với tổng số tiền chi tiêu của họ?
-- SELECT khachhang.TENCONGTY, dondathang.SOTIEN
-- FROM khachhang
-- JOIN dondathang ON khachhang.MAKHACHHANG = dondathang.MAKHACHHANG;-> sai
+++
select kh.TENCONGTY,sum(ctdh.SOLUONG * ctdh.GIABAN *(1-ctdh.MUCGIAMGIA) ) sotientieuthu
from khachhang kh
join dondathang ddt on ddt.MAKHACHHANG = kh.MAKHACHHANG
join chitietdathang ctdh on ctdh.SOHOADON = ddt.SOHOADON
GROUP BY kh.TENCONGTY
ORDER BY sotientieuthu desc


-- Tìm hóa đơn có tổng giá trị cao nhất và hiển thị số hóa đơn cùng với tổng giá trị đó? 
-- SELECT chitietdathang.SOHOADON, dondathang.SOTIEN 
-- FROM chitietdathang
-- JOIN dondathang on chitietdathang.SOHOADON = dondathang.SOHOADON
-- ORDER BY SOTIEN DESC
-- LIMIT 1; -> dùng hàm tính tổng
+++
SELECT CT.SOHOADON, (CT.SOLUONG * CT.GIABAN * (1-CT.MUCGIAMGIA)) AS GT
FROM chitietdathang CT
GROUP BY CT.SOHOADON
ORDER BY GT DESC 
LIMIT 1
;
-- Tìm nhân viên có tổng giá trị các đơn đặt hàng đã xử lý cao nhất và hiển thị họ tên của nhân viên đó?
-- SELECT nhanvien.HO, nhanvien.TEN, dondathang.SOHOADON
-- FROM nhanvien
-- JOIN dondathang on nhanvien.MANHANVIEN = dondathang.MANHANVIEN
-- ORDER BY SOHOADON DESC
-- LIMIT 1;
+++
SELECT nhanvien.HO, nhanvien.TEN, dondathang.SOHOADON,  (CT.SOLUONG * CT.GIABAN * (1-CT.MUCGIAMGIA)) AS GT
FROM nhanvien
JOIN dondathang on nhanvien.MANHANVIEN = dondathang.MANHANVIEN
JOIN chitietdathang AS CT ON CT.SOHOADON = dondathang.SOHOADON
ORDER BY GT DESC
LIMIT 1;

-- Tìm danh sách các sản phẩm (TENHANG) có giá cao hơn giá trung bình của tất cả các sản phẩm?
SELECT mathang.TENHANG, chitietdathang.GIABAN
FROM mathang
JOIN chitietdathang on mathang.MAHANG = chitietdathang.MAHANG
WHERE GIABAN > (
	SELECT AVG(GIABAN)
	FROM chitietdathang
	);
-- Liệt kê danh sách các nhà cung cấp cung cấp hơn 5 mặt hàng và hiển thị tên công ty, số lượng mặt hàng mà họ cung cấp?
SELECT nhacungcap.TENCONGTY, chitietdathang.SOLUONG
FROM nhacungcap
JOIN mathang ON nhacungcap.MACONGTY = mathang.MACONGTY
JOIN chitietdathang ON mathang.MAHANG = chitietdathang.MAHANG
WHERE SOHOADON >5;

select nhacungcap.TENCONGTY,COUNT(mathang.MAHANG)  soluongmathang
from nhacungcap
join mathang on mathang.MACONGTY = nhacungcap.MACONGTY
GROUP BY nhacungcap.TENCONGTY
having count(mathang.MAHANG) >5

-- Tìm tổng số tiền giảm giá mà mỗi khách hàng nhận được từ các đơn đặt hàng của họ?
-- SELECT dondathang.MAKHACHHANG, (chitietdathang.SOHOADON * GIABAN * SOLUONG * MUCGIAMGIA) AS sotiengiamgiaao
-- FROM dondathang
-- JOIN chitietdathang on dondathang.SOHOADON = chitietdathang.SOHOADON;
++++
SELECT dondathang.MAKHACHHANG, (chitietdathang.SOHOADON * GIABAN * SOLUONG * MUCGIAMGIA) AS sotiengiamgiaao
FROM dondathang
JOIN chitietdathang on dondathang.SOHOADON = chitietdathang.SOHOADON
GROUP BY dondathang.MAKHACHHANG;
-- Tìm ra loại hàng hóa (TENLOAIHANG) có tổng giá trị bán hàng cao nhất?
SELECT loaihang.TENLOAIHANG, (chitietdathang.SOHOADON * GIABAN * chitietdathang.SOLUONG) AS GIATRIBANHANG
FROM loaihang
JOIN mathang ON loaihang.MALOAIHANG = mathang.MALOAHANG
JOIN chitietdathang ON mathang.MAHANG = chitietdathang.MAHANG
ORDER BY GIATRIBANHANG DESC
LIMIT 1;
-- FETCH FIRST number ROWS ONLY;
-- Tìm tổng doanh thu và tổng chiết khấu của mỗi loại mặt hàng, đồng thời hiển thị tên loại hàng và số liệu tương ứng?
-- SELECT mathang.TENHANG, (chitietdathang.SOHOADON * GIABAN * chitietdathang.SOLUONG) AS TONGDOANHTHU , (chitietdathang.SOHOADON * GIABAN * MUCGIAMGIA) AS TONGCHIETKHAU
-- FROM chitietdathang
-- JOIN mathang ON chitietdathang.MAHANG = mathang.MAHANG;
+++
SELECT mathang.TENHANG, (chitietdathang.SOHOADON * GIABAN * chitietdathang.SOLUONG * (1-chitietdathang.MUCGIAMGIA)) AS TONGDOANHTHU , (chitietdathang.SOHOADON * GIABAN * MUCGIAMGIA) AS TONGCHIETKHAU
FROM chitietdathang
JOIN mathang ON chitietdathang.MAHANG = mathang.MAHANG;
-- Tìm tất cả các đơn đặt hàng đã được giao trễ (NGAYGIACHANG trễ hơn NGAYCHUYENHANG) và hiển thị mã hóa đơn và tên khách hàng?
SELECT dondathang.MAKHACHHANG
FROM dondathang
WHERE NGAYGIACHANG > NGAYCHUYENHANG;
-- Tính tổng số lượng các đơn hàng được đặt trong khoảng thời gian 6 tháng gần nhất?
SELECT COUNT(d.SOHOADON)
FROM dondathang d
WHERE d.NGAYDATHANG >= dateadd(MONTH,-6,getdate());
-- date, hamf TRUNCATE(X,D),coong tru ngay thang nam (dateadd(moth,-6,getdate()))
-- Tìm các nhà cung cấp mà tất cả các mặt hàng họ cung cấp đều có giá thấp hơn giá trung bình của tất cả các mặt hàng?.......
-- SELECT nhacungcap.TENCONGTY, AVG(GIAHANG) AS GTTB
-- FROM nhacungcap 
-- JOIN mathang ON nhacungcap.MACONGTY = mathang.MACONGTY
-- WHERE mathang.GIAHANG > (SELECT AVG(GIAHANG) FROM mathang); -> cẩu thả
++++
SELECT nhacungcap.TENCONGTY, AVG(GIAHANG) AS GTTB
FROM nhacungcap 
JOIN mathang ON nhacungcap.MACONGTY = mathang.MACONGTY
WHERE mathang.GIAHANG < (SELECT AVG(GIAHANG) FROM mathang)
GROUP BY nhacungcap.TENCONGTY; 
-- Liệt kê các khách hàng đã đặt nhiều hơn 5 đơn hàng và tổng giá trị đơn hàng của họ lớn hơn 5 triệu đồng?
SELECT dondathang.MAKHACHHANG, chitietdathang.SOLUONG
FROM chitietdathang
JOIN dondathang ON chitietdathang.SOHOADON = dondathang.SOHOADON
WHERE SOLUONG >5 AND (chitietdathang.GIABAN * chitietdathang.SOLUONG) > 5000000;
gợi ý: sử dụng having kèm hàm sum để làm và kết hợp hàm having với sum
+++++
SELECT dondathang.MAKHACHHANG, chitietdathang.SOLUONG
FROM chitietdathang
JOIN dondathang ON chitietdathang.SOHOADON = dondathang.SOHOADON
GROUP BY dondathang.MAKHACHHANG
HAVING SOLUONG >5 AND SUM(chitietdathang.GIABAN * SOLUONG)>5000000;
;
-- Xây dựng truy vấn để tìm các mặt hàng chưa bao giờ được đặt hàng bởi bất kỳ khách hàng nào?
SELECT M.MAHANG, M.TENHANG
FROM mathang M
LEFT JOIN chitietdathang on chitietdathang.mahang = M.mahang
WHERE chitietdathang.MAHANG is null;
-- Tìm hóa đơn có chiết khấu cao nhất và hiển thị mã hóa đơn cùng với tổng giá trị chiết khấu?
-- SELECT chitietdathang.MAHANG, (chitietdathang.SOHOADON * chitietdathang.SOLUONG * chitietdathang.GIABAN * chitietdathang.MUCGIAMGIA) AS TONGGTCHIETKHAU
-- FROM chitietdathang
-- ORDER BY TONGGTCHIETKHAU DESC
-- LIMIT 1;
-- 
SELECT count(d.SOHOADON)
FROM dondathang d
WHERE '2024-9-21' = NGAYDATHANG OR NGAYDATHANG ='2024-9-25';
-- ---------------
SELECT (chitietdathang.SOLUONG * d.SOHOADON) as tsl
from dondathang d
INNER JOIN chitietdathang on d.SOHOADON = chitietdathang.SOHOADON;
SELECT (chitietdathang.SOLUONG * d.SOHOADON) as tsl
from dondathang d
LEFT JOIN chitietdathang on d.SOHOADON = chitietdathang.SOHOADON;
INSERT INTO MATHANG
VALUES
(6, 'BOTGIAT', 1, 1, 100, 'GOI', 15000000),
(7, 'SUA', 1, 1, 100, 'chiếc', 15000000),
(8, 'DEP', 1, 1, 0, 'chiếc', 15000000);
INSERT INTO dondathang
VALUES
(5, 55, 5, '2023-08-21', '2023-08-23', '2023-08-29', 'Kho E',5000000),
(6, 66, 6, '2023-07-21', '2023-07-25', '2023-07-27', 'Kho F',6000000),
(7, 77, 7, '2023-06-21', '2023-06-22', '2023-06-23', 'Kho G',7000000),
(8, 88, 8, '2023-05-21', '2023-05-22', '2023-05-23', 'Kho H',8000000);

1.Tìm các khách hàng đã đặt hàng vào mỗi tháng trong năm nay
SELECT KH.TENCONGTY, MONTH(DDH.NGAYDATHANG) AS THANG, COUNT(DDH.SOHOADON) AS TONGSODON
FROM khachhang KH
JOIN dondathang AS DDH ON KH.MAKHACHHANG = DDH.MAKHACHHANG
WHERE  YEAR(DDH.NGAYDATHANG) = YEAR(CURDATE())
GROUP BY MONTH(DDH.NGAYDATHANG),KH.TENCONGTY
ORDER BY MONTH(DDH.NGAYDATHANG);
2.Tìm sản phẩm được bán nhiều nhất trong mỗi tháng
WITH spmoithang AS (
SELECT mh.TENHANG, sum(ct.SOLUONG) AS tongsoluong, MONTH(ddh.NGAYDATHANG) AS thang
FROM chitietdathang ct
JOIN mathang mh on ct.MAHANG = mh.MAHANG
JOIN dondathang ddh on ct.SOHOADON = ddh.SOHOADON
GROUP BY mh.TENHANG, MONTH(ddh.NGAYDATHANG)
)
SELECT TENHANG, tongsoluong, thang
FROM spmoithang sp1
WHERE tongsoluong  = (
SELECT max(tongsoluong)
FROM spmoithang sp2
WHERE sp1.thang = sp2.thang
)
ORDER BY thang;
INSERT INTO CHITIETDATHANG
VALUES
(6, 6, 100, 1000, 0.1),
(7, 7, 106, 1000, 0.1),
(8, 8, 103, 1000, 0.1);
3.Tìm các nhân viên có tổng giá trị đơn hàng hàng tháng liên tục tăng trong vòng 3 tháng
WITH sanpham AS (
SELECT ddh.MANHANVIEN, (ct.SOLUONG * ct.GIABAN) AS tonggt, MONTH(ddh.NGAYDATHANG) AS thang
FROM dondathang ddh 
JOIN chitietdathang ct ON ddh.SOHOADON = ct.SOHOADON
GROUP BY ddh.MANHANVIEN, thang
)
5.Tìm khách hàng có đơn hàng lớn nhất trong mỗi loại hàng hóa
WITH donhang AS (
SELECT ddh.MAKHACHHANG, (ct.SOHOADON * ct.SOLUONG * ct.GIABAN) AS giatri
FROM dondathang ddh
JOIN chitietdathang ct on ct.SOHOADON = ddh.SOHOADON
)
SELECT dh.MAKHACHHANG, dh.giatri
FROM donhang dh
WHERE giatri = (
SELECT max(giatri)
FROM donhang dh2
WHERE dh.MAKHACHHANG = dh2.MAKHACHHANG
)
6.Tìm khách hàng có đơn hàng lặp lại nhiều nhất (đặt cùng sản phẩm nhiều lần)+++++
SELECT ddh.MAKHACHHANG ,mh.TENHANG, count(TENHANG) 
FROM mathang mh
JOIN chitietdathang ct on ct.mahang = mh.mahang
JOIN dondathang ddh on ddh.SOHOADON = ct.SOHOADON
GROUP BY ddh.MAKHACHHANG
HAVING count(TENHANG) >1
ORDER BY count(tenhang) DESC;
7.Tìm những hóa đơn mà tổng giá trị lớn hơn 200% giá trị trung bình của tất cả các hóa đơn++++++
SELECT ct.mahang, (ct.GIABAN * ct.SOLUONG) AS tonggt
FROM chitietdathang ct
GROUP BY ct.mahang
HAVING (ct.GIABAN * ct.SOLUONG) > (
    SELECT 2 * AVG(ct2.GIABAN * ct2.SOLUONG)
    FROM chitietdathang ct2
);

-- 
WITH tonggtsp AS (
SELECT ct.mahang, (ct.GIABAN * ct.SOLUONG) AS tonggt
FROM chitietdathang ct
GROUP BY ct.mahang
)
SELECT tp.mahang, tp.tonggt
FROM tonggtsp tp
WHERE tp.tonggt > 2 * (
      SELECT avg(tonggt)
			FROM tonggtsp
			);

8.Tìm những nhà cung cấp mà tổng giá trị hàng hóa của họ đã bán chiếm ít nhất 25% tổng doanh thu
WITH gthh AS (
SELECT nc.TENCONGTY, (ct.SOHOADON * ct.SOLUONG * ct.GIABAN * (1-ct.MUCGIAMGIA)) AS gt 
FROM chitietdathang ct 
JOIN mathang mh on mh.mahang = ct.mahang
JOIN nhacungcap nc on nc.MACONGTY = mh.MACONGTY
GROUP BY nc.TENCONGTY, gt
)
SELECT gh.TENCONGTY, gh.gt
FROM gthh gh
WHERE gt >= 0.25 *(
       SELECT sum(gt)
       FROM gthh
)
9.tìm danh sách các sản phẩm chưa bao giờ dc mua bởi khách hàng có tên công ty bắt đầu bằng chữ 'A'+++
WITH spkodcmua AS (
SELECT kh.TENCONGTY, ct.mahang, ct.SOLUONG = null
FROM khachhang kh
JOIN dondathang ddh on ddh.MAKHACHHANG = kh.MAKHACHHANG
JOIN chitietdathang ct on ddh.SOHOADON = ct.SOHOADON
GROUP BY kh.TENCONGTY, ct.mahang 
)
SELECT sp.TENCONGTY, sp.mahang 
FROM spkodcmua sp
WHERE sp.TENCONGTY LIKE 'A%'
10.Xác định nhà cung cấp có giá bán trung bình của các sản phẩm thuộc cùng 1 loại hàng có sự biến động lớn nhất (độ chênh lệch cao nhất và thấp nhất)
WITH bangtb AS (
SELECT nc.TENCONGTY, ct.mahang, avg(ct.SOHOADON * ct.SOLUONG * ct.GIABAN * (1-ct.MUCGIAMGIA)) AS gttb
FROM nhacungcap nc 
JOIN mathang mh ON nc.MACONGTY = mh.MACONGTY
JOIN chitietdathang ct ON ct.mahang = mh.mahang 
GROUP BY nc.TENCONGTY, ct.mahang
),
SELECT nc.TENCONGTY, ct.mahang, (max(gttb) - min(gttb)) AS chenhlech
FROM bangtb bb
WHERE chenhlech = (
SELECT max(max(gttb) - min(gttb)) OR min(max(gttb) - min(gttb))
FROM bangtb 
)
ORDER BY chenhlech DESC;