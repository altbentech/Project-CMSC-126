--
-- Database: `submissions`
--

CREATE DATABASE IF NOT EXISTS `submissions` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `submissions`;

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
CREATE TABLE IF NOT EXISTS `entries` (
`id` int(11) NOT NULL,
`email` varchar(200) NOT NULL,
`title` varchar(150) NOT NULL,
`author` varchar(150) NOT NULL,
`content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `entries`
ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `entries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;