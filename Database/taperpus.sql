-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 04, 2016 at 08:01 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `id_katagori_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(100) DEFAULT NULL,
  `kode_buku` varchar(20) DEFAULT NULL,
  `abstrak` text,
  `penulis` varchar(30) DEFAULT NULL,
  `Tahaun_terbit` int(10) DEFAULT NULL,
  `penerbit` varchar(30) DEFAULT NULL,
  `pengarang` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_katagori_buku`, `judul_buku`, `kode_buku`, `abstrak`, `penulis`, `Tahaun_terbit`, `penerbit`, `pengarang`) VALUES
(9, 4, 'hujan', 'b.2', 'hujan banjir', 'tereliye', 2016, 'diknas', 'tereliye'),
(11, 4, 'Buku Dongeng', 'b.3', 'Buku dongeng', 'Rahmad', 2019, 'Erlangga', 'Agus');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE IF NOT EXISTS `denda` (
  `id_denda` int(1) NOT NULL AUTO_INCREMENT,
  `jumlah_denda` int(11) NOT NULL,
  PRIMARY KEY (`id_denda`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id_denda`, `jumlah_denda`) VALUES
(1, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `katagori_buku`
--

CREATE TABLE IF NOT EXISTS `katagori_buku` (
  `id_katagori_buku` int(11) NOT NULL AUTO_INCREMENT,
  `nama_katagori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_katagori_buku`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `katagori_buku`
--

INSERT INTO `katagori_buku` (`id_katagori_buku`, `nama_katagori`) VALUES
(4, 'cerita rakyat'),
(7, 'Buku Keren'),
(8, 'Agama'),
(9, 'Teknologi'),
(10, 'UMUM');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `kode_buku` varchar(20) DEFAULT NULL,
  `nis` int(15) DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `tgl_dikembalikan` date DEFAULT NULL,
  `denda` varchar(20) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `kode_buku`, `nis`, `tanggal_peminjaman`, `tanggal_pengembalian`, `tgl_dikembalikan`, `denda`, `status`) VALUES
(15, 'b.2', 123, '2016-09-30', '2016-10-01', '2016-10-03', '30000', 1),
(16, 'b.3', 123, '2016-10-02', '2016-10-05', NULL, NULL, 0),
(17, 'b.3', 123, '2016-10-01', '2016-10-03', '2016-10-05', '30000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` int(15) DEFAULT NULL,
  `nama_siswa` varchar(30) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `TTL` int(10) DEFAULT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `alamat`, `kelas`, `TTL`, `jenis_kelamin`) VALUES
(4, 123, 'Ikhsan', 'metro', '8', 0, 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(8, 'admin', 'admin', 'Bagus Supriyanto');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
