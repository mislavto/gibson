-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 01:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gibson`
--

-- --------------------------------------------------------

--
-- Table structure for table `civija`
--

CREATE TABLE `civija` (
  `id_dela` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL,
  `cena_dela` float DEFAULT NULL,
  `datum_proizvodnje` date DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `velicina_civije` float DEFAULT NULL,
  `marka_civije` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gitara`
--

CREATE TABLE `gitara` (
  `id_proizvoda` int(11) NOT NULL,
  `tip_proizvoda` text DEFAULT NULL,
  `datum_proizvodnje` date DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `cena_proizvoda` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gitara`
--

INSERT INTO `gitara` (`id_proizvoda`, `tip_proizvoda`, `datum_proizvodnje`, `kolicina`, `cena_proizvoda`) VALUES
(1, 'Tipp', '2021-01-05', 50, '15000.0'),
(2, 'Tip', '2021-01-03', 55, '900.0');

-- --------------------------------------------------------

--
-- Table structure for table `kobilica`
--

CREATE TABLE `kobilica` (
  `id_dela` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL,
  `cena_dela` float DEFAULT NULL,
  `datum_proizvodnje` date DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `marka_kobilice` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `korpus`
--

CREATE TABLE `korpus` (
  `id_dela` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL,
  `cena_dela` float DEFAULT NULL,
  `datum_proizvodnje` date DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `velicina_korpusa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `id_lokacije` int(11) NOT NULL,
  `drzava` text DEFAULT NULL,
  `grad` text DEFAULT NULL,
  `adresa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mandolina`
--

CREATE TABLE `mandolina` (
  `id_proizvoda` int(11) NOT NULL,
  `tip_proizvoda` text DEFAULT NULL,
  `datum_proizvodnje` date DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `cena_proizvoda` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prodaja`
--

CREATE TABLE `prodaja` (
  `id_prodaje` int(11) NOT NULL,
  `id_lokacije` int(11) NOT NULL,
  `cena_prodaje` float DEFAULT NULL,
  `datum_prodaje` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stavkaprodaje`
--

CREATE TABLE `stavkaprodaje` (
  `id_stavke` int(11) NOT NULL,
  `id_prodaje` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL,
  `kolicina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zica`
--

CREATE TABLE `zica` (
  `id_dela` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL,
  `cena_dela` float DEFAULT NULL,
  `datum_proizvodnje` date DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `tip_zice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `civija`
--
ALTER TABLE `civija`
  ADD PRIMARY KEY (`id_dela`),
  ADD KEY `fk_se_sastoji_od5` (`id_proizvoda`);

--
-- Indexes for table `gitara`
--
ALTER TABLE `gitara`
  ADD PRIMARY KEY (`id_proizvoda`);

--
-- Indexes for table `kobilica`
--
ALTER TABLE `kobilica`
  ADD PRIMARY KEY (`id_dela`),
  ADD KEY `fk_se_sastoji_od8` (`id_proizvoda`);

--
-- Indexes for table `korpus`
--
ALTER TABLE `korpus`
  ADD PRIMARY KEY (`id_dela`),
  ADD KEY `fk_se_sastoji_od7` (`id_proizvoda`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`id_lokacije`);

--
-- Indexes for table `mandolina`
--
ALTER TABLE `mandolina`
  ADD PRIMARY KEY (`id_proizvoda`);

--
-- Indexes for table `prodaja`
--
ALTER TABLE `prodaja`
  ADD PRIMARY KEY (`id_prodaje`),
  ADD KEY `fk_prodato_na` (`id_lokacije`);

--
-- Indexes for table `stavkaprodaje`
--
ALTER TABLE `stavkaprodaje`
  ADD PRIMARY KEY (`id_stavke`),
  ADD KEY `fk_ima` (`id_prodaje`),
  ADD KEY `fk_prodaja2` (`id_proizvoda`);

--
-- Indexes for table `zica`
--
ALTER TABLE `zica`
  ADD PRIMARY KEY (`id_dela`),
  ADD KEY `fk_se_sastoji_od6` (`id_proizvoda`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `civija`
--
ALTER TABLE `civija`
  MODIFY `id_dela` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gitara`
--
ALTER TABLE `gitara`
  MODIFY `id_proizvoda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kobilica`
--
ALTER TABLE `kobilica`
  MODIFY `id_dela` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `korpus`
--
ALTER TABLE `korpus`
  MODIFY `id_dela` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `id_lokacije` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mandolina`
--
ALTER TABLE `mandolina`
  MODIFY `id_proizvoda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodaja`
--
ALTER TABLE `prodaja`
  MODIFY `id_prodaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stavkaprodaje`
--
ALTER TABLE `stavkaprodaje`
  MODIFY `id_stavke` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zica`
--
ALTER TABLE `zica`
  MODIFY `id_dela` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `civija`
--
ALTER TABLE `civija`
  ADD CONSTRAINT `fk_se_sastoji_od` FOREIGN KEY (`id_proizvoda`) REFERENCES `gitara` (`id_proizvoda`),
  ADD CONSTRAINT `fk_se_sastoji_od5` FOREIGN KEY (`id_proizvoda`) REFERENCES `mandolina` (`id_proizvoda`);

--
-- Constraints for table `kobilica`
--
ALTER TABLE `kobilica`
  ADD CONSTRAINT `fk_se_sastoji_od4` FOREIGN KEY (`id_proizvoda`) REFERENCES `mandolina` (`id_proizvoda`),
  ADD CONSTRAINT `fk_se_sastoji_od8` FOREIGN KEY (`id_proizvoda`) REFERENCES `gitara` (`id_proizvoda`);

--
-- Constraints for table `korpus`
--
ALTER TABLE `korpus`
  ADD CONSTRAINT `fk_se_sastoji_od3` FOREIGN KEY (`id_proizvoda`) REFERENCES `mandolina` (`id_proizvoda`),
  ADD CONSTRAINT `fk_se_sastoji_od7` FOREIGN KEY (`id_proizvoda`) REFERENCES `gitara` (`id_proizvoda`);

--
-- Constraints for table `prodaja`
--
ALTER TABLE `prodaja`
  ADD CONSTRAINT `fk_prodato_na` FOREIGN KEY (`id_lokacije`) REFERENCES `lokacija` (`id_lokacije`);

--
-- Constraints for table `stavkaprodaje`
--
ALTER TABLE `stavkaprodaje`
  ADD CONSTRAINT `fk_ima` FOREIGN KEY (`id_prodaje`) REFERENCES `prodaja` (`id_prodaje`),
  ADD CONSTRAINT `fk_prodaja` FOREIGN KEY (`id_proizvoda`) REFERENCES `gitara` (`id_proizvoda`),
  ADD CONSTRAINT `fk_prodaja2` FOREIGN KEY (`id_proizvoda`) REFERENCES `mandolina` (`id_proizvoda`);

--
-- Constraints for table `zica`
--
ALTER TABLE `zica`
  ADD CONSTRAINT `fk_se_sastoji_od2` FOREIGN KEY (`id_proizvoda`) REFERENCES `mandolina` (`id_proizvoda`),
  ADD CONSTRAINT `fk_se_sastoji_od6` FOREIGN KEY (`id_proizvoda`) REFERENCES `gitara` (`id_proizvoda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
