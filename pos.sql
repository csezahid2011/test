-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2016 at 07:49 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac_charts`
--

CREATE TABLE `ac_charts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(25) NOT NULL,
  `name` text NOT NULL,
  `memo` text,
  `opening` double DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `link_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ac_charts`
--

INSERT INTO `ac_charts` (`id`, `company_id`, `parent_id`, `code`, `name`, `memo`, `opening`, `edate`, `status`, `link_id`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 1, 0, '10', 'Assets', 'Assets', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(2, 1, 0, '20', 'Liabilities', 'Liabilities', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(3, 1, 0, '30', 'Equity', 'Equity', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(4, 1, 0, '40', 'Income', 'Income', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(5, 1, 0, '50', 'Expense', 'Expense', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(6, 1, 0, '60', 'Cost of Goods or Services Sold', 'Cost of Goods or Services Sold', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(7, 1, 1, '10.10', 'Current Assets', 'Current Assets', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(8, 1, 1, '10.20', 'None Current Assets', 'None Current Assets', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:23', 1, '0000-00-00 00:00:00', 0),
(9, 1, 2, '20.10', 'Current Liabilities', 'Current Liabilities', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(10, 1, 2, '20.20', 'None Current Liabilities', 'None Current Liabilities', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(11, 1, 3, '30.10', 'Partners'' or Owners'' Capital', 'Partners'' or Owners'' Capital', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(12, 1, 3, '30.20', 'Stockholders'' Capital', 'Stockholders'' Capital', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(13, 1, 3, '30.30', 'Retained Earnings & Other Income', 'Retained Earnings & Other Income', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(14, 1, 4, '40.10', 'Sales or Service Revenues', 'Sales or Service Revenues', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(15, 1, 5, '50.10', 'Operating Expenses', 'Operating Expenses', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(16, 1, 5, '50.20', 'Other Expenses', 'Other Expenses', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(17, 1, 5, '50.30', 'Purchase', '', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(18, 1, 7, '10.10.10', 'Cash and Cash Equivalent', 'Cash and Cash Equivalent', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(19, 1, 7, '10.10.20', 'Receivables', 'Receivables', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(20, 1, 7, '10.10.30', 'Inventories', 'Inventories', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(21, 1, 7, '10.10.40', 'Prepaid Expenses and Deposits', 'Prepaid Expenses and Deposits', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(22, 1, 8, '10.20.10', 'Long-Term Investments', 'Long-Term Investments', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(23, 1, 8, '10.20.20', 'Properties , Plant and Equipment', 'Properties , Plant and Equipment', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(24, 1, 8, '10.20.30', 'Intangible Assets', 'Intangible Assets', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(25, 1, 8, '10.20.40', 'Other Assets', 'Other Assets', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(26, 1, 18, '10.10.10.10', 'Bank Account', 'Bank Account', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(27, 1, 18, '10.10.10.20', 'Cash', 'Cash', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(28, 1, 18, '10.10.10.30', 'Petty Cash', 'Petty Cash', -10000, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '2015-05-10 11:45:37', 6),
(29, 1, 20, '10.10.30.10', 'Finished Goods', 'Finished Goods', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(30, 1, 24, '10.20.30.10', 'Goodwill of Acquired Businesses', 'Goodwill of Acquired Businesses', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(31, 1, 24, '10.20.30.20', 'Patents', 'Patents', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(32, 1, 24, '10.20.30.30', 'Trademarks', 'Trademarks', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(33, 1, 9, '20.10.10', 'Accounts Payable', 'Accounts Payable', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(34, 1, 9, '20.10.20', 'Notes Payble', 'Notes Payble', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:24', 1, '0000-00-00 00:00:00', 0),
(35, 1, 10, '20.20.10', 'Long-term Loans , Notes and Bonds Payable', 'Long-term Loans , Notes and Bonds Payable', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:25', 1, '0000-00-00 00:00:00', 0),
(36, 1, 14, '40.10.10', 'Sales', 'Sales', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:25', 1, '0000-00-00 00:00:00', 0),
(37, 1, 15, '50.10.10', 'Selling Expenses', 'Selling Expenses', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:25', 1, '0000-00-00 00:00:00', 0),
(38, 1, 15, '50.10.20', 'General and Administrative Expenses', 'General and Administrative Expenses', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:25', 1, '0000-00-00 00:00:00', 0),
(39, 1, 38, '50.10.20.10', 'Office Salaries', 'Office Salaries', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:25', 1, '0000-00-00 00:00:00', 0),
(40, 1, 38, '50.10.20.20', 'Utilities Expenses', 'Utilities Expenses', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:25', 1, '0000-00-00 00:00:00', 0),
(41, 1, 17, '50.30.10', 'Finished Goods', '', 0, '0000-00-00', 'Active', 0, '2014-09-25 20:12:25', 1, '0000-00-00 00:00:00', 0),
(42, 1, 19, '10.10.20.10', 'Ashraful', NULL, NULL, NULL, 'Active', NULL, '2016-04-17 14:07:00', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ac_default_charts`
--

CREATE TABLE `ac_default_charts` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(25) NOT NULL,
  `name` text NOT NULL,
  `memo` text,
  `status` enum('Active','Inactive') NOT NULL,
  `type` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ac_default_charts`
--

INSERT INTO `ac_default_charts` (`id`, `parent_id`, `code`, `name`, `memo`, `status`, `type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 0, '10', 'Assets', 'Assets', 'Active', '', '2014-09-20 01:21:18', 15, '0000-00-00 00:00:00', 0),
(2, 0, '20', 'Liabilities', 'Liabilities', 'Active', '', '2014-09-20 01:21:58', 15, '0000-00-00 00:00:00', 0),
(3, 0, '30', 'Equity', 'Equity', 'Active', '', '2014-09-20 01:22:11', 15, '0000-00-00 00:00:00', 0),
(4, 0, '40', 'Income', 'Income', 'Active', '', '2014-09-20 01:22:27', 15, '0000-00-00 00:00:00', 0),
(5, 0, '50', 'Expense', 'Expense', 'Active', '', '2014-09-20 01:23:03', 15, '0000-00-00 00:00:00', 0),
(6, 1, '10.10', 'Current Assets', 'Current Assets', 'Active', '', '2014-09-20 10:27:08', 15, '0000-00-00 00:00:00', 0),
(7, 1, '10.20', 'None Current Assets', 'None Current Assets', 'Active', '', '2014-09-20 10:27:26', 15, '0000-00-00 00:00:00', 0),
(8, 6, '10.10.10', 'Cash and Cash Equivalent', 'Cash and Cash Equivalent', 'Active', '', '2014-09-20 10:30:54', 15, '0000-00-00 00:00:00', 0),
(9, 6, '10.10.20', 'Receivables', 'Receivables', 'Active', 'Receivable', '2014-09-20 10:31:37', 15, '2014-09-25 19:27:37', 1),
(10, 6, '10.10.30', 'Inventories', 'Inventories', 'Active', '', '2014-09-20 10:32:05', 15, '0000-00-00 00:00:00', 0),
(11, 6, '10.10.40', 'Prepaid Expenses and Deposits', 'Prepaid Expenses and Deposits', 'Active', '', '2014-09-20 10:32:30', 15, '0000-00-00 00:00:00', 0),
(12, 7, '10.20.10', 'Long-Term Investments', 'Long-Term Investments', 'Active', '', '2014-09-20 10:33:34', 15, '0000-00-00 00:00:00', 0),
(13, 7, '10.20.20', 'Properties , Plant and Equipment', 'Properties , Plant and Equipment', 'Active', '', '2014-09-20 10:34:08', 15, '0000-00-00 00:00:00', 0),
(14, 7, '10.20.30', 'Intangible Assets', 'Intangible Assets', 'Active', '', '2014-09-20 10:34:40', 15, '0000-00-00 00:00:00', 0),
(15, 14, '10.20.30.10', 'Goodwill of Acquired Businesses', 'Goodwill of Acquired Businesses', 'Active', '', '2014-09-20 10:35:13', 15, '0000-00-00 00:00:00', 0),
(16, 14, '10.20.30.20', 'Patents', 'Patents', 'Active', '', '2014-09-20 10:35:35', 15, '0000-00-00 00:00:00', 0),
(17, 14, '10.20.30.30', 'Trademarks', 'Trademarks', 'Active', '', '2014-09-20 10:35:53', 15, '0000-00-00 00:00:00', 0),
(18, 7, '10.20.40', 'Other Assets', 'Other Assets', 'Active', '', '2014-09-20 10:36:34', 15, '0000-00-00 00:00:00', 0),
(20, 2, '20.10', 'Current Liabilities', 'Current Liabilities', 'Active', '', '2014-09-20 10:44:29', 15, '0000-00-00 00:00:00', 0),
(21, 2, '20.20', 'None Current Liabilities', 'None Current Liabilities', 'Active', '', '2014-09-20 10:45:09', 15, '0000-00-00 00:00:00', 0),
(22, 3, '30.10', 'Partners'' or Owners'' Capital', 'Partners'' or Owners'' Capital', 'Active', '', '2014-09-20 10:45:48', 15, '0000-00-00 00:00:00', 0),
(23, 3, '30.20', 'Stockholders'' Capital', 'Stockholders'' Capital', 'Active', '', '2014-09-20 10:46:10', 15, '0000-00-00 00:00:00', 0),
(24, 3, '30.30', 'Retained Earnings & Other Income', 'Retained Earnings & Other Income', 'Active', '', '2014-09-20 10:46:37', 15, '0000-00-00 00:00:00', 0),
(25, 4, '40.10', 'Sales or Service Revenues', 'Sales or Service Revenues', 'Active', '', '2014-09-20 10:47:08', 15, '0000-00-00 00:00:00', 0),
(26, 25, '40.10.10', 'Sales', 'Sales', 'Active', 'Sales', '2014-09-20 10:49:14', 15, '2014-09-25 19:28:08', 1),
(27, 5, '50.10', 'Operating Expenses', 'Operating Expenses', 'Active', '', '2014-09-20 10:50:48', 15, '0000-00-00 00:00:00', 0),
(28, 5, '50.20', 'Other Expenses', 'Other Expenses', 'Active', '', '2014-09-20 10:52:03', 15, '0000-00-00 00:00:00', 0),
(29, 10, '10.10.30.10', 'Finished Goods', 'Finished Goods', 'Active', 'Inventory', '2014-09-20 10:57:00', 15, '0000-00-00 00:00:00', 0),
(31, 0, '60', 'Cost of Goods or Services Sold', 'Cost of Goods or Services Sold', 'Active', 'COGS', '2014-09-20 11:30:14', 15, '0000-00-00 00:00:00', 0),
(32, 27, '50.10.10', 'Selling Expenses', 'Selling Expenses', 'Active', '', '2014-09-20 12:18:55', 15, '0000-00-00 00:00:00', 0),
(33, 27, '50.10.20', 'General and Administrative Expenses', 'General and Administrative Expenses', 'Active', '', '2014-09-20 12:19:20', 15, '0000-00-00 00:00:00', 0),
(34, 33, '50.10.20.10', 'Office Salaries', 'Office Salaries', 'Active', '', '2014-09-20 12:19:55', 15, '0000-00-00 00:00:00', 0),
(35, 33, '50.10.20.20', 'Utilities Expenses', 'Utilities Expenses', 'Active', '', '2014-09-20 12:20:29', 15, '0000-00-00 00:00:00', 0),
(36, 20, '20.10.10', 'Accounts Payable', 'Accounts Payable', 'Active', 'Payable', '2014-09-20 12:23:14', 15, '2014-09-25 19:27:52', 1),
(37, 20, '20.10.20', 'Notes Payble', 'Notes Payble', 'Active', '', '2014-09-20 12:23:36', 15, '0000-00-00 00:00:00', 0),
(38, 21, '20.20.10', 'Long-term Loans , Notes and Bonds Payable', 'Long-term Loans , Notes and Bonds Payable', 'Active', '', '2014-09-20 12:25:33', 15, '0000-00-00 00:00:00', 0),
(39, 8, '10.10.10.10', 'Bank Account', 'Bank Account', 'Active', 'Bank', '2014-09-20 12:46:41', 15, '2014-09-25 19:27:21', 1),
(40, 8, '10.10.10.20', 'Cash', 'Cash', 'Active', 'Cash', '2014-09-20 12:46:58', 15, '2014-09-25 19:23:14', 1),
(41, 8, '10.10.10.30', 'Petty Cash', 'Petty Cash', 'Active', '', '2014-09-20 12:47:18', 15, '0000-00-00 00:00:00', 0),
(42, 5, '50.30', 'Purchase', '', 'Active', 'Purchase', '2014-09-24 12:21:52', 1, '2014-09-25 20:13:38', 1),
(43, 42, '50.30.10', 'Finished Goods', '', 'Active', '', '2014-09-24 12:22:12', 1, '2014-09-25 20:13:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ac_journal_details`
--

CREATE TABLE `ac_journal_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `journal_no` int(11) NOT NULL,
  `chart_id` int(11) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `memo` text,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ac_journal_master`
--

CREATE TABLE `ac_journal_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `journal_no` int(11) NOT NULL,
  `journal_date` date NOT NULL,
  `memo` text,
  `doc_type` varchar(50) DEFAULT NULL,
  `doc_no` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ac_money_receipts`
--

CREATE TABLE `ac_money_receipts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `mr_no` varchar(20) NOT NULL,
  `mr_date` date NOT NULL,
  `next_date` date DEFAULT NULL,
  `amount` double NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `memo` text,
  `doc_type` varchar(50) DEFAULT NULL,
  `doc_no` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ac_payment_receipts`
--

CREATE TABLE `ac_payment_receipts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `payment_no` varchar(20) NOT NULL,
  `payment_date` date NOT NULL,
  `next_date` date DEFAULT NULL,
  `amount` double NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `memo` text,
  `doc_type` varchar(50) DEFAULT NULL,
  `doc_no` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` text,
  `area` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `code`, `name`, `address`, `area`, `city`, `zip`, `country`, `phone`, `email`, `url`, `contact_person`, `mobile_no`, `status`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, '', 'Your Company', 'Address', '', '', '', '', '', '', '', 'Mr. Admin', '', 'Inactive', '2014-09-25 20:12:23', 0, '2015-02-23 11:24:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `ac_id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `address` blob,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `notes` text,
  `status` enum('Active','Inactive') NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `company_id`, `ac_id`, `code`, `name`, `address`, `city`, `zip`, `country`, `mobile`, `phone`, `email`, `dob`, `web`, `notes`, `status`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 42, '1001', 'Ashraful', 0x486f6d6520332c20526f616420382c204d69727075722031302c204468616b612d31323136, NULL, NULL, 'Bangladesh', '01723333166', NULL, 'ashraful@gstlbd.com', NULL, NULL, 'Most buying customer', 'Active', '2016-04-17 14:07:00', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `damages_return_details`
--

CREATE TABLE `damages_return_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `damages_return_no` int(11) NOT NULL,
  `damages_return_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `sale_price` double NOT NULL,
  `vat_percent` double DEFAULT NULL,
  `vat_amount` double DEFAULT NULL,
  `quantity` double NOT NULL,
  `price_total` double NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `damages_return_master`
--

CREATE TABLE `damages_return_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `damages_return_no` int(11) NOT NULL,
  `damages_return_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `discount` double DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `notes` text,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emps`
--

CREATE TABLE `emps` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `voter_id` varchar(32) DEFAULT NULL,
  `joining` date DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `designation` varchar(50) NOT NULL,
  `present_address` text,
  `permanent_address` text,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `picture` varchar(20) DEFAULT NULL,
  `notes` text,
  `status` enum('Active','Inactive','Terminate') DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text,
  `min_sale_price` double NOT NULL,
  `re_order` int(11) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `company_id`, `code`, `name`, `description`, `min_sale_price`, `re_order`, `picture`, `status`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 'BRB1001', 'Fan', 'Most used fan in Bangladesh.', 2600, 2, NULL, 'Active', '2016-04-17 14:00:32', 6, NULL, NULL),
(2, 1, 'Walton1001', 'Fan', 'Made in Bangladesh', 1500, 2, NULL, 'Active', '2016-04-17 14:02:28', 6, NULL, NULL),
(3, 1, 'BRB1002', 'Fan', 'Description', 2600, 10, NULL, 'Active', '2016-04-17 14:18:20', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `purchase_no` varchar(50) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `purchase_price` double NOT NULL,
  `vat_percent` double DEFAULT NULL,
  `vat_amount` double DEFAULT NULL,
  `total_price` double NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_master`
--

CREATE TABLE `purchase_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_no` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `notes` text,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `purchase_return_no` varchar(50) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `purchase_price` double NOT NULL,
  `vat_percent` double DEFAULT NULL,
  `vat_amount` double DEFAULT NULL,
  `total_price` double NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_master`
--

CREATE TABLE `purchase_return_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_return_no` varchar(50) NOT NULL,
  `purchase_return_date` date NOT NULL,
  `notes` text,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `sales_no` int(11) NOT NULL,
  `sales_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `sale_price` double NOT NULL,
  `vat_percent` double DEFAULT NULL,
  `vat_amount` double DEFAULT NULL,
  `quantity` double NOT NULL,
  `price_total` double NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales_master`
--

CREATE TABLE `sales_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `sales_no` int(11) NOT NULL,
  `sales_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `discount` double DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `notes` text,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_master`
--

INSERT INTO `sales_master` (`id`, `company_id`, `sales_no`, `sales_date`, `customer_id`, `discount`, `type`, `notes`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 1001, '2016-04-17', 1, NULL, '', NULL, '2016-04-17 14:15:01', 6, NULL, NULL),
(2, 1, 1002, '2016-04-17', 1, NULL, '', NULL, '2016-04-17 14:16:46', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_details`
--

CREATE TABLE `sales_return_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `sales_return_no` int(11) NOT NULL,
  `sales_return_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `sale_price` double NOT NULL,
  `vat_percent` double DEFAULT NULL,
  `vat_amount` double DEFAULT NULL,
  `quantity` double NOT NULL,
  `price_total` double NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_return_details`
--

INSERT INTO `sales_return_details` (`id`, `company_id`, `sales_return_no`, `sales_return_date`, `item_id`, `sale_price`, `vat_percent`, `vat_amount`, `quantity`, `price_total`, `created_at`, `created_by`) VALUES
(1, 1, 1001, '2016-04-17', 2, 1500, NULL, NULL, 1, 1500, '2016-04-17 14:07:54', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_master`
--

CREATE TABLE `sales_return_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `sales_return_no` int(11) NOT NULL,
  `sales_return_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `discount` double DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `notes` text,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_return_master`
--

INSERT INTO `sales_return_master` (`id`, `company_id`, `sales_return_no`, `sales_return_date`, `customer_id`, `discount`, `type`, `notes`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 1001, '2016-04-17', 1, NULL, '', NULL, '2016-04-17 14:07:54', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `ac_receivable` int(11) NOT NULL,
  `ac_payable` int(11) NOT NULL,
  `ac_cash` int(11) NOT NULL,
  `ac_bank` int(11) NOT NULL,
  `ac_sales` int(11) NOT NULL,
  `ac_purchase` int(11) NOT NULL,
  `ac_inventory` int(11) NOT NULL,
  `ac_cogs` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_id`, `ac_receivable`, `ac_payable`, `ac_cash`, `ac_bank`, `ac_sales`, `ac_purchase`, `ac_inventory`, `ac_cogs`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 1, 19, 33, 27, 26, 36, 17, 29, 6, '2014-09-25 20:12:25', 0, '2015-05-19 14:13:30', 6);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `ac_id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `address` text,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `notes` text,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` enum('Admin','Power User','User') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `email`, `password`, `name`, `type`, `status`, `code`, `picture`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(6, 1, 'admin@gmail.com', '7c4a8d09ca3762af', 'Mr. Admin', 'Admin', 'Active', '66af608035473049171828825505c433', '', '2015-02-20 12:41:16', 1, '2015-05-25 17:51:28', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `ref_user` int(11) NOT NULL,
  `inventory_menu` int(11) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `sales_return` int(11) DEFAULT NULL,
  `purchase` int(11) DEFAULT NULL,
  `purchase_return` int(11) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `hr_menu` int(11) DEFAULT NULL,
  `employee` int(11) DEFAULT NULL,
  `accounts_menu` int(11) DEFAULT NULL,
  `journal` int(11) DEFAULT NULL,
  `ac_head` int(11) DEFAULT NULL,
  `money_receipt` int(11) DEFAULT NULL,
  `payment_receipt` int(11) DEFAULT NULL,
  `report_menu` int(11) DEFAULT NULL,
  `purchase_report` int(11) DEFAULT NULL,
  `purchase_return_report` int(11) DEFAULT NULL,
  `sales_report` int(11) DEFAULT NULL,
  `sales_return_report` int(11) DEFAULT NULL,
  `inventory_report` int(11) DEFAULT NULL,
  `ledger_report` int(11) DEFAULT NULL,
  `trial_balance_report` int(11) DEFAULT NULL,
  `balance_sheet_report` int(11) DEFAULT NULL,
  `income_statement_report` int(11) DEFAULT NULL,
  `bills_receivable_report` int(11) DEFAULT NULL,
  `bills_payable_report` int(11) DEFAULT NULL,
  `cash_book_report` int(11) DEFAULT NULL,
  `bank_book_report` int(11) DEFAULT NULL,
  `settings_menu` int(11) DEFAULT NULL,
  `basic_settings` int(11) DEFAULT NULL,
  `company_settings` int(11) DEFAULT NULL,
  `default_ac_head_settings` int(11) DEFAULT NULL,
  `user_menu` int(11) DEFAULT NULL,
  `user_section` int(11) DEFAULT NULL,
  `user_permission` int(11) DEFAULT NULL,
  `user_edit` int(11) DEFAULT NULL,
  `user_delete` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_privileges`
--

INSERT INTO `user_privileges` (`id`, `company_id`, `ref_user`, `inventory_menu`, `sales`, `sales_return`, `purchase`, `purchase_return`, `supplier`, `item`, `customer`, `hr_menu`, `employee`, `accounts_menu`, `journal`, `ac_head`, `money_receipt`, `payment_receipt`, `report_menu`, `purchase_report`, `purchase_return_report`, `sales_report`, `sales_return_report`, `inventory_report`, `ledger_report`, `trial_balance_report`, `balance_sheet_report`, `income_statement_report`, `bills_receivable_report`, `bills_payable_report`, `cash_book_report`, `bank_book_report`, `settings_menu`, `basic_settings`, `company_settings`, `default_ac_head_settings`, `user_menu`, `user_section`, `user_permission`, `user_edit`, `user_delete`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(3, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2015-05-21 10:29:40', 6, '2015-05-21 11:10:49', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_charts`
--
ALTER TABLE `ac_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_default_charts`
--
ALTER TABLE `ac_default_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_journal_details`
--
ALTER TABLE `ac_journal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_journal_master`
--
ALTER TABLE `ac_journal_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_money_receipts`
--
ALTER TABLE `ac_money_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_payment_receipts`
--
ALTER TABLE `ac_payment_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damages_return_details`
--
ALTER TABLE `damages_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damages_return_master`
--
ALTER TABLE `damages_return_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emps`
--
ALTER TABLE `emps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_master`
--
ALTER TABLE `purchase_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_master`
--
ALTER TABLE `purchase_return_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_master`
--
ALTER TABLE `sales_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_master`
--
ALTER TABLE `sales_return_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_charts`
--
ALTER TABLE `ac_charts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `ac_default_charts`
--
ALTER TABLE `ac_default_charts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ac_journal_details`
--
ALTER TABLE `ac_journal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ac_journal_master`
--
ALTER TABLE `ac_journal_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ac_money_receipts`
--
ALTER TABLE `ac_money_receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ac_payment_receipts`
--
ALTER TABLE `ac_payment_receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `damages_return_details`
--
ALTER TABLE `damages_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `damages_return_master`
--
ALTER TABLE `damages_return_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emps`
--
ALTER TABLE `emps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_master`
--
ALTER TABLE `purchase_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_return_master`
--
ALTER TABLE `purchase_return_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_master`
--
ALTER TABLE `sales_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sales_return_master`
--
ALTER TABLE `sales_return_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
