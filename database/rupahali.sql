-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 06:06 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rupahali`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_type` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `admin_type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super@admin.com', 1, '$2y$10$hZRZiBmJWAk1WK4T6eGYS.QAp9rl.A8LcLilY.q/kK8Ffu62VF3Kq', 'lYEtWDeSrN1tuzO57N8Hv1QYxvVi5r49xguLhVA7n1zr9VYo1ERgethqlFUZ', NULL, '2016-08-26 19:46:06'),
(2, 'admin', 'info@rupahali.com', 2, '$2y$10$hZRZiBmJWAk1WK4T6eGYS.QAp9rl.A8LcLilY.q/kK8Ffu62VF3Kq', 'GCRVH8gcsvFve74oSpG5atFujK9vGi2USIMREF1FgJHUR7XuBZXM4wc9akXL', NULL, '2017-02-20 21:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `category_row_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_long_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` int(11) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `count_product` int(11) NOT NULL,
  `category_sort_order` int(11) NOT NULL,
  `meta_key` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `post_row_id` int(11) NOT NULL,
  `category_row_id` int(11) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL,
  `post_url_link` varchar(255) NOT NULL,
  `has_content` tinyint(1) NOT NULL DEFAULT '0',
  `post_title` varchar(255) NOT NULL,
  `post_content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`post_row_id`, `category_row_id`, `active_status`, `sort_order`, `post_url_link`, `has_content`, `post_title`, `post_content`, `created_at`, `updated_at`) VALUES
(1, 58, 1, 0, 'Web-Crawler', 0, 'Web Crawler', 'A Web crawler is an Internet bot which systematically browses the World Wide Web, typically for the purpose of Web indexing (web spidering). Web search ...', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 56, 1, 1, 'install-laravel-in-windows', 1, 'Install laravel in windows', '<p>1. Install Composer<br />2. Create a folder inside htdocs named \"laravelProject\"<br />3. Open cmd and run<br />&nbsp; &nbsp;composer create-project laravel/laravel &nbsp;D:/xampp/htdocs/laravelProject<br /><br />You can keep the project anywhere and can run it. It is the simplest way to install laravel in windows. It will install latest version of laravel.<br />For more details it is better to visit&nbsp;&nbsp;<a href=\"https://www.laravel.com/docs/5.3/installation\">https://www.laravel.com/docs/5.3/installation</a> because everything is there.</p>', '0000-00-00 00:00:00', '2016-08-25 16:30:55'),
(4, 57, 1, 0, 'my-sql-null-value', 1, 'My SQL Null Value', '<p><strong>o &nbsp;is not null</strong><br /> <strong>\'\' is not null<br /> \' &nbsp;\' &nbsp;is not null<br /> Only null is null<br /> <code>Any operation with null makes the output&nbsp;null.</code></strong><br /> SELECT &nbsp;2/0 &nbsp; &nbsp; &nbsp; &nbsp;//output: null<br /> SELECT 2*null &nbsp; //output: null<br /> SELECT ISNULL(NULL) &nbsp;//output: 1<br /> SELECT ISNULL(0)&nbsp;//output: 0<br /> SELECT ISNULL(\'\')&nbsp;//output: 0<br /> SELECT ISNULL(\' \')&nbsp;//output: 0</p>\r\n<p>&nbsp;</p>', '0000-00-00 00:00:00', '2016-08-25 16:43:40'),
(6, 57, 1, 0, 'mysql-storage-engine', 1, 'MySQL Storage Engine', '<p><strong>1. MyISAM</strong><br /><strong>2.InnoDB<br /></strong>3. Memory<br />4.CSV<br />5.Merge<br />and some others.<br /><br />Usually MyISAM and InnoDB are used.<br /><br /><strong>MyISAM was default storage engine up to My SQL 5.5. &nbsp;InnoDB is the default storage engine in&nbsp;MySQL 5.5 and Later version.<br /><br />MyISAM:&nbsp; <br />&nbsp;</strong>&gt;&gt;Faster than InnoDB<strong> <br /></strong>&nbsp;&gt;&gt;It is good when there are lot of&nbsp;read operations in table. &nbsp;<br /><strong>&nbsp;</strong>&gt;&gt;Good for Full-text Search<br /><strong>&nbsp;</strong>&gt;&gt;Does not support&nbsp;transactions<br />&gt;&gt;Supports Table level locking<br /><br /><strong>InnoDB:</strong><br />&gt;&gt;Support &nbsp;transaction that is necessary in finance module, specially in banking software.<br />&gt;&gt;support row level locking<br />&gt;&gt;Foreign key constraints<br />&gt;&gt;Crash recovery, more resistant to table corruption.<br />&gt;&gt; Good when there are more write operations in the table.<strong><br /></strong><br /><strong>Memory:</strong><br />&gt;&gt;Fastest<br />&gt;&gt;Good for Creation of &nbsp;temporary tables.<br />&gt;&gt;Data is lost when database is restarted, Table is not destroyed but no data will be there.<br />&nbsp;</p>\r\n<p>&nbsp;</p>', '0000-00-00 00:00:00', '2016-08-25 16:05:56'),
(7, 57, 1, 0, 'MySQL keys', 1, 'Keys', '<p>1. Primary<br />2. Unique ( unique is unique:) &nbsp;accepts&nbsp;0)<br />3. Index (Mainly used to make the searching faster)<br />4. FullText ( created on text based column like varchar,text - to speed up query)<br />5. Spatial ( used in Geo Object shape- related functions&nbsp;<strong class=\"userinput\"><code>MBRContains,&nbsp;</code></strong><strong class=\"userinput\"><code>MBRWithin</code></strong>)</p>', '0000-00-00 00:00:00', '2016-08-25 15:35:43'),
(8, 69, 1, 0, 'What-is-Maria-DB\r\n', 0, 'What is Maria DB\r\n', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 61, 1, 0, 'What-is-API\r\n', 0, 'What is an API\r\n', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 61, 1, 0, 'Web-Service-Soup-Rest', 0, 'Web Service (Soup Rest)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 70, 1, 0, 'mongo-db', 0, 'Mongo DB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 56, 1, 9, 'laravel-error-maximum-function-nesting-level-of-100-reached-aborting', 1, 'Laravel Error: Maximum function nesting level of \'100\' reached, aborting', '<p>Open bootstrap/autoload.php write a line of code.<br /> ini_set(\'xdebug.max_nesting_level\', 400);</p>', '0000-00-00 00:00:00', '2016-08-25 16:31:19'),
(64, 56, 1, 8, 'how-to-see-the-version-of-laravel', 1, 'How to see the version of laravel', '<p>1. php artisan ? -v <br />2. vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php<br /> see const VERSION = \'version no\';</p>', '0000-00-00 00:00:00', '2016-08-25 16:32:03'),
(66, 57, 1, 0, 'mysql-optimization', 1, 'MySQL Optimization', '<ol>\r\n<li><strong>Indexing<br /><br /></strong></li>\r\n<li><strong>Avoidance of Sub Query.</strong><br />&gt;&gt; Splitting&nbsp;queries may cause problem in MYISAM as<strong> transaction</strong> not available. If It is INNODB then you will get transaction support as well as row level locking.<br /><br /></li>\r\n<li><strong>Understanding Engine</strong>: My sql has two primary storage. MYISAM, INNODB.<br />MY ISAM is good for read heavy data where InnoDB is good for write heavy data. MyISAM has internal cache that stores how many rows in tables. So count(*) query is faster in MYISAM, innoDB has such no cache, so it is expensive. InnoDB supports<br />transaction but MyISAM does not. So, depending on the application you should choose the storage &nbsp;Engine.<br /><br /></li>\r\n<li><strong>Replication &amp; Sharding</strong><br />Replications-&gt; Distributing DB in more than one location. &nbsp;same data appears in all server.<br /><span style=\"line-height: 1.5;\">Sharding-&gt;&nbsp;Distributing DB in more than one location, different server contains different data.</span></li>\r\n</ol>', '2016-08-21 17:18:03', '2016-08-25 16:44:20'),
(74, 57, 1, 0, 'concat-and-concat-ws-in-mysql', 1, 'CONCAT and  CONCAT_WS  in MYSQL', '<p>SELECT CONCAT(\'-\', \'Masud\', \'Zaman\') //output: &nbsp; -MasudZaman</p>\r\n<p>SELECT CONCAT_WS(\'-\', \'Masud\', \'Zaman\') //output: Masud-Zaman</p>', '2016-08-21 18:32:43', '2016-08-25 16:44:40'),
(75, 57, 1, 0, 'mysql-least-and-greatest', 1, 'MYSQL LEAST and GREATEST', '<p>SELECT&nbsp;LEAST(2,3,5,6) //output 2<br /> SELECT GREATEST&nbsp;(2,3,5,6) //output 6</p>', '2016-08-21 18:34:05', '2016-08-21 18:34:05'),
(76, 56, 1, 7, 'how-to-fix-pdo-exception-in-connectorphp-line-55-in-laravel', 1, 'How to fix PDO Exception in Connector.php line 55 in laravel', '<ol>\r\n<li>Check &nbsp;.env file properly.</li>\r\n<li>Clear cache.</li>\r\n<li>Run migrate</li>\r\n</ol>', '2016-08-21 18:35:13', '2016-08-21 18:35:13'),
(77, 58, 1, 0, 'php7-new-features', 1, 'PHP7 new  features', '<ol>\r\n<li><strong>Faster :</strong> &nbsp;about two times faster than php 5.6<br /><br /></li>\r\n<li>.<strong> Type declaration, Scaler Type hints</strong><br /> <!--?php class B<br ?--> {<br /> public function test(int $i)<br /> {<br /> echo \'Method of child Class is Called\';<br /> }<br /> }<br /> $objB = new B;<br /> $objB-&gt;test(4);<br /> /* Prior to PHP7 version:&nbsp;<strong>Catchable fatal error</strong>: Argument 1 passed to B::test() must be an instance of int, integer given,<br /> you could pass only object and array prior version of php 7. but ithis code works in php 7. */?&gt;<br /><br /></li>\r\n<li><strong>Return type declaration</strong>\r\n<pre>function getResult(int $para1, int $para2 ) : <strong>int</strong> { }\r\n\r\n</pre>\r\n</li>\r\n<li><strong>Error Handling</strong><br /> you can throw an error rather than exception<br /><br /></li>\r\n<li>&nbsp;<strong>Spaceship Operator</strong> : &nbsp;<strong>&lt;=&gt;<br /> </strong>echo&nbsp;1&nbsp;&lt;=&gt;&nbsp;1;&nbsp;//&nbsp;0<br /> echo&nbsp;1&nbsp;&lt;=&gt;&nbsp;2;&nbsp;//&nbsp;-1<br /> echo&nbsp;2&nbsp;&lt;=&gt;&nbsp;1;&nbsp;//&nbsp;1<br /> <strong><br /> </strong>6. <strong>Coalesec Operator</strong>:<br /> <!--?php <br ?--> //if it exists and is not NULL then it prints its\' value.//case-1:<br /> echo $status = $val ?? 2; // $val is not set, output second operand: 2//case-2:<br /> $val = 0;<br /> echo $status = $val ?? 3; //$val is set, output first operand: 0\r\n<p>//case-3:<br /> $val = null;<br /> echo $status = $val ?? 4; //$val is null, output 4</p>\r\n<p>//case-4:<br /> $val = \'\';<br /> echo $status = $val ?? 5; //$val is set, output</p>\r\n<p>// case-5 (terenary operator: no changes done here,&nbsp; for thinking)<br /> $val = 0;<br /> echo $status = $val ? $val : 3; //$val is not true, output second operand: 3</p>\r\n<p>// Think case-2 &amp; case 5.<br /> ?&gt;</p>\r\n<p>7. &nbsp; <strong>&nbsp;Define Constant Array</strong><br /> <!--?php <br ?--> define(\'DISTRICTS\',&nbsp;[<br /> \'Dhaka\',<br /> \'Rajshahi\',<br /> \'Tangail\'<br /> ]);</p>\r\n<p>8. <strong>Clouser ::call()</strong></p>\r\n</li>\r\n</ol>', '2016-08-21 18:35:54', '2016-08-21 19:03:14'),
(78, 71, 1, 0, 'overloading-in-php', 1, 'Overloading in php', '<p><!--?php <br ?--><!--?php </p>\r\n<p>Class A<br ?--><!--?php <br ?-->class A {<br />&nbsp; &nbsp; &nbsp; public function test(int $para)<br />&nbsp; &nbsp; &nbsp; {<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;echo \'function first time\';<br />&nbsp; &nbsp; &nbsp; }<br /><strong>&nbsp; &nbsp; &nbsp;// Declare the test method again with different arguments.&nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n<p>&nbsp; &nbsp; public function test(int $par1, int $para2)<br />&nbsp; &nbsp; &nbsp;{<br />&nbsp; &nbsp; &nbsp; &nbsp; echo \'function second time\';<br />&nbsp; &nbsp; &nbsp;}<br /> }</p>\r\n<p>?&gt;<br /><strong>&nbsp;//Fatal error: Cannot redeclare A::test()&nbsp;</strong><strong><br />Declaring &nbsp;methods&nbsp; with same name &amp; different argument is mainly callled method overloading.</strong> <strong>This code is ok for standard OOP concept. In Java, C it works but in PHP it does not work.</strong> &nbsp;<strong>In this sense PHP does not&nbsp;</strong><strong>support method overloading.<br /></strong>&nbsp;</p>\r\n<p>SO, the question is <strong>How PHP supports overloading.</strong><br /> Actually php overloading works by <strong>magic method.</strong>&nbsp; See the example,</p>\r\n<p><!--?php </p>\r\n<p>Class A<br ?--><!--?php <br ?-->class A {<br />&nbsp; &nbsp; &nbsp;public function __call($name, $arguments)<br />&nbsp; &nbsp; { <br /> <br />&nbsp; &nbsp; &nbsp;echo \'called from: \' . $name ; <br />&nbsp; &nbsp; &nbsp;echo \'Arguments is an array. Elements are: \';<br />&nbsp; &nbsp; &nbsp;print_r($arguments); <br />&nbsp; &nbsp; }<br />}</p>\r\n<p>$obj = new A;<br />$obj-&gt;myAutoMethod(5);&nbsp;<br />$obj-&gt;myAutoSameMethod(5, 6, 7, \'abc\');&nbsp;<br />?&gt;</p>\r\n<p><code>__call() &nbsp;method is called in&nbsp;both cases. In this way it is overloaded and this is called overloading in PHP.</code><br /><br /></p>\r\n<p><strong>Output:</strong></p>\r\n<p>Called from: <strong>myAutoMethod</strong><br />Arguments is an array. Elements are: Array ( [0] =&gt; 5 ) <br /><br /><br />Called from: <strong>myAutoSameMethod</strong><br />Arguments is an array. Elements are: Array ( [0] =&gt; 5 [1] =&gt; 6 [2] =&gt; 7 [3] =&gt; abc ) <br /><br /></p>\r\n<p><strong>__call() is invoked when called function is not available, it does not matter how many parameters does the calling function has.</strong></p>', '2016-08-21 18:36:56', '2016-08-25 16:42:55'),
(79, 71, 1, 0, 'overriding-in-php', 1, 'Overriding in php', '<p><strong>Normal Scenario:</strong></p>\r\n<p>Class A<br /> {<br />&nbsp; &nbsp; &nbsp;public function m1()<br />&nbsp; &nbsp; &nbsp;{<br />&nbsp; &nbsp; &nbsp; &nbsp; echo \'Method of Base Class is Called\';<br />&nbsp; &nbsp; &nbsp;}<br /> }</p>\r\n<p>class B extends A<br /> {</p>\r\n<p>}</p>\r\n<p>$objB = new B;<br /> <strong>$objB-&gt;m1(); // Output; Method of Base Class is Called</strong><br /> ?&gt;<br /> ----------------------------------------------------------------------------------------------------------------------------------------------------------<br /> <strong>Overriding&nbsp;Scenario:</strong></p>\r\n<p>But When you write again the method m1() in &nbsp;class B, it means you over write this method. because it was already there sincc<br /> B Extends A.</p>\r\n<p><!--?php <br ?--> class A<br /> {<br />&nbsp; &nbsp; &nbsp;public function m1()<br />&nbsp; &nbsp; {<br />&nbsp; &nbsp; &nbsp; &nbsp;echo \'Method of Base Class is Called\';<br />&nbsp; &nbsp; }<br /> }</p>\r\n<p>Class B extends A<br /> {</p>\r\n<p><strong>&nbsp; &nbsp; &nbsp;// <em>YOU ARE WRITING THE METHOD AGAIN NOW, IT IS OVERRIDING METHOD</em></strong><br /> <strong>&nbsp; &nbsp; public function m1()</strong><br /> <strong>&nbsp; &nbsp; {</strong><br /> <strong>&nbsp; &nbsp; &nbsp; &nbsp; echo \'Method of Child&nbsp;Class is Called\';</strong><br /> <strong>&nbsp; &nbsp; &nbsp;}</strong></p>\r\n<p>}</p>\r\n<p>$objB = new B;<br /> $objB-&gt;m1(); // Output; Method of <strong>Child Class</strong> is Called<br /> ?&gt;&nbsp;</p>\r\n<p><strong>The method m1 in Class B is overriding method and the m1 in Class A is overridden method.</strong></p>', '2016-08-21 18:37:23', '2016-08-21 19:04:47'),
(80, 56, 1, 6, 'how-to-create-helper-in-laravel', 1, 'How to create Helper in Laravel', '<p>in composer.json<br /> \"autoload\": {<br /> \"classmap\": [<br /> \"database\"<br /> ],<br /> \"psr-4\": {<br /> \"App\\\\\": \"app/\"<br /> },<br /> \"files\": [<br /> \"app/Helpers/myhelper.php\" &nbsp;// add this line.<br /> ]<br /> },</p>\r\n<p>&nbsp;</p>\r\n<p><strong>run:&nbsp;&nbsp;</strong>&nbsp;<code><span class=\"pln\">composer </span><span class=\"kwd\">dump</span><span class=\"pun\">-</span><span class=\"pln\">autoload</span></code></p>', '2016-08-21 18:38:14', '2016-08-21 18:38:14'),
(81, 56, 1, 3, 'removing-indexphp-from-laravel-url', 1, 'Removing index.php from  Laravel URL', '<p>Create a .htaccess file in root folder which contains the following codes.</p>\r\n<p><br /> RewriteEngine On<br /> RewriteRule ^ index.php [L]<br /><br /><strong>or&nbsp;</strong><br /><strong>there is a .htaccess file inside the public folder. copy it and paste it in project root, Simple!</strong></p>\r\n<p>Check whether&nbsp;mod_rewrite is enabled or not. if it is not enabled then enable it.</p>\r\n<p>&nbsp;</p>', '2016-08-21 18:38:49', '2016-08-27 07:56:18'),
(83, 56, 1, 2, 'how-to-remove-public-from-laravel-url', 1, 'How to remove public from Laravel Url', '<p>inside the project folder you will see a file named <strong>server.php</strong><br /> rename it to<strong> index.php</strong> &nbsp; and browse&nbsp;http://localhost/project_folder_name</p>', '2016-08-21 18:39:51', '2016-08-21 18:39:51'),
(84, 72, 1, 0, 'how-to-ignore-filesfolder-in-git', 1, 'How to ignore files/folder in git', '<ol>\r\n<li>Create .gitignore file<br /> Enter <strong>touch.gitignore</strong> to create this file.<br /> 2. Open .gitignore file&nbsp;and give the location of the folder/file that you want to skip.<br /> suppose i want to skip&nbsp;the metronic folder inside public directory.<br /> So write, &nbsp; &nbsp; &nbsp; &nbsp;<strong>/public/metronic</strong></li>\r\n</ol>', '2016-08-21 18:40:44', '2016-08-21 18:40:44'),
(85, 72, 1, 0, 'fatal-error-repository-not-found-git', 1, 'fatal error repository not found git', '<p><em>1. Check whether the repository &nbsp; really exist or not.<br /> 2.Repository names are case-sensitive. So check is there any lowercase/uppercase issue took place in typing the repository address.<br /> 3.&nbsp;Run Git bash as Administrator.</em></p>\r\n<p>&nbsp;</p>', '2016-08-21 18:41:25', '2016-08-21 18:41:25'),
(86, 72, 1, 0, 'how-to-clone-git-to-specific-folder-in-windows', 1, 'How to clone git to specific folder in windows', '<p>git clone {your repository}&nbsp; destination_path<br />Example:<br />git clone https://github.com/masuduzzaman/sample_project.git&nbsp; D:/xampp/htdocs/sample_project</p>', '2016-08-21 18:42:45', '2016-08-21 18:42:45'),
(87, 72, 1, 0, 'git-fork', 0, 'Git Fork', '', '2016-08-21 18:43:03', '2016-08-21 18:43:03'),
(88, 57, 1, 0, 'mysql-scaling', 1, 'MySQL Scaling', '<p><strong>1.Replication: &nbsp;</strong><br />Data is replicated from master server to another server(slave). So. same data are stored in all servers. For data reading it is faster. but it may cause problems<br />if application has more write operations. Inconsistency may arise between database nodes due to the &nbsp;synchronization between salves involves some dalay.<br /><br /><strong>2. Sharding</strong><br />&nbsp; Splittting db schema into multiple partitions. &nbsp;splitting can be happened in&nbsp;tables / row level. &nbsp;Splitting should be done very sincerely.<br />&nbsp; Explaination:<br /> Suppose you have multisites solutions that handles 1000 databases, you can split it in different ways<br />1. you can keep 100 db in one db server, another 50 in another server and so on.<br />2. you can keep some tables in one server and some tables in another server. because in most cases some tables are hitted very much, so you can divide accordingly.<br />3. Sometimes data could be splitted based on Geographic locations. if you work with 64 &nbsp;districts of Bangladesh you can keep the districts of North in one DB server and&nbsp;districts of South&nbsp;in another DB server and so on. or you can info about the important persons can be kept in different server, actually you split your data according to your need.<br /><br /><strong>3.MySQL cluster:</strong> <br />&nbsp;it is one kind of combination of Replication and sharding.<br /><br /><br /></p>\r\n<p>&nbsp;</p>', '2016-08-26 16:42:09', '2016-08-26 17:39:39'),
(89, 57, 1, 0, 'mysql-if-else-case-when', 1, 'MySQl IF ELSE CASE WHEN', '<p>1. IF a Column named status contains two values: 0,1 where o means InActive, 1 means Active. then query should be<br />&nbsp;<strong> &nbsp; SELECT if(status = 0, \'InActive\', \'Active\' ) FROM table</strong><br />&nbsp; &nbsp;&nbsp;<br /><br />2. IF a Column named status contains three values: 0,1,2 where 0 means InActive, 1 means InProcess, 2 Means \'PartiallyCompleted\' then query should be&nbsp;<br /><strong>SELECT </strong><br /><strong>IF (status = 0, \'Inactive\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;IF (status =1, \'In Prcoess\', \'PartiallyCompleted\' )</strong><br /><strong>&nbsp; &nbsp; )</strong><br /><strong>FROM table</strong><br /><br />3. IF a Column named status contains four&nbsp;values: 0,1,2,3 &nbsp;where 0 means InActive, 1 means InProcess, 2 Means \'PartiallyCompleted\', 3 means \'Completed\' then query should be<br /><strong>SELECT </strong><br /><strong>IF (status = 0, \'Inactive\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;IF (status =1, \'In Prcoess\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IF (status =2, \'PartiallyCompleted\', \'Completed\' )</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; )</strong></p>\r\n<p><strong>&nbsp; &nbsp; )</strong><br /><strong>FROM table</strong><br /><br /></p>\r\n<p>***If status&nbsp;contains 7 values then the query becomes complicated but still you can solve it in this way. Yo can do the same thing by using CASE WHEN<br /><br /><code>SELECT</code><br /><code>CASE status</code><br /><code>WHEN 0 THEN \'INACTIVE\'</code><br /><code>WHEN 1 THEN \'InProcess\'</code><br /><code>WHEN 2 THEN \'PartiallyCompleted\'</code><br /><code>WHEN 3 THEN \'Completed\'</code><br /><code>WHEN 4 THEN \'OVERCOMPLETED\'</code><br /><code>WHEN 5 THEN \'STATUS-5-stage\'</code><br /><code>WHEN 6 THEN \'ETO STATUS KARE!\'</code><br /><code>ELSE \'UNKONOWN - NOT DEFINED\'</code><br /><code>END AS status </code><br /><code>FROM&nbsp;table</code><br /><br /><br /><br /><br />&nbsp;</p>', '2016-08-27 01:41:24', '2016-08-27 07:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_row_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_short_description` text COLLATE utf8_unicode_ci,
  `category_long_description` longtext COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `has_child` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `count_product` int(11) DEFAULT NULL,
  `category_sort_order` int(11) DEFAULT NULL,
  `meta_key` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_row_id`, `category_name`, `category_slug`, `category_image`, `category_short_description`, `category_long_description`, `parent_id`, `has_child`, `is_featured`, `level`, `count_product`, `category_sort_order`, `meta_key`, `meta_description`, `created_at`, `updated_at`) VALUES
(61, 'Salwar Suit', 'salwar-suit', NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '2016-10-24 08:10:25', '2017-01-13 06:58:02'),
(62, 'Sharee', 'sharee', NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '2016-10-24 08:10:59', '2017-01-13 06:58:10'),
(63, 'Lehenga', 'lehenga', NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '2017-01-13 06:57:07', '2017-01-13 06:57:07'),
(64, 'Kurti', 'kurti', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2017-01-13 06:57:29', '2017-01-13 06:57:29'),
(65, 'Others', 'others', NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '2017-01-13 06:59:20', '2017-01-13 06:59:20');

-- --------------------------------------------------------

--
-- Stand-in structure for view `getallproductratings`
-- (See below for the actual view)
--
CREATE TABLE `getallproductratings` (
`product_id` bigint(20)
,`rating` decimal(7,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `memory_tbl`
--

CREATE TABLE `memory_tbl` (
  `sd` int(11) NOT NULL,
  `asd` int(11) NOT NULL,
  `dsads` int(11) NOT NULL,
  `asdsad` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_row_id` int(11) NOT NULL,
  `link_dynamic` tinyint(1) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_content` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` tinyint(1) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `menu_sort_order` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_row_id`, `link_dynamic`, `menu_name`, `menu_link`, `menu_content`, `parent_id`, `has_child`, `level`, `is_active`, `menu_sort_order`, `created_at`, `updated_at`) VALUES
(1, 0, 'Home', '', '<p>hom</p>', 0, 0, 0, 0, 0, '2016-06-01 16:39:38', '2016-06-01 16:39:38'),
(2, 0, 'About Us', '', '<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.</p>\r\n<p>It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.</p>\r\n<p><strong>It is About us page.</strong> You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.</p>\r\n<p>It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is AboIt is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.ut us page. You can update the content from Admin panel. &nbsp; &nbsp; &nbsp; &nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;</p>', 0, 0, 0, 1, 0, '2016-06-01 16:39:48', '2016-06-15 13:50:25'),
(3, 0, 'Contact Us', '', '<p>Email: enggmasud1983 @ gmail.com</p>\r\n<p>Skype: enggmasud1983</p>', 0, 0, 0, 1, 0, '2016-06-01 16:40:00', '2016-06-15 13:55:06'),
(4, 1, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 0, 0, 0, 1, 4, '0000-00-00 00:00:00', '2016-08-18 22:07:19'),
(9, 1, 'MY new Page', 'my-new-page', '<p>my new page &nbsp;</p>', 0, 0, 0, 1, 0, '2016-08-18 21:53:24', '2016-08-18 21:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_09_233722_create_admins_table', 2),
('2016_05_10_001807_create_products_table', 3),
('2016_05_10_001820_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_row_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `order_details` text,
  `payment_details` text,
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Pending,1=Delivered,2=Cancel',
  `shiping_address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_row_id`, `user_id`, `total_price`, `order_details`, `payment_details`, `order_status`, `shiping_address`, `created_at`, `updated_at`) VALUES
(41, 17, '3600', '[{\"product_row_id\":79,\"product_price\":3600,\"product_qty\":1,\"product_total_price\":3600,\"product_name\":\"Zeenat D.No.1002\",\"product_image\":\"1490259834.jpg\"}]', '{\"payment_method\":\"bKash\",\"txr_id\":\"ADFGREW\",\"payment_id\":\"1\"}', 0, '{\"name\":\"Md.Abdus Salam\",\"email\":\"salamcseiu21@gmail.com\",\"mobile\":\"01520102680\",\"address\":\"   36\\/5,South Road,Dimla,Nilphamari  \"}', '2017-11-30 15:57:16', '2017-11-30 15:57:16'),
(42, 17, '9800', '[{\"product_row_id\":79,\"product_price\":3600,\"product_qty\":1,\"product_total_price\":3600,\"product_name\":\"Zeenat D.No.1002\",\"product_image\":\"1490259834.jpg\"},{\"product_row_id\":90,\"product_price\":2600,\"product_qty\":1,\"product_total_price\":2600,\"product_name\":\"LT-Nitya suit D.No.913\",\"product_image\":\"1490263512.jpg\"},{\"product_row_id\":78,\"product_price\":3600,\"product_qty\":1,\"product_total_price\":3600,\"product_name\":\"Zeenat D.No.1004\",\"product_image\":\"1490259666.jpg\"}]', '{\"payment_method\":\"Cash on Delivery\",\"payment_id\":\"3\"}', 0, '{\"name\":\"Md.Abdus Salam\",\"email\":\"salamcseiu21@gmail.com\",\"mobile\":\"01520102680\",\"address\":\"   36\\/5,South Road,Dimla,Nilphamari  \"}', '2017-11-30 16:03:46', '2017-11-30 16:03:46'),
(43, 17, '7800', '[{\"product_row_id\":90,\"product_price\":2600,\"product_qty\":1,\"product_total_price\":2600,\"product_name\":\"LT-Nitya suit D.No.913\",\"product_image\":\"1490263512.jpg\"},{\"product_row_id\":89,\"product_price\":2600,\"product_qty\":2,\"product_total_price\":5200,\"product_name\":\"LT-Nitya suit D.No.912\",\"product_image\":\"1490263147.jpeg\"}]', '{\"payment_method\":\"Cash on Delivery\",\"payment_id\":\"3\"}', 0, '{\"name\":\"Md.Abdus Salam\",\"email\":\"salamcseiu21@gmail.com\",\"mobile\":\"01520102680\",\"address\":\"   36\\/5,South Road,Dimla,Nilphamari  \"}', '2017-12-01 09:06:37', '2017-12-01 09:06:37'),
(44, 17, '21600', '[{\"product_row_id\":130,\"product_price\":7200,\"product_qty\":3,\"product_total_price\":21600,\"product_name\":\"LT-99009\",\"product_image\":\"1489836966.jpg\"}]', '{\"payment_method\":\"Cash on Delivery\",\"payment_id\":\"3\"}', 0, '{\"name\":\"Md.Abdus Salam\",\"email\":\"salamcseiu21@gmail.com\",\"mobile\":\"01520102680\",\"address\":\"   36\\/5,South Road,Dimla,Nilphamari  \"}', '2017-12-07 16:35:27', '2017-12-07 16:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_row_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` float(8,2) DEFAULT NULL,
  `product_height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_width` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_weight` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_row_id` int(11) NOT NULL,
  `product_sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_latest` tinyint(1) NOT NULL DEFAULT '0',
  `product_short_description` text COLLATE utf8_unicode_ci,
  `product_long_description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_row_id`, `product_name`, `product_price`, `product_height`, `product_width`, `product_weight`, `category_row_id`, `product_sku`, `product_image`, `is_featured`, `is_latest`, `product_short_description`, `product_long_description`, `created_at`, `updated_at`) VALUES
(42, 'Violate D.no.4906', 9000.00, NULL, NULL, NULL, 61, '1', '1489748537.jpg', 1, 1, NULL, 'Design-Floor Touch\r\nFabric- Super Net.', '2017-03-01 20:53:08', '2017-03-17 05:02:17'),
(43, 'Violate D.no.4905', 9000.00, NULL, NULL, NULL, 61, '1', '1489749663.jpg', 1, 1, NULL, 'Design- Floor Touch\r\nFabric- Lower part silk\r\n                Tops tashor\r\n                 Orna Shifon.', '2017-03-01 20:53:32', '2017-03-17 05:21:03'),
(44, 'Violate D.no.4904', 9000.00, NULL, NULL, NULL, 61, '1', '1489750316.jpg', 1, 1, NULL, 'Design- Sarara\r\nFabric- Upper & lower part silk\r\n                Orna Shifon.\r\n', '2017-03-01 20:53:56', '2017-03-17 05:31:56'),
(68, 'Violate D.no.4908', 9000.00, NULL, NULL, NULL, 61, '1', '1489746173.jpg', 1, 1, NULL, 'Design-Floor Touch\r\nFabric-Super Net.\r\n', '2017-03-17 02:11:55', '2017-03-17 04:22:53'),
(69, 'LT-99002', 7200.00, NULL, NULL, NULL, 61, '1', '1489835098.jpg', 1, 1, NULL, ' Design- Floor Touch,\r\nFabric- Shifon Georgette,\r\nOrna- Shifon', '2017-03-18 05:04:58', '2017-03-18 05:04:58'),
(70, 'LT-99003', 7200.00, NULL, NULL, NULL, 61, '1', '1489836172.jpg', 1, 1, NULL, 'Design- Floor Touch,\r\nFabric- Georgette,\r\nOrna- Shifon.', '2017-03-18 05:22:52', '2017-03-18 05:22:52'),
(71, 'LT-99004', 7200.00, NULL, NULL, NULL, 61, '1', '1489836254.jpg', 1, 1, NULL, 'Design- Floor Touch, \r\nFabric- Silk, \r\nOrna- Shifon.', '2017-03-18 05:24:14', '2017-03-18 05:24:14'),
(72, 'LT-99005', 7200.00, NULL, NULL, NULL, 61, '1', '1489836367.jpg', 1, 1, NULL, 'Design- Floor Touch,\r\nFabric- Georgette,\r\nOrna- Shifon.', '2017-03-18 05:26:07', '2017-03-18 05:26:07'),
(73, 'LT-99006', 7200.00, NULL, NULL, NULL, 61, '1', '1489836440.jpg', 1, 1, NULL, 'Design- Floor Touch,\r\nFabric- Shifon Georgette,\r\nOrna- Shifon.', '2017-03-18 05:27:20', '2017-03-18 05:27:20'),
(74, 'LT-99007', 7200.00, NULL, NULL, NULL, 61, '1', '1489836694.jpg', 1, 1, NULL, 'Design- Floor Touch,\r\nFabric- Shifon,\r\nOrna- Shifon.', '2017-03-18 05:31:34', '2017-03-18 05:31:34'),
(75, 'LT-99008', 7200.00, NULL, NULL, NULL, 61, '1', '1489836887.jpg', 1, 1, NULL, 'Design- Floor Touch,\r\nFabric- Shifon,\r\nOrna- Super Net.', '2017-03-18 05:34:47', '2017-03-18 05:34:47'),
(76, 'LT-99009', 7200.00, NULL, NULL, NULL, 61, '1', '1489836966.jpg', 1, 1, NULL, 'Design- Floor Touch,\r\nFabric- Shifon,\r\nOrna- Super Net.', '2017-03-18 05:36:06', '2017-03-18 05:36:06'),
(77, 'LT-Nitya suit D.No.909', 2600.00, NULL, NULL, NULL, 64, '1', '1490261806.jpg', 1, 1, NULL, 'Only Tops\r\nFabric- Georgette.', '2017-03-20 08:06:26', '2017-03-23 03:36:46'),
(78, 'Zeenat D.No.1004', 3600.00, NULL, NULL, NULL, 61, '1', '1490259666.jpg', 0, 1, NULL, ' Kamiz-Georgette\r\nSawar-Silk\r\nOrna-Sifhon', '2017-03-23 03:01:06', '2017-03-23 03:01:06'),
(79, 'Zeenat D.No.1002', 3600.00, NULL, NULL, NULL, 61, '1', '1490259834.jpg', 0, 1, NULL, 'Kamiz-Georgette\r\nSawar-Silk\r\nOrna-Sifhon', '2017-03-23 03:03:54', '2017-03-23 03:03:54'),
(80, 'Zeenat D.No.1005', 3600.00, NULL, NULL, NULL, 61, '1', '1490259905.jpg', 0, 0, NULL, 'Kamiz-Georgette\r\nSawar-Silk\r\nOrna-Sifhon', '2017-03-23 03:05:05', '2017-03-23 03:13:21'),
(81, 'Zeenat D.No.1003', 3600.00, NULL, NULL, NULL, 61, '1', '1490260000.jpg', 0, 1, NULL, 'Kamiz-Georgette\r\nSawar-Silk\r\nOrna-Sifhon', '2017-03-23 03:06:40', '2017-03-23 03:06:40'),
(82, 'Zeenat D.No.1001', 3600.00, NULL, NULL, NULL, 61, '1', '1490260313.jpg', 0, 1, NULL, 'Kamiz-Georgette,\r\nSawar-Silk,\r\nOrna-Sifhon.', '2017-03-23 03:11:53', '2017-03-23 03:11:53'),
(83, 'LT-Nitya suit D.No.901', 2600.00, NULL, NULL, NULL, 64, '1', '1490262532.jpeg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 03:48:52', '2017-03-23 03:50:26'),
(84, 'LT-Nitya suit D.No.904', 2600.00, NULL, NULL, NULL, 64, '1', '1490262604.jpeg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 03:50:04', '2017-03-23 03:50:04'),
(85, 'LT-Nitya suit D.No.905', 2600.00, NULL, NULL, NULL, 64, '1', '1490262753.jpg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 03:52:33', '2017-03-23 03:52:33'),
(86, 'LT-Nitya suit D.No.906', 2600.00, NULL, NULL, NULL, 64, '1', '1490262819.jpeg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 03:53:39', '2017-03-23 03:53:39'),
(87, 'LT-Nitya suit D.No.907', 2600.00, NULL, NULL, NULL, 64, '1', '1490263005.jpg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 03:56:45', '2017-03-23 03:56:45'),
(88, 'LT-Nitya suit D.No.908', 2600.00, NULL, NULL, NULL, 64, '1', '1490263062.jpeg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 03:57:42', '2017-03-23 03:57:42'),
(89, 'LT-Nitya suit D.No.912', 2600.00, NULL, NULL, NULL, 64, '1', '1490263147.jpeg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 03:59:07', '2017-03-23 03:59:07'),
(90, 'LT-Nitya suit D.No.913', 2600.00, NULL, NULL, NULL, 64, '1', '1490263512.jpg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 04:05:12', '2017-03-23 04:05:12'),
(91, 'LT-Nitya suit D.No.914', 2600.00, NULL, NULL, NULL, 64, '1', '1490263575.jpeg', 1, 0, NULL, 'Only Tops,\r\nFabric- Georgette.', '2017-03-23 04:06:15', '2017-03-23 04:06:15'),
(119, 'Violate D.no.4906', 9000.00, NULL, NULL, NULL, 61, '1', '1489748537.jpg', 1, 1, NULL, 'Design-Floor Touch\nFabric- Super Net.', NULL, NULL),
(120, 'Violate D.no.4905', 9000.00, NULL, NULL, NULL, 61, '1', '1489749663.jpg', 1, 1, NULL, 'Design- Floor Touch\nFabric- Lower part silk\n                Tops tashor\n                 Orna Shifon.', NULL, NULL),
(121, 'Violate D.no.4904', 9000.00, NULL, NULL, NULL, 61, '1', '1489750316.jpg', 1, 1, NULL, 'Design- Sarara\nFabric- Upper & lower part silk\n                Orna Shifon.\n', NULL, NULL),
(122, 'Violate D.no.4908', 9000.00, NULL, NULL, NULL, 61, '1', '1489746173.jpg', 1, 1, NULL, 'Design-Floor Touch\nFabric-Super Net.\n', NULL, NULL),
(123, 'LT-99002', 7200.00, NULL, NULL, NULL, 61, '1', '1489835098.jpg', 1, 1, NULL, ' Design- Floor Touch,\nFabric- Shifon Georgette,\nOrna- Shifon', NULL, NULL),
(124, 'LT-99003', 7200.00, NULL, NULL, NULL, 61, '1', '1489836172.jpg', 1, 1, NULL, 'Design- Floor Touch,\nFabric- Georgette,\nOrna- Shifon.', NULL, NULL),
(125, 'LT-99004', 7200.00, NULL, NULL, NULL, 61, '1', '1489836254.jpg', 1, 1, NULL, 'Design- Floor Touch, \nFabric- Silk, \nOrna- Shifon.', NULL, NULL),
(126, 'LT-99005', 7200.00, NULL, NULL, NULL, 61, '1', '1489836367.jpg', 1, 1, NULL, 'Design- Floor Touch,\nFabric- Georgette,\nOrna- Shifon.', NULL, NULL),
(127, 'LT-99006', 7200.00, NULL, NULL, NULL, 61, '1', '1489836440.jpg', 1, 1, NULL, 'Design- Floor Touch,\nFabric- Shifon Georgette,\nOrna- Shifon.', NULL, NULL),
(128, 'LT-99007', 7200.00, NULL, NULL, NULL, 61, '1', '1489836694.jpg', 1, 1, NULL, 'Design- Floor Touch,\nFabric- Shifon,\nOrna- Shifon.', NULL, NULL),
(129, 'LT-99008', 7200.00, NULL, NULL, NULL, 61, '1', '1489836887.jpg', 1, 1, NULL, 'Design- Floor Touch,\nFabric- Shifon,\nOrna- Super Net.', NULL, NULL),
(130, 'LT-99009', 7200.00, NULL, NULL, NULL, 61, '1', '1489836966.jpg', 1, 1, NULL, 'Design- Floor Touch,\nFabric- Shifon,\nOrna- Super Net.', NULL, NULL),
(131, 'LT-Nitya suit D.No.909', 2600.00, NULL, NULL, NULL, 64, '1', '1490261806.jpg', 1, 1, NULL, 'Only Tops\nFabric- Georgette.', NULL, NULL),
(132, 'Zeenat D.No.1004', 3600.00, NULL, NULL, NULL, 61, '1', '1490259666.jpg', 0, 1, NULL, ' Kamiz-Georgette\nSawar-Silk\nOrna-Sifhon', NULL, NULL),
(133, 'Zeenat D.No.1002', 3600.00, NULL, NULL, NULL, 61, '1', '1490259834.jpg', 0, 1, NULL, 'Kamiz-Georgette\nSawar-Silk\nOrna-Sifhon', NULL, NULL),
(134, 'Zeenat D.No.1005', 3600.00, NULL, NULL, NULL, 61, '1', '1490259905.jpg', 0, 0, NULL, 'Kamiz-Georgette\nSawar-Silk\nOrna-Sifhon', NULL, NULL),
(135, 'Zeenat D.No.1003', 3600.00, NULL, NULL, NULL, 61, '1', '1490260000.jpg', 0, 1, NULL, 'Kamiz-Georgette\nSawar-Silk\nOrna-Sifhon', NULL, NULL),
(136, 'Zeenat D.No.1001', 3600.00, NULL, NULL, NULL, 61, '1', '1490260313.jpg', 0, 1, NULL, 'Kamiz-Georgette,\nSawar-Silk,\nOrna-Sifhon.', NULL, NULL),
(137, 'LT-Nitya suit D.No.901', 2600.00, NULL, NULL, NULL, 64, '1', '1490262532.jpeg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(138, 'LT-Nitya suit D.No.904', 2600.00, NULL, NULL, NULL, 64, '1', '1490262604.jpeg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(139, 'LT-Nitya suit D.No.905', 2600.00, NULL, NULL, NULL, 64, '1', '1490262753.jpg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(140, 'LT-Nitya suit D.No.906', 2600.00, NULL, NULL, NULL, 64, '1', '1490262819.jpeg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(141, 'LT-Nitya suit D.No.907', 2600.00, NULL, NULL, NULL, 64, '1', '1490263005.jpg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(142, 'LT-Nitya suit D.No.908', 2600.00, NULL, NULL, NULL, 64, '1', '1490263062.jpeg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(143, 'LT-Nitya suit D.No.912', 2600.00, NULL, NULL, NULL, 64, '1', '1490263147.jpeg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(144, 'LT-Nitya suit D.No.913', 2600.00, NULL, NULL, NULL, 64, '1', '1490263512.jpg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL),
(145, 'LT-Nitya suit D.No.914', 2600.00, NULL, NULL, NULL, 64, '1', '1490263575.jpeg', 1, 0, NULL, 'Only Tops,\nFabric- Georgette.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_image_others`
--

CREATE TABLE `product_image_others` (
  `product_row_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` tinyint(2) NOT NULL,
  `reviews` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `user_id`, `rating`, `reviews`, `created_at`, `updated_at`) VALUES
(1, 133, 17, 2, NULL, '2017-12-07 14:41:01', '2017-12-07 14:41:01'),
(2, 132, 17, 3, NULL, '2017-12-07 14:41:09', '2017-12-07 14:41:09'),
(3, 126, 17, 5, NULL, '2017-12-07 14:41:21', '2017-12-07 14:41:21'),
(4, 123, 17, 4, NULL, '2017-12-07 14:41:35', '2017-12-07 14:41:35'),
(5, 121, 17, 5, NULL, '2017-12-07 14:41:43', '2017-12-07 14:41:43'),
(6, 121, 17, 4, NULL, '2017-12-07 14:41:59', '2017-12-07 14:41:59'),
(7, 121, 17, 3, NULL, '2017-12-07 14:42:00', '2017-12-07 14:42:00'),
(8, 121, 17, 2, NULL, '2017-12-07 14:42:01', '2017-12-07 14:42:01'),
(9, 121, 17, 1, NULL, '2017-12-07 14:42:03', '2017-12-07 14:42:03'),
(10, 121, 17, 1, NULL, '2017-12-07 14:42:04', '2017-12-07 14:42:04'),
(11, 121, 17, 1, NULL, '2017-12-07 14:42:05', '2017-12-07 14:42:05'),
(12, 136, 17, 5, NULL, '2017-12-07 14:52:53', '2017-12-07 14:52:53'),
(13, 144, 17, 5, NULL, '2017-12-07 14:54:02', '2017-12-07 14:54:02'),
(14, 143, 17, 5, NULL, '2017-12-07 14:54:08', '2017-12-07 14:54:08'),
(15, 135, 17, 2, NULL, '2017-12-07 14:54:12', '2017-12-07 14:54:12'),
(16, 145, 17, 2, NULL, '2017-12-07 14:54:18', '2017-12-07 14:54:18'),
(17, 145, 17, 1, NULL, '2017-12-07 14:54:22', '2017-12-07 14:54:22'),
(18, 42, 17, 5, NULL, '2017-12-07 14:59:02', '2017-12-07 14:59:02'),
(19, 43, 17, 4, NULL, '2017-12-07 14:59:08', '2017-12-07 14:59:08'),
(20, 130, 17, 4, NULL, '2017-12-07 14:59:17', '2017-12-07 14:59:17'),
(21, 134, 17, 3, NULL, '2017-12-07 14:59:20', '2017-12-07 14:59:20'),
(22, 122, 17, 5, NULL, '2017-12-07 14:59:24', '2017-12-07 14:59:24'),
(23, 127, 17, 3, NULL, '2017-12-07 14:59:27', '2017-12-07 14:59:27'),
(24, 128, 17, 1, NULL, '2017-12-07 14:59:32', '2017-12-07 14:59:32'),
(25, 128, 17, 5, NULL, '2017-12-07 16:19:33', '2017-12-07 16:19:33'),
(26, 135, 17, 3, NULL, '2017-12-07 22:44:12', '2017-12-07 22:44:12'),
(27, 68, 17, 3, NULL, '2017-12-07 22:48:28', '2017-12-07 22:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_real_time`
--

CREATE TABLE `tbl_gateway_real_time` (
  `real_time_gateway_row_id` int(11) UNSIGNED NOT NULL,
  `merchant_row_id` int(11) UNSIGNED NOT NULL,
  `real_time_gateway` smallint(5) UNSIGNED NOT NULL,
  `gateway_account_no` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `nick_name` varchar(50) DEFAULT NULL,
  `authorize_api_login_key` text NOT NULL,
  `authorize_api_transaction_key` text NOT NULL,
  `authorize_api_signature` text NOT NULL,
  `real_time_currency` varchar(20) NOT NULL,
  `transactions_per_cycle` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `cvv2_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_mobile` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_real_time`
--

INSERT INTO `tbl_gateway_real_time` (`real_time_gateway_row_id`, `merchant_row_id`, `real_time_gateway`, `gateway_account_no`, `nick_name`, `authorize_api_login_key`, `authorize_api_transaction_key`, `authorize_api_signature`, `real_time_currency`, `transactions_per_cycle`, `cvv2_required`, `is_mobile`) VALUES
(53, 2, 43, 1, 'eProcessing Network', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(57, 2, 2, 1, 'Authorize.Net', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(8, 2, 3, 1, 'PayPal Website Payment Pro ', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(55, 2, 45, 1, 'Klick and Pay', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(41, 2, 31, 1, 'PayLeap', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(37, 2, 36, 1, 'First Atlantic Commerce', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(54, 2, 44, 1, 'Stripe', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(46, 2, 1005, 1, 'Beanstream Mobile', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', '0', 0, 0, 1),
(56, 2, 29, 1, 'Quantum Gateway', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(45, 2, 1003, 2, 'PayLeap Mobile', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_setup`
--

CREATE TABLE `tbl_gateway_setup` (
  `merchant_row_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `credit_cards_selected` varchar(100) DEFAULT NULL,
  `payment_process_model` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=Sale, 2= Authorize and Capture',
  `real_time_gateway` tinyint(3) DEFAULT '0',
  `real_time_gateway_mobile` smallint(6) NOT NULL,
  `real_gateway_account_no` tinyint(10) UNSIGNED NOT NULL DEFAULT '1',
  `standard_gateway_paypal` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_alertpay` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_rbsworldpay` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_klickandpay` tinyint(3) DEFAULT '0',
  `enable_realtime_rotator` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_setup`
--

INSERT INTO `tbl_gateway_setup` (`merchant_row_id`, `credit_cards_selected`, `payment_process_model`, `real_time_gateway`, `real_time_gateway_mobile`, `real_gateway_account_no`, `standard_gateway_paypal`, `standard_gateway_alertpay`, `standard_gateway_rbsworldpay`, `standard_gateway_klickandpay`, `enable_realtime_rotator`) VALUES
(2, 'American Express,Master Card,Visa', 1, 2, 0, 1, 1, 10, 12, 45, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_standard`
--

CREATE TABLE `tbl_gateway_standard` (
  `standard_gateway_row_id` int(11) UNSIGNED NOT NULL,
  `merchant_row_id` int(11) UNSIGNED NOT NULL,
  `standard_gateway` tinyint(3) UNSIGNED NOT NULL,
  `authorize_email` varchar(255) DEFAULT NULL,
  `authorize_api_login_key` text,
  `authorize_api_transaction_key` text,
  `authorize_api_signature` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_standard`
--

INSERT INTO `tbl_gateway_standard` (`standard_gateway_row_id`, `merchant_row_id`, `standard_gateway`, `authorize_email`, `authorize_api_login_key`, `authorize_api_transaction_key`, `authorize_api_signature`) VALUES
(16, 2, 1, 'msh134_1265016211_biz@gmail.com', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(11, 2, 10, 'seller_1_enggmasud1983@gmail.com', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(19, 2, 12, '', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(20, 2, 45, '', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==');

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

CREATE TABLE `temp_orders` (
  `temp_order_row_id` int(11) NOT NULL,
  `product_row_id` int(11) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `product_price` float(8,2) NOT NULL,
  `product_qty` int(5) NOT NULL,
  `product_total_price` float(8,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_orders`
--

INSERT INTO `temp_orders` (`temp_order_row_id`, `product_row_id`, `tracking_number`, `product_price`, `product_qty`, `product_total_price`, `created_at`, `updated_at`) VALUES
(1, 14, 'a468e0004d62bbee84978fc856962effb5ab7742', 455.00, 1, 455.00, '2016-08-29 21:36:46', '0000-00-00 00:00:00'),
(2, 5, '570d09d197445dee9370ce22c3e718ac1c80dccd', 900.00, 1, 900.00, '2016-08-29 21:37:44', '0000-00-00 00:00:00'),
(3, 13, '570d09d197445dee9370ce22c3e718ac1c80dccd', 324.00, 1, 324.00, '2016-08-29 21:42:23', '0000-00-00 00:00:00'),
(4, 6, '2ad917397127fa40627c53ea1e0740bece3e0b5e', 1200.00, 1, 1200.00, '2016-08-29 21:45:48', '0000-00-00 00:00:00'),
(5, 13, '2ad917397127fa40627c53ea1e0740bece3e0b5e', 324.00, 1, 324.00, '2016-08-29 22:19:45', '0000-00-00 00:00:00'),
(6, 6, 'f3ed00aa77525ec08456d49ed3a65c3906180d4d', 1200.00, 1, 1200.00, '2016-08-29 22:20:59', '0000-00-00 00:00:00'),
(7, 13, '7458095b31b1b93202c441d039995a5052101832', 324.00, 1, 324.00, '2016-08-29 22:25:20', '0000-00-00 00:00:00'),
(8, 13, '23de4062943a6a748ab11bbf828459d5904b4452', 324.00, 1, 324.00, '2016-08-29 22:28:31', '0000-00-00 00:00:00'),
(9, 5, 'b1767114b0adf3808eb75dbc3af6f1562a19ad15', 900.00, 1, 900.00, '2016-08-29 22:29:07', '0000-00-00 00:00:00'),
(10, 15, 'fef14c1a4af67dfab88a47c3eb480a1996d6938f', 0.00, 1, 0.00, '2016-09-01 18:01:29', '0000-00-00 00:00:00'),
(16, 42, 'CYnS3K1TxpnhD3NzWwLIu5hC1B86u564aMAbnjph', 1800.00, 1, 1800.00, '2017-03-25 08:10:21', NULL),
(17, 57, 'yf7Yyvscqcy0KunLws8nQ4dsmxkJyCN4g5M6XHTM', 324324.00, 1, 324324.00, '2017-04-02 08:18:47', NULL),
(18, 43, 'ALakP7s3gxeBTQLvlMG7MRYB1I7SvcKiafQJdv12', 1200.00, 1, 1200.00, '2017-04-02 14:33:21', NULL),
(19, 55, 'KMRAZZNAXDUdBg90pMwR4epMwyP42ng0TUzRSu60', 232.00, 1, 232.00, '2017-04-03 05:44:55', NULL),
(20, 52, 'KMRAZZNAXDUdBg90pMwR4epMwyP42ng0TUzRSu60', 2500.00, 1, 2500.00, '2017-04-03 05:45:20', NULL),
(22, 53, 'kcKXMes2RZKMwt0wWv4KvkLmKaaOxIKqxfNDaki6', 2333.00, 1, 2333.00, '2017-04-03 08:40:29', NULL),
(23, 57, 'kwqrUYaKLICUhUv4UhQONKfdk3EGWaBWF5BThWuC', 324324.00, 1, 324324.00, '2017-04-05 04:10:37', NULL),
(24, 56, 'kwqrUYaKLICUhUv4UhQONKfdk3EGWaBWF5BThWuC', 1500.00, 1, 1500.00, '2017-04-05 04:10:37', NULL),
(25, 53, 'kwqrUYaKLICUhUv4UhQONKfdk3EGWaBWF5BThWuC', 2333.00, 1, 2333.00, '2017-04-05 04:11:04', NULL),
(26, 41, '8kYXBxLJ11dGLj0pWkxiA7FEIKPhMdbMV8vtamrp', 1200.00, 1, 1200.00, '2017-04-05 05:28:10', NULL),
(27, 57, '8kYXBxLJ11dGLj0pWkxiA7FEIKPhMdbMV8vtamrp', 324324.00, 1, 324324.00, '2017-04-05 05:28:14', NULL),
(28, 57, '8kYXBxLJ11dGLj0pWkxiA7FEIKPhMdbMV8vtamrp', 324324.00, 1, 324324.00, '2017-04-05 05:40:03', NULL),
(29, 56, '8kYXBxLJ11dGLj0pWkxiA7FEIKPhMdbMV8vtamrp', 1500.00, 1, 1500.00, '2017-04-05 05:40:04', NULL),
(30, 44, 'fYrW2EuX4yNjTFgPw8pqdIPPHQKwVdYsPCmrnijA', 200.00, 1, 200.00, '2017-04-05 05:41:54', NULL),
(31, 41, 'fYrW2EuX4yNjTFgPw8pqdIPPHQKwVdYsPCmrnijA', 1200.00, 1, 1200.00, '2017-04-05 05:41:58', NULL),
(32, 57, 'HVY85zvxgOpRFndu5KJE4f0l9bHZzWP3aUHjIzHW', 324324.00, 1, 324324.00, '2017-04-05 09:46:17', NULL),
(33, 41, 'HVY85zvxgOpRFndu5KJE4f0l9bHZzWP3aUHjIzHW', 1200.00, 1, 1200.00, '2017-04-05 09:46:18', NULL),
(34, 41, 'HVY85zvxgOpRFndu5KJE4f0l9bHZzWP3aUHjIzHW', 1200.00, 1, 1200.00, '2017-04-05 10:07:54', NULL),
(35, 57, 'HVY85zvxgOpRFndu5KJE4f0l9bHZzWP3aUHjIzHW', 324324.00, 1, 324324.00, '2017-04-05 10:48:09', NULL),
(36, 44, 'HVY85zvxgOpRFndu5KJE4f0l9bHZzWP3aUHjIzHW', 200.00, 1, 200.00, '2017-04-05 10:48:17', NULL),
(37, 44, 'ppI9uX7dmly5IwtNPccuwacSsdvIIc6w0MMlCo97', 200.00, 1, 200.00, '2017-04-05 11:06:15', NULL),
(38, 41, 'ppI9uX7dmly5IwtNPccuwacSsdvIIc6w0MMlCo97', 1200.00, 1, 1200.00, '2017-04-05 11:09:06', NULL),
(39, 57, 'ppI9uX7dmly5IwtNPccuwacSsdvIIc6w0MMlCo97', 324324.00, 1, 324324.00, '2017-04-05 11:09:09', NULL),
(40, 54, 'ppI9uX7dmly5IwtNPccuwacSsdvIIc6w0MMlCo97', 2340.00, 1, 2340.00, '2017-04-05 11:19:42', NULL),
(41, 55, 'ppI9uX7dmly5IwtNPccuwacSsdvIIc6w0MMlCo97', 232.00, 1, 232.00, '2017-04-05 11:19:43', NULL),
(42, 53, 'ppI9uX7dmly5IwtNPccuwacSsdvIIc6w0MMlCo97', 2333.00, 1, 2333.00, '2017-04-05 11:19:47', NULL),
(43, 47, 'vJSKxajlm2wGv2Av7rehEkSg5VZQzjj7dFMwnlUE', 7800.00, 1, 7800.00, '2017-04-06 07:33:21', NULL),
(44, 55, 'vJSKxajlm2wGv2Av7rehEkSg5VZQzjj7dFMwnlUE', 232.00, 1, 232.00, '2017-04-06 07:33:22', NULL),
(45, 44, 'nzRngplw3jZvh7cjpuJJX9RjQ5KPMczwiNoeDNAv', 200.00, 1, 200.00, '2017-04-06 11:16:24', NULL),
(46, 43, 'nzRngplw3jZvh7cjpuJJX9RjQ5KPMczwiNoeDNAv', 1200.00, 1, 1200.00, '2017-04-06 11:16:30', NULL),
(47, 44, 'EpNZFLU2zwt4EMOBcvpg1KY2Wq5Yx7pADa0SUZaB', 200.00, 1, 200.00, '2017-04-08 15:32:33', NULL),
(48, 43, 'EpNZFLU2zwt4EMOBcvpg1KY2Wq5Yx7pADa0SUZaB', 1200.00, 1, 1200.00, '2017-04-08 15:32:35', NULL),
(49, 42, 'EpNZFLU2zwt4EMOBcvpg1KY2Wq5Yx7pADa0SUZaB', 1800.00, 1, 1800.00, '2017-04-08 15:32:39', NULL),
(50, 57, 'Gx67eptIj6gWwVGBygB7gy9maGDaRzPPOhefaXAq', 324324.00, 1, 324324.00, '2017-04-09 10:02:39', NULL),
(51, 41, 'Gx67eptIj6gWwVGBygB7gy9maGDaRzPPOhefaXAq', 1200.00, 1, 1200.00, '2017-04-09 10:02:43', NULL),
(52, 44, 'PT3pJjpThDjiYrGrsuryOiELaEgd7aHAJP7C6SH2', 200.00, 1, 200.00, '2017-04-09 16:09:46', NULL),
(53, 43, 'PT3pJjpThDjiYrGrsuryOiELaEgd7aHAJP7C6SH2', 1200.00, 1, 1200.00, '2017-04-09 16:26:44', NULL),
(54, 42, 'YbBGvaB6JUmYQgWNhUorSyC4Z76b1x58VR48XWwA', 1800.00, 1, 1800.00, '2017-04-09 16:29:16', NULL),
(55, 42, 'YbBGvaB6JUmYQgWNhUorSyC4Z76b1x58VR48XWwA', 1800.00, 1, 1800.00, '2017-04-09 17:03:57', NULL),
(56, 42, 'YbBGvaB6JUmYQgWNhUorSyC4Z76b1x58VR48XWwA', 1800.00, 1, 1800.00, '2017-04-09 17:34:21', NULL),
(57, 43, 'YbBGvaB6JUmYQgWNhUorSyC4Z76b1x58VR48XWwA', 1200.00, 1, 1200.00, '2017-04-09 17:35:26', NULL),
(58, 44, 'hWxiQMEoTO9d072mTCpZZ7manDAm5hutaiT3Jgcw', 200.00, 1, 200.00, '2017-04-10 11:07:59', NULL),
(59, 44, 'lDTMsafdM8i3MozEksyvCs0bahgtCwGfsQPN9OIA', 200.00, 1, 200.00, '2017-04-10 15:10:50', NULL),
(60, 43, 'lDTMsafdM8i3MozEksyvCs0bahgtCwGfsQPN9OIA', 1200.00, 1, 1200.00, '2017-04-10 15:18:28', NULL),
(61, 43, 'buuU3bYUJelvmP6EgOjdNKR1zJ1Ft31lwFO4RySs', 1200.00, 1, 1200.00, '2017-04-10 15:34:44', NULL),
(62, 44, 'buuU3bYUJelvmP6EgOjdNKR1zJ1Ft31lwFO4RySs', 200.00, 1, 200.00, '2017-04-10 16:07:30', NULL),
(63, 44, 'buuU3bYUJelvmP6EgOjdNKR1zJ1Ft31lwFO4RySs', 200.00, 1, 200.00, '2017-04-10 16:17:49', NULL),
(64, 44, 'buuU3bYUJelvmP6EgOjdNKR1zJ1Ft31lwFO4RySs', 200.00, 1, 200.00, '2017-04-10 16:24:12', NULL),
(65, 43, 'buuU3bYUJelvmP6EgOjdNKR1zJ1Ft31lwFO4RySs', 1200.00, 1, 1200.00, '2017-04-10 17:17:01', NULL),
(66, 43, 'buuU3bYUJelvmP6EgOjdNKR1zJ1Ft31lwFO4RySs', 1200.00, 1, 1200.00, '2017-04-10 18:16:03', NULL),
(67, 57, 'G9bL24c17qPH6s24EqRMKQHj4El8f2OWYwxzTAzE', 324324.00, 1, 324324.00, '2017-04-15 10:04:37', NULL),
(68, 81, 'nb5RwZz6GttWGK39f4QNLLUlatYkDm64xnkRx11p', 3600.00, 5, 18000.00, '2017-04-17 15:01:23', NULL),
(69, 82, 'du1DYur0IOzDc2FNCAqolfJzfJ67nhkkLwfX36WN', 3600.00, 1, 3600.00, '2017-04-17 16:39:35', NULL),
(70, 82, 'drbsB4U0WpM04ZGL2NHTp1De3MchVV3eqXv19DI3', 3600.00, 1, 3600.00, '2017-04-17 17:00:57', NULL),
(71, 82, 'Mr4bjRzyGMD2YRsF0fYqawliDp2di15GTK3E2HZr', 3600.00, 1, 3600.00, '2017-04-17 17:04:31', NULL),
(72, 79, 'E3qV4j7H7ubJyZKhnXjUUzLCIysEU8aLqMzjTqlq', 3600.00, 1, 3600.00, '2017-04-17 17:15:42', NULL),
(73, 79, 'BrWFmQPrEhvvcVXz6o675DF04Auav7hPDXkEXTwW', 3600.00, 1, 3600.00, '2017-04-17 17:17:36', NULL),
(74, 81, '9quVtjqfoPQ8FtrrScFdNGRN0TiU1dGndSwsRZhU', 3600.00, 1, 3600.00, '2017-04-18 05:24:15', NULL),
(75, 81, '9quVtjqfoPQ8FtrrScFdNGRN0TiU1dGndSwsRZhU', 3600.00, 1, 3600.00, '2017-04-18 05:32:42', NULL),
(87, 81, 'rXoLNot4yoyh601cu6lvrDXBZDWZfuoERLrSDhNr', 3600.00, 2, 7200.00, '2017-11-23 19:51:58', NULL),
(88, 79, 'rXoLNot4yoyh601cu6lvrDXBZDWZfuoERLrSDhNr', 3600.00, 1, 3600.00, '2017-11-23 19:54:21', NULL),
(89, 81, '3xn02925aqyLrTG7HqJhl7yNhnXu8kAXknfBsa0X', 3600.00, 3, 10800.00, '2017-11-24 13:19:14', NULL),
(94, 81, 'up4evPK1fBVSG2cpm9DbVKcXnF4fPyDX6TPnSvja', 3600.00, 2, 3600.00, '2017-11-25 07:40:38', NULL),
(95, 89, 'up4evPK1fBVSG2cpm9DbVKcXnF4fPyDX6TPnSvja', 2600.00, 3, 7800.00, '2017-11-25 07:40:52', NULL),
(103, 91, 'qlZccMp88N8S0BPUMq6yHZl9V65HQCmkz4VOhI5G', 2600.00, 1, 2600.00, '2017-11-25 07:47:51', NULL),
(105, 90, 'qlZccMp88N8S0BPUMq6yHZl9V65HQCmkz4VOhI5G', 2600.00, 1, 2600.00, '2017-11-25 07:48:21', NULL),
(106, 79, 'qlZccMp88N8S0BPUMq6yHZl9V65HQCmkz4VOhI5G', 3600.00, 1, 3600.00, '2017-11-25 07:48:44', NULL),
(107, 89, 'qlZccMp88N8S0BPUMq6yHZl9V65HQCmkz4VOhI5G', 2600.00, 1, 2600.00, '2017-11-25 07:50:42', NULL),
(110, 71, '7TxJ0384St5UBlwOOACBsaH5T2iuFeddOUfR3mpo', 7200.00, 1, 7200.00, '2017-11-26 05:59:43', NULL),
(112, 81, '5HpJlCrDYtLHWfqGGkIUUhSgvhjX2K7QxwIcdGB5', 3600.00, 2, 7200.00, '2017-11-26 09:49:01', NULL),
(120, 90, 'TVLtkOpEIT1zYWxREaXxDY2c3SgIkDFU7cSu5ENz', 2600.00, 4, 10400.00, '2017-11-28 15:23:17', NULL),
(122, 79, '8Q3yK9vKwfmEybKBIiEWo15t0xPmiLBGU80PhMuV', 3600.00, 1, 3600.00, '2017-11-30 06:02:42', NULL),
(123, 79, 'pvfFedKOcFa5OOGF0B0GyvKuqhvxRfk9g0axp44K', 3600.00, 2, 7200.00, '2017-11-30 06:08:22', NULL),
(124, 79, 's0woqR8C17JBkk1bUXvjf3IRZ8BnNFxkmbDvVZHt', 3600.00, 1, 3600.00, '2017-11-30 15:57:00', NULL),
(125, 79, 'EC3esTPjtFVwWstSDSlh2668PE3c3qIIsIGFa9RU', 3600.00, 1, 3600.00, '2017-11-30 16:03:17', NULL),
(126, 90, 'EC3esTPjtFVwWstSDSlh2668PE3c3qIIsIGFa9RU', 2600.00, 1, 2600.00, '2017-11-30 16:03:26', NULL),
(127, 78, 'EC3esTPjtFVwWstSDSlh2668PE3c3qIIsIGFa9RU', 3600.00, 1, 3600.00, '2017-11-30 16:03:36', NULL),
(128, 90, 'PRfMHZBEWrbGUKcLHIOSKG1WJvZpfG1b3QY1jKjG', 2600.00, 1, 2600.00, '2017-12-01 09:05:50', NULL),
(129, 89, 'PRfMHZBEWrbGUKcLHIOSKG1WJvZpfG1b3QY1jKjG', 2600.00, 2, 5200.00, '2017-12-01 09:06:00', NULL),
(137, 130, 'ns6aE1JufZ4bbMgyN1Af1BS3WMYEI2M8czQfcGc0', 7200.00, 3, 21600.00, '2017-12-07 16:34:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8_unicode_ci,
  `skills` text COLLATE utf8_unicode_ci,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User.jpg',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `occupation`, `education`, `skills`, `experience`, `about`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'masud', 'masud9@gmail.com', '$2y$10$dH6kJPaiGQS6G5yiC8Erou.bpt45KrBkfxH2t8DJNuftbBGVTsxuu', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2016-07-30 20:10:11', '2016-07-30 20:10:11'),
(2, 'masud', 'masud@bdcommerce.com', '$2y$10$Q5uiWK9IM1RLJRQFs.y4Pe2kVp2EMyrnBSPwE5FTFp7A/29p2Ikia', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', '0O2ZtbydwzC5alwRcs9mGUX0Jg4H61G7sWyBRp3bwCoK4derD8IIN7sCCEm9', '2016-08-08 01:38:35', '2016-08-29 09:48:18'),
(3, 'Masud', 'masud@masud.com', '$2y$10$82H3blHvOKiPAdW45N84DOEPmnpcosjIPadtQ5q83kYHokNtL3iRe', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2016-08-15 02:08:39', '2016-08-15 02:08:39'),
(4, 'avc', 'avc@gmail.com', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, NULL, NULL),
(5, 'rafiq', 'rafiq@asda.com', '$2y$10$KHIN6g6ZldT2WFQqHub3N.njr54NliS5sl/7SG3JQCEAtzn888r7W', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'm8tF5EY3NsV6UwaUPbGPars2s3W62CjoirxUo9zbrTQh30sf2ochdxCTizP3', NULL, '2016-08-29 10:29:00'),
(6, 'smdsa', 'masmdsma@gmail.com', '$2y$10$SBGSrufwO1JvJ2Cp8kYo4uFXBtyPRA0uXjy7Opo7er7/9OsXjrEAi', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-03-18 07:26:58', '2017-03-18 07:26:58'),
(7, 'santanu', 'santanudastusher@gmail.com', '$2y$10$GIa9FIDRHgcHRoYO2ZL/w.re27XfkrNkGnw35fbN2KuR5RHEj12fa', '', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-04-09 10:27:42', '2017-04-09 10:27:42'),
(17, 'Md.Abdus Salam', 'salamcseiu21@gmail.com', '$2y$10$LKnwbgZSlVGL9Q6PYGWMq.LotR66xxgBK9eSK3psb3hgULvJ0wykC', '36/5,South Road,Dimla,Nilphamari', '01520102680', 'Software Engineer', NULL, NULL, '2 Years (Dot Net)', 'Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans.Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen', 'User.jpg', 'd1qwEJimTyemkoZHAfJjo6fi5dUz1R2TzPW7wi119upAMw3xQOhR7wR1UC3x', '2017-11-23 11:49:46', '2017-12-07 04:20:20'),
(18, 'Milon Miah', 'milon@gmail.com', NULL, 'u888/Adjkdsk  ', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-23 11:57:41', '2017-11-23 11:57:41'),
(19, 'Sagor', 'sagor@gmail.com', '$2y$10$twLQwH3AZu89R6tPFkM3Ne7iytoFFw8ZePc8cfqP/nBe2t4fRb3ZC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'bdhNeJKLglTrebH4sjrvm4nBvMrynrcSHzPOx4uTobAEI2lfHzw3v1nfg1uo', '2017-11-23 12:01:42', '2017-11-25 22:42:46'),
(20, 'enggmasud1983@gmail.com', 'test@masud.com', '$2y$10$oJhnrMUJRaEdLis1Ayrk1.PZij2dLvPqyzl2HVedJTa8MySjs/FSC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-25 12:41:42', '2017-11-25 12:41:42'),
(21, 'Sagor', 's@gmail.com', '$2y$10$1AKc1XwShCYfLJz0oV3IB.E9xiFAejJt6cXfXVvYAuycZXUlqlHyC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', 'VY3OC5iBQcKzAFB5F73HKlRRxCyJsas4Mh5GYTdMiDoleSzojBQLjqEWhZ5O', '2017-11-25 12:44:09', '2017-11-25 12:46:20'),
(22, 'tt', 'tt@tt.com', '$2y$10$m070izSOz7RBzib5QsRm6eFyi.zb99l2Qcy7z0aDNoChciN1P6Mjy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-26 11:00:25', '2017-11-26 11:00:25'),
(23, 'Md.Humaun Ahomed', 'humaun@gmail.com', NULL, '  45/A', NULL, NULL, NULL, NULL, NULL, NULL, 'User.jpg', NULL, '2017-11-30 00:03:47', '2017-11-30 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 17, 144, '2017-12-04 16:19:10', '2017-12-04 16:19:10'),
(3, 17, 135, '2017-12-04 16:24:16', '2017-12-04 16:24:16'),
(4, 17, 129, '2017-12-04 16:39:41', '2017-12-04 16:39:41'),
(5, 17, 133, '2017-12-04 16:49:12', '2017-12-04 16:49:12'),
(6, 17, 130, '2017-12-07 16:47:44', '2017-12-07 16:47:44');

-- --------------------------------------------------------

--
-- Structure for view `getallproductratings`
--
DROP TABLE IF EXISTS `getallproductratings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getallproductratings`  AS  select `product_ratings`.`product_id` AS `product_id`,avg(`product_ratings`.`rating`) AS `rating` from `product_ratings` group by `product_ratings`.`product_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`category_row_id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`post_row_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_row_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_row_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_row_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_row_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`temp_order_row_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `category_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `post_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `temp_order_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
