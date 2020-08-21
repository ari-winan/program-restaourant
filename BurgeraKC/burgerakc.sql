-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 03:48 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burgerakc`
--

-- --------------------------------------------------------

--
-- Table structure for table `beli`
--

CREATE TABLE `beli` (
  `indeks` int(255) NOT NULL,
  `barang` varchar(250) DEFAULT NULL,
  `harga` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor_pesanan` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beli`
--

INSERT INTO `beli` (`indeks`, `barang`, `harga`, `tanggal`, `nomor_pesanan`) VALUES
(2, 'AQUA GALON 3 GLN', 150000, '2020-03-24', '2020-0324-1'),
(4, 'asd', 123, '2020-03-25', '2020-0325-1'),
(5, 'anjing', 5000000, '2020-03-25', '2020-0325-2'),
(6, 'ewrrgewr', 5000, '2020-03-26', '2020-0326-1'),
(7, 'Air Galon', 50000, '2020-04-22', '2020-0422-1');

-- --------------------------------------------------------

--
-- Table structure for table `burgera`
--

CREATE TABLE `burgera` (
  `indeks` int(200) NOT NULL,
  `nomor_pesanan` varchar(1000) DEFAULT NULL,
  `id_kasir` varchar(50) DEFAULT NULL,
  `id_menu` varchar(15) DEFAULT NULL,
  `addon` varchar(50) DEFAULT NULL,
  `satuan` int(5) DEFAULT NULL,
  `harga` int(8) DEFAULT NULL,
  `makan` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `burgera`
--

INSERT INTO `burgera` (`indeks`, `nomor_pesanan`, `id_kasir`, `id_menu`, `addon`, `satuan`, `harga`, `makan`, `tanggal`) VALUES
(1, '2020-0322-1', 'admin', 'm-ucb', 'Xtra Cheese', 2, 30000, 'DINE-IN', '2020-03-22'),
(2, '2020-0322-2', 'admin', 'm-tocb-d', 'Chicken Wings', 5, 57000, 'DINE-IN', '2020-03-22'),
(3, '2020-0322-3', 'admin', 'm-cesb', 'Chicken Wings', 2, 40000, 'TAKE-OUT', '2020-03-22'),
(4, '2020-0322-3', 'admin', 'm-cesb', 'Chicken Wings', 2, 40000, 'TAKE-OUT', '2020-03-22'),
(5, '2020-0322-4', 'admin', 'd-nlemt', '', 2, 8000, 'DINE-IN', '2020-03-22'),
(6, '2020-0322-5', 'admin', 'CY1', '', 2, 31000, 'DINE-IN', '2020-03-22'),
(7, '2020-0322-6', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-22'),
(8, '2020-0322-7', 'admin', 'm-cesb', 'Beef Belly', 10, 25000, 'DINE-IN', '2020-03-22'),
(10, '2020-0322-8', 'ruman1609', 'TO2', 'Chicken Wings', 1, 68000, 'DINE-IN', '2020-03-22'),
(12, '2020-0322-9', 'admin', 'CY1', 'French Fries', 1, 38000, 'DINE-IN', '2020-03-22'),
(13, '2020-0323-1', 'ruman1609', 'm-ucb', 'Beef Belly', 1, 32000, 'DINE-IN', '2020-03-23'),
(14, '2020-0323-1', 'ruman1609', 'm-scb', 'Chicken Wings', 2, 42000, 'DINE-IN', '2020-03-23'),
(15, '2020-0323-1', 'ruman1609', 'd-mat', '', 1, 20000, 'DINE-IN', '2020-03-23'),
(16, '2020-0323-2', 'ruman1609', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-23'),
(17, '2020-0323-2', 'ruman1609', 'CY2', 'Chicken Wings', 1, 61000, 'DINE-IN', '2020-03-23'),
(18, '2020-0323-3', 'ruman1609', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(19, '2020-0323-3', 'ruman1609', 'CY2', 'French Fries', 1, 48000, 'DINE-IN', '2020-03-23'),
(20, '2020-0323-4', 'ruman1609', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-23'),
(21, '2020-0323-4', 'ruman1609', 'm-scb', 'Chicken Wings', 2, 42000, 'DINE-IN', '2020-03-23'),
(22, '2020-0323-5', 'admin', 'CY1', 'Chicken Wings', 1, 51000, 'DINE-IN', '2020-03-23'),
(23, '2020-0323-6', 'admin', 'CY1', 'Beef Belly', 2, 36000, 'DINE-IN', '2020-03-23'),
(24, '2020-0323-7', 'admin', 'TO1', 'Beef Belly', 1, 43000, 'DINE-IN', '2020-03-23'),
(25, '2020-0323-8', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(26, '2020-0323-9', 'admin', 'TO1', '', 2, 38000, 'DINE-IN', '2020-03-23'),
(27, '2020-0323-10', 'admin', 'TO1', 'Beef Belly', 1, 43000, 'TAKE-OUT', '2020-03-23'),
(28, '2020-0323-10', 'admin', 'CY1', 'Chicken Wings', 1, 51000, 'TAKE-OUT', '2020-03-23'),
(29, '2020-0323-10', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(30, '2020-0323-10', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-23'),
(31, '2020-0323-11', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(32, '2020-0323-12', 'admin', 'CY2', 'Beef Belly', 1, 46000, 'DINE-IN', '2020-03-23'),
(33, '2020-0323-13', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(34, '2020-0323-14', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-23'),
(35, '2020-0323-15', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(36, '2020-0323-16', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(37, '2020-0323-16', 'admin', 'CY2', 'Smoke Cheese', 2, 45000, 'DINE-IN', '2020-03-23'),
(38, '2020-0323-17', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(39, '2020-0323-18', 'admin', 'CY1', 'Chicken Wings', 1, 51000, 'DINE-IN', '2020-03-23'),
(40, '2020-0323-19', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-23'),
(41, '2020-0323-20', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(42, '2020-0323-21', 'admin', 'CY2', 'Beef Belly', 1, 46000, 'DINE-IN', '2020-03-23'),
(43, '2020-0323-22', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(44, '2020-0323-23', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-23'),
(45, '2020-0323-24', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-23'),
(46, '2020-0323-25', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-23'),
(47, '2020-0323-26', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-23'),
(48, '2020-0323-27', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-23'),
(49, '2020-0323-28', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-23'),
(50, '2020-0323-29', 'admin', 'CY1', 'Chicken Wings', 1, 51000, 'DINE-IN', '2020-03-23'),
(51, '2020-0323-30', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-23'),
(52, '2020-0323-31', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-23'),
(53, '2020-0323-32', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(54, '2020-0323-33', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(55, '2020-0323-34', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(56, '2020-0323-35', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(57, '2020-0323-36', 'admin', 'm-cesb', 'Beef Belly', 1, 25000, 'TAKE-OUT', '2020-03-23'),
(58, '2020-0323-37', 'admin', 'CY2', 'Chicken Wings', 1, 61000, 'DINE-IN', '2020-03-23'),
(59, '2020-0323-38', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-23'),
(60, '2020-0323-39', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(61, '2020-0323-40', 'admin', 'CY2', 'Beef Belly', 1, 46000, 'DINE-IN', '2020-03-23'),
(62, '2020-0323-41', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-23'),
(63, '2020-0323-42', 'admin', 'CY1', 'Chicken Wings', 1, 51000, 'DINE-IN', '2020-03-23'),
(64, '2020-0323-42', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-23'),
(65, '2020-0323-42', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-23'),
(66, '2020-0323-42', 'admin', 'UN1', '', 1, 38000, 'DINE-IN', '2020-03-23'),
(67, '2020-0323-42', 'admin', 'UN2', '', 1, 48000, 'DINE-IN', '2020-03-23'),
(68, '2020-0323-42', 'admin', 'UN1', 'Beef Belly', 1, 43000, 'DINE-IN', '2020-03-23'),
(69, '2020-0323-42', 'admin', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-23'),
(70, '2020-0323-42', 'admin', 'm-scb', '', 1, 22000, 'DINE-IN', '2020-03-23'),
(71, '2020-0323-42', 'admin', 'm-ss+ff', 'Beef Belly', 1, 32000, 'DINE-IN', '2020-03-23'),
(72, '2020-0323-42', 'admin', 'm-tocb-s', '', 1, 27000, 'DINE-IN', '2020-03-23'),
(73, '2020-0323-42', 'admin', 'm-tocb-d', '', 1, 37000, 'DINE-IN', '2020-03-23'),
(74, '2020-0323-42', 'admin', 'm-ucb', '', 1, 27000, 'DINE-IN', '2020-03-23'),
(75, '2020-0323-42', 'admin', 'm-tocb-s', '', 1, 27000, 'DINE-IN', '2020-03-23'),
(76, '2020-0323-42', 'admin', 'd-cr', '', 10, 18000, 'DINE-IN', '2020-03-23'),
(77, '2020-0324-1', 'admin', 'CY1', 'Beef Belly', 1, 36000, 'DINE-IN', '2020-03-24'),
(78, '2020-0324-1', 'admin', 'CY2', 'French Fries', 1, 48000, 'DINE-IN', '2020-03-24'),
(79, '2020-0324-1', 'admin', 'TO1', 'Beef Belly', 1, 43000, 'DINE-IN', '2020-03-24'),
(80, '2020-0324-1', 'admin', 'TO2', '', 1, 48000, 'DINE-IN', '2020-03-24'),
(81, '2020-0324-1', 'admin', 'UN1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(82, '2020-0324-1', 'admin', 'UN2', '', 1, 48000, 'DINE-IN', '2020-03-24'),
(83, '2020-0324-1', 'admin', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-24'),
(84, '2020-0324-1', 'admin', 'm-scb', '', 1, 22000, 'DINE-IN', '2020-03-24'),
(85, '2020-0324-1', 'admin', 'm-ss+ff', '', 1, 27000, 'DINE-IN', '2020-03-24'),
(86, '2020-0324-1', 'admin', 'm-tocb-d', '', 1, 37000, 'DINE-IN', '2020-03-24'),
(87, '2020-0324-1', 'admin', 'm-tocb-s', '', 1, 27000, 'DINE-IN', '2020-03-24'),
(88, '2020-0324-1', 'admin', 'm-ucb', '', 1, 27000, 'DINE-IN', '2020-03-24'),
(89, '2020-0324-1', 'admin', 'd-cc', '', 10, 18000, 'DINE-IN', '2020-03-24'),
(90, '2020-0324-2', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(91, '2020-0324-2', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(92, '2020-0324-2', 'admin', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-24'),
(93, '2020-0324-2', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(94, '2020-0324-2', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(95, '2020-0324-2', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(96, '2020-0324-2', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(97, '2020-0324-2', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(98, '2020-0324-2', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(99, '2020-0324-2', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(100, '2020-0324-2', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(101, '2020-0324-2', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(102, '2020-0324-2', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(103, '2020-0324-2', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(104, '2020-0324-3', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(105, '2020-0324-4', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(106, '2020-0324-4', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(107, '2020-0324-4', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(108, '2020-0324-4', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(109, '2020-0324-4', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(110, '2020-0324-4', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(111, '2020-0324-4', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(112, '2020-0324-4', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(113, '2020-0324-4', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(114, '2020-0324-4', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(115, '2020-0324-4', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(116, '2020-0324-4', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(117, '2020-0324-4', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(118, '2020-0324-4', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(119, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(120, '2020-0324-5', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(121, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(122, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(123, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(124, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(125, '2020-0324-5', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(126, '2020-0324-5', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(127, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(128, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(129, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(130, '2020-0324-5', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(131, '2020-0324-5', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(132, '2020-0324-5', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(133, '2020-0324-6', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(134, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(135, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(136, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(137, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(138, '2020-0324-7', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(139, '2020-0324-7', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(140, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(141, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(142, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(143, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(144, '2020-0324-7', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(145, '2020-0324-7', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(146, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(147, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(148, '2020-0324-7', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(149, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(150, '2020-0324-7', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(151, '2020-0324-7', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(152, '2020-0324-7', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(153, '2020-0324-7', 'admin', 'TO1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(154, '2020-0324-7', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(155, '2020-0324-7', 'admin', 'UN2', '', 1, 48000, 'DINE-IN', '2020-03-24'),
(156, '2020-0324-7', 'admin', 'UN1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(157, '2020-0324-7', 'admin', 'TO2', '', 1, 48000, 'DINE-IN', '2020-03-24'),
(158, '2020-0324-7', 'admin', 'UN2', '', 1, 48000, 'DINE-IN', '2020-03-24'),
(159, '2020-0324-7', 'admin', 'UN1', '', 1, 38000, 'DINE-IN', '2020-03-24'),
(160, '2020-0324-7', 'admin', 'TO2', '', 1, 48000, 'DINE-IN', '2020-03-24'),
(161, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(162, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(163, '2020-0324-8', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(164, '2020-0324-8', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(165, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(166, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(167, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(168, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(169, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(170, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(171, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(172, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(173, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(174, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(175, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(176, '2020-0324-8', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(177, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(178, '2020-0324-8', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(179, '2020-0324-8', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(180, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(181, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(182, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(183, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(184, '2020-0324-8', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(185, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(186, '2020-0324-8', 'admin', 'CY2', '', 1, 41000, 'DINE-IN', '2020-03-24'),
(187, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(188, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(189, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(190, '2020-0324-8', 'admin', 'CY1', '', 1, 31000, 'DINE-IN', '2020-03-24'),
(191, '2020-0324-9', 'admin', 'm-tocb-s', '', 1, 27000, 'DINE-IN', '2020-03-24'),
(195, '2020-0325-1', 'admin', 'CY1', 'Chicken Wings', 5, 51000, 'DINE-IN', '2020-03-25'),
(196, '2020-0325-2', 'admin', 'm-cesb', '', 2, 20000, 'DINE-IN', '2020-03-25'),
(197, '2020-0325-3', 'admin', 'm-cesb', 'Beef Belly', 100, 30000, 'DINE-IN', '2020-03-25'),
(199, '2020-0325-4', 'mumbe', 'm-cesb', '', 1, 20000, 'TAKE-OUT', '2020-03-25'),
(200, '2020-0325-4', 'mumbe', 'm-scb', '', 1, 22000, 'TAKE-OUT', '2020-03-25'),
(201, '2020-0325-4', 'mumbe', 'm-cesb', '', 1, 20000, 'TAKE-OUT', '2020-03-25'),
(202, '2020-0325-5', 'mumbe', 'm-cesb', 'Beef Belly', 1, 25000, 'DINE-IN', '2020-03-25'),
(203, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(204, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(205, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(206, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(207, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(208, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(209, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(210, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(211, '2020-0325-5', 'mumbe', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-03-25'),
(212, '2020-0325-5', 'mumbe', 'd-c', '', 1, 12000, 'DINE-IN', '2020-03-25'),
(213, '2020-0325-5', 'mumbe', 'd-c', '', 1, 12000, 'DINE-IN', '2020-03-25'),
(214, '2020-0325-5', 'mumbe', 'd-c', '', 1, 12000, 'DINE-IN', '2020-03-25'),
(215, '2020-0325-5', 'mumbe', 'd-c', '', 1, 12000, 'DINE-IN', '2020-03-25'),
(216, '2020-0325-5', 'mumbe', 'd-c', '', 1, 12000, 'DINE-IN', '2020-03-25'),
(217, '2020-0325-5', 'mumbe', 'd-c', '', 1, 12000, 'DINE-IN', '2020-03-25'),
(218, '2020-0325-6', 'admin', 'm-cesb', 'Beef Belly', 1, 25000, 'DINE-IN', '2020-03-25'),
(219, '2020-0325-6', 'admin', 'm-scb', '', 1, 22000, 'DINE-IN', '2020-03-25'),
(221, '2020-0326-1', 'admin', 'TO1', '', 1, 38000, 'DELIVERY', '2020-03-26'),
(226, '2020-0422-1', 'admin', 'm-scb', '', 1, 22000, 'DINE-IN', '2020-04-22'),
(227, '2020-0422-2', 'admin', 'm-cesb', '', 1, 20000, 'DINE-IN', '2020-04-22'),
(228, '2020-0422-2', 'admin', 'm-scb', '', 1, 22000, 'DINE-IN', '2020-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(50) NOT NULL,
  `nama_karyawan` varchar(50) DEFAULT NULL,
  `alamat_karyawan` varchar(25) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_panggilan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `no_hp`, `password`, `nama_panggilan`) VALUES
('admin', 'ADMINISTRATOR', 'Alamat', '', 'admin', 'ADMIN'),
('bella', 'BELLA', 'asdasdasd	', '', 'bella', 'BELLA'),
('mumbe', 'MUHAMMAD RISKI', 'asdasdasdasdasdasdasd ', '', 'mumb', 'RISKI'),
('ruman1609', 'RUDY RACHMAN', 'D.I. Panjaitan Nomor 36D', '', 'aldy rachman', 'RUDY');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `jenis` varchar(15) DEFAULT NULL,
  `id` varchar(15) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`jenis`, `id`, `nama`, `harga`) VALUES
('ADD-ON', 'a-bb', 'Beef Belly', 5000),
('ADD-ON', 'a-cw', 'Chicken Wings', 20000),
('ADD-ON', 'a-ff', 'French Fries', 7000),
('ADD-ON', 'a-sb', 'Smoke Beef', 5000),
('ADD-ON', 'a-sc', 'Smoke Cheese', 4000),
('ADD-ON', 'a-xc', 'Xtra Cheese', 3000),
('PAKET', 'CY1', 'Chik\' Enjoy/Spicy + French Fries + Tea', 31000),
('PAKET', 'CY2', 'Chik\' Enjoy/Spicy + French Fries + Shake', 41000),
('MINUM', 'd-c', 'Coffee', 12000),
('MINUM', 'd-cc', 'Choco Cream', 18000),
('MINUM', 'd-cr', 'Chocolate Royale', 18000),
('MINUM', 'd-icm', 'Ice Coffee Milk', 15000),
('MINUM', 'd-m', 'Mocacino', 18000),
('MINUM', 'd-mat', 'Matcha', 20000),
('MINUM', 'd-nlemt', 'Nestea Lemon Tea', 8000),
('MINUM', 'd-nlyct', 'Nestea Lychee Tea', 8000),
('MINUM', 'd-rv', 'Red Velvet', 18000),
('BURGER', 'm-cesb', 'Chick\' Enjoy Cheese Burger', 20000),
('BURGER', 'm-scb', 'Spicy Cheese Burger', 22000),
('BURGER', 'm-ss+ff', 'Simple Smoke + French Fries', 27000),
('BURGER', 'm-tocb-d', 'The Ordinary Cheese Burger Double', 37000),
('BURGER', 'm-tocb-s', 'The Ordinary Cheese Burger Single', 27000),
('BURGER', 'm-ucb', 'Unperfect Cheese Burger', 27000),
('PAKET', 'TO1', 'Ordinary + French Fries + Tea', 38000),
('PAKET', 'TO2', 'Ordinary + French Fries + Shake', 48000),
('PAKET', 'UN1', 'Unperfect + French Fries + Tea', 38000),
('PAKET', 'UN2', 'Unperfect + French Fries + Shake', 48000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`indeks`);

--
-- Indexes for table `burgera`
--
ALTER TABLE `burgera`
  ADD PRIMARY KEY (`indeks`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
  MODIFY `indeks` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `burgera`
--
ALTER TABLE `burgera`
  MODIFY `indeks` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
