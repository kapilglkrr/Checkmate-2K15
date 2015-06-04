-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2015 at 11:46 AM
-- Server version: 5.5.43-0ubuntu0.14.10.1
-- PHP Version: 5.5.25-1+deb.sury.org~utopic+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ck2015`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_cordinates`
--

CREATE TABLE IF NOT EXISTS `main_cordinates` (
`id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `main_cordinates`
--

INSERT INTO `main_cordinates` (`id`, `value`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 21),
(7, 22),
(8, 23),
(9, 24),
(10, 25),
(11, 31),
(12, 32),
(13, 33),
(14, 34),
(15, 35),
(16, 41),
(17, 42),
(18, 43),
(19, 44),
(20, 45),
(21, 51),
(22, 52),
(23, 53),
(24, 54),
(25, 55);

-- --------------------------------------------------------

--
-- Table structure for table `main_question`
--

CREATE TABLE IF NOT EXISTS `main_question` (
`id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `main_question`
--

INSERT INTO `main_question` (`id`, `no`, `content`, `answer`) VALUES
(1, 11, 'Q1.	The police rounded up Jim, Bud and Sam yesterday, because one of them was suspected of having robbed a bank. The three suspects made the following statements under intensive questioning: <br/>\r\nJim: I’m innocent. <br/>\r\nBud: I’m innocent. <br/>\r\nSam: Bud is guilty.\r\n<br/> If only one of these statements is true, who robbed the bank?', 'jim'),
(2, 12, 'Q2	.Boys are allowed to watch football at c.v.Raman auditorium subjected to conditions.<br/>\r\n1. the boy over age 16 can wear overcoat<br/>\r\n2. no boy over age 15 can wear cap<br/>\r\n3. to watch the football either he has to wear overcoat or cap or both<br/>\r\n4. a boy with an umbrella or above 16 or both cannot wear sweater.<br/>\r\n5. boys must either not watch football or wear sweater.<br/>\r\nWhat is the appearance of the boy who is watching football.<br/>\r\nA>overcoat and cap<br/> \r\nB>overcoat and sweater<br/>\r\nC>cap and sweater<br/>\r\nD>cap and umbrella<br/>\r\nE>sweater and umbrella<br/>\r\nF>overcoat and umbrella<br/>\r\nWrite The option.<br/>', 'c'),
(3, 13, 'Q3.	My neighbor has X children. Every brother has equal no. of brothers and sisters, but each sister has twice as many brothers as sisters. Find X?', '7'),
(4, 14, 'Q4.	Sherlock, A detective who was mere days from cracking an international smuggling ring has suddenly gone missing. While inspecting his last-known location, you find a note:<br/>\r\n710 57735 34 5508 51 7718<br/>\r\nCurrently there are 3 suspects: Bill, John, and Todd. Can you break the detective''s code and find the criminal''s name?', 'bill'),
(5, 15, 'Q5.	On the market, Mrs. Jones and Mrs. Smith sell apples. Mrs. Jones sells her apples per two for 0.50 euro.<br/> The apples of Mrs. Smith are a bit smaller; she sells hers per three for 0.50 euro. At a certain moment, when both women have the same amount of apples left, Mrs. Smith is being called away.<br/> She asks her neighbor to take care of her goods. To make everything not too complicated, Mrs. Jones puts all apples to one big pile, and starts selling them for one euro per five apples.<br/> When Mrs. Smith returns at the end of the day, all apples have been sold. However, when they start dividing the money, there appears to be a shortage of 3.50 euro. <br/>Find number of apples sold by Mrs. Jones after Mrs. Smith left?', '420'),
(6, 21, 'Q6.	Using the digits 1 up to 9, two numbers must be made.<br/> The product of these two numbers should be as large as possible. <br/>All digits must be used exactly once. Find larger no.', '87531'),
(7, 22, 'Q7.	An intrepid Eskimo leaves his igloo and travels 12 kilometers north, 12 kilometers east and 12 kilometers north again to reach the North Pole.<br/> How many kilometers does he have to travel to return to his igloo in a straight line?', '24'),
(8, 23, 'Q8.	Floor function of volume of dirt in a hole that measures two feet by three feet by four feet in cubic inch?', '0'),
(9, 24, 'Q9.	There are 25 horses and you need to figure out the three fastest horses by placing them into races. Assume there is no tie in the speed. There are five tracks so for each race, you can place five horses and figure out the relative rank among those five horses but you don''t have the exact finishing time, i.e. there is no direct comparison between results from two different races. What''s the minimum number of races you need to arrange in order to figure out the three fastest horses?', '7'),
(10, 25, 'Q10.	If 19th May of a leap year is Thursday. After how many years will 18th May be a Saturday ?', '3'),
(11, 31, 'Q11.	You are the owner of a small airline and you need to create an efficient network of flight paths to allow for the airline to expand. The cities in your region are all quite small, and each has only one airport which can allocate you space for flights to at most three other cities.<br/> The airport authorities also insist that all routes operate in both directions. In addition, your customers find more than one layover on a flight is completely unacceptable. Therefore, from any one city you must be able to connect to any other city with at most two flights.<br/>\r\n<ul>\r\nGiven these constraints, how many cities can your airline connect to?\r\n</ul>', '10'),
(12, 32, 'Q12.	The cost of a diamond varies directly as the square of its weight.<br/> Once, this diamond broke into four pieces with weights in the ratio 1 : 2 : 3 : 4. <br/>When the pieces were sold, the merchant got Rs. 70,000 less. <br/>Find the original price of the diamond.', '100000'),
(13, 33, 'Q13.	In a tug of war, four Tongans can pull as hard as five Samoans. <br/>But two Samoans and a Tongan can pull as hard as one Fijian.<br/> If the Fijian and two Samoans(team A) tugged against the four Tongans(team B), which side would win?<br/> Write a or b as answer.', 'a'),
(14, 34, 'Q14.	Two players take turns to take a coin from one of the ends of the line until there are no more coins left.<br/> The player with the larger amount of money wins. Coins are of different value. Jaggu starts the game followed by Vishal.<br/> Who wins?', 'jaggu'),
(15, 35, 'Q15.	There are three logicians in a room with number written on their forehead. All the numbers are unique and greater than zero.<br/> One cannot see the number on his forehead but can see the other two numbers. One of the three numbers is sum of other two.<br/> Logician C can see 20 and 30. Logician A said he don''t know his number. Logician B said he even can''t guess his number to which C said that he guessed it.<br/> What is the number on forehead of C?', '50'),
(16, 41, 'Q16.	There are five people in a room. Four of them are togglers and one is truthful. A truthful guy always give true answer and a toggler gives alternate answer that is if he tells truth then next time he will lie and then truth and so on. <br/>For the first question a toggler may tell truth or even lie. You have to ask any guy any number of questions to find the truthful guy.<br/> What is minimum number of questions that is to be asked to find truthful guy?', '2'),
(17, 42, 'Q17.	There is a diwali rocket which moves in spiral path. While it makes a complete round of radius 1 metre it is drifted 2 meter in forward direction. <br/>\r\nIt has 100 gram powder and powder burns at rate 10 gram per meter.<br/>\r\n What is floor function of distance covered in forward direction?', '5'),
(18, 43, 'Q18.	There is a 6x6 chess board. You are on top left corner and have to come to bottom right corner.<br/>\r\n You can only move straight and diagonal movement is restricted. Find number of ways to reach the end point.<br/>', '252'),
(19, 44, 'Q19.	There was a blind man who went to the mall where he bought 3 pairs of red socks and 3 pairs of white socks.<br/> Another blind man who had already bought 3 pairs of red socks and 3 pairs of white socks came back to return his 6 pairs. They were both blind.<br/>\r\n As they were walking, they bumped into each other. All the socks scattered around the floor, but each pair remained held together by a rubber band.\r\n<br/>\r\n Nobody helped them pick the socks up. They both are genius.\r\n<br/> What is the maximum probability that they can achieve having the right socks?', '1'),
(20, 45, ' Q20.	&nbsp;&nbsp;&nbsp;10,2,110,3,1100,6,11100,?', '10'),
(21, 51, 'Q21.	 H O T<br/> \r\n	O T W <br/>\r\n	V ? Z<br/>', 'y'),
(22, 52, ' Q22.	4 9 20 <br/>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8 5 14 <br/>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	10 3 ?<br/>', '11'),
(23, 53, ' Q23.	[5,3,2 ]<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[12,8,6]<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[26,18, ?]<br/>\r\n', '14'),
(24, 54, 'Q24.	 [2 5]<br/> [7 3]<br/> [10 4]<br/> [14 6]<br/> [20 8]<br/> [28 ?]', '12'),
(25, 55, 'Q25.	What are made of ice to keep people warm?', 'igloo'),
(26, 11, 'Q26.	The director of a prison offers 10 prisoners on death row, which are numbered from 1 to 10, a last chance. In a room there is a cupboard with 10 drawers. The director puts in each drawer the number of exactly one prisoner in random order and closes the drawers afterwards. The prisoners enter the room one after another. Each prisoner may open and look into 5 drawers in any order and the drawers are closed again afterwards. If during this search every prisoner finds his number in one of the drawers, all prisoners are pardoned. If just one prisoner does not find his number, all prisoners have to die. The prisoners may discuss their strategy, afterwards no communication of any means is possible. What is the floor function of (10*probability for prisoners to survive) if they follow the following strategy?<br/>\r\nThe strategy is now as follows<br/>\r\n1]Each prisoner first opens the drawer with his own number.<br/>\r\n2]If this drawer contains his number he is finished with his search and was successful.<br/>\r\n3]Otherwise, the drawer contains the number of another prisoner and he next opens the drawer with this number.<br/>\r\n4]The prisoner repeats steps 2 and 3 until he finds his own number or has opened 5 drawers.<br/>', '3'),
(27, 12, 'Q27.	A contest is held on international level in December 2013. The finale of it is between an American and a British kid. Only name and date have to be mentioned on the paper for checking purpose. But when the checkers check it, they find out that both of them have same names. The papers cannot be told apart in any manner now.<br/>\r\nWhat is the date of competition?<br/> \r\nWrite the day part of month in number.', '12'),
(28, 13, 'Q28.	There are two new systems A & B like celcius & faurenheit. 8 degrees in system A is equal to 104 degrees in System B and 116 degrees \r\nIn  system A is equal to 131 degrees in system B. \r\nAt what temperature both will equal? ', '136'),
(29, 14, 'Q29.	A and B jointly invest Rs.9000 and Rs.10500. After 4 months C joins with\r\nRs.12500 and B withdraws Rs.2000. At the end of the year, the profit was\r\nRs.4770. Find the share of A.', '1620'),
(30, 15, 'Q30.	CUBED RESULT is an anagram of two words that are opposite in\r\nmeaning?  Write the word with less number of letter.', 'crude'),
(31, 21, ' Q31.	This is a famous probability puzzle in which you have to choose the correct answer at random from the four options below. <br/>Can you tell us what’s the probability of choosing correct answer in this random manner. Write answer as 20*probability.<br/>a>1/4<br/>	b>1/2<br/>	c>1<br/>	d>0', '0'),
(32, 22, 'Q32.	What tastes better than it smells?', 'tongue'),
(33, 23, 'Q33.	Three people, Add, Divide and Even are talking about their house numbers. These lie between 1 - 50 One of them is a member of the Red Tribe, who always tell the truth; another is a member of the Blue  Tribe, who never  tell the truth; and the third is a member of the Yellow Tribe,  who make  statements which are alternately true and false, or false and  true. \r\nThey make statements as follows :<br/>\r\n \r\n<b>ADD</b>     :  1 The number of my house is greater than that of  Divide''s.<br/>\r\n2 My number is divisible by 4.<br/>\r\n3 Even''s number differs by 13 from that of one of the others.<br/>\r\n\r\n  <b> DIVIDE</b>  :  1 Add''s number is divisible by 12.<br/>\r\n2 My number is 37.<br/>\r\n3 Even''s number is even.<br/>\r\n<b>EVEN</b>   :   1 No one''s number is divisible by 10.</br> \r\n2 My number is 30.</br>\r\n3 Add''s number is divisible by 3.</br>\r\nFind house number of divide.', '37'),
(34, 24, 'Q34.	A man comes up to the border of a country on his motorcycle. He has three large sacks on his bike. The customs officer at the border crossing stop him and asks, “What is in the sacks?”<br?>\r\n<br/>\r\n“Sand,” answered the man.\r\n<br/>\r\nThe guard says, “We’ll see about that. Get off the bike.”\r\n<br/>\r\nThe guard takes the sacks and rips them apart; he empties them out and finds nothing in them but sand. He detains the man overnight and has the sand analysed, only to find that there is nothing but pure sand in the bags. The guard releases the man, puts the sand into new bags, lifts them onto the man’s shoulders and lets him cross the border.\r\n<br/>\r\nA week later, the same thing happens. The customs officer asks, “What have you got?”\r\n<br/>\r\n“Sand,” says the man.\r\n<br/>\r\nThe officer does another thorough examination and again discovers that the sacks contain nothing but sand. He gives the sand back to the man, and the man again crosses the border.\r\n<br/>\r\nThis sequence of events repeats every day for the next three years. Then one day, the man doesn’t show up. The border official meets up with him in a restaurant in the city. The officer says, “I know you’re smuggling something and it’s driving me crazy. It’s all I think about. I can’t even sleep. Just between you and me, what are you smuggling?”\r\n<br/>\r\nWhat is the man smuggling?', 'motorcycle'),
(35, 25, 'Q35.	Let the function $(P) be defined as the product of the number of all the objects in the universe having property P . Then, assuming the population of the world is 7 billion, find $(fingers of left hand of a Homo sapien)', '0'),
(36, 31, 'Q36.	A five letter word becomes shorter when you add two letters to it. What is the word?', 'short'),
(37, 32, 'Q37.	A man walks into a bar and asks for a drink. The bartender pulls out a gun and points it at him. The man says, "Thank you," and walks out. The man was initially troubled with what?', 'hiccups'),
(38, 33, 'Q38.	Which word is the odd one out. First Second Third Forth Fifth Sixth Seventh Eighth\r\n', 'forth'),
(39, 34, 'Q39. The number 254  can be represented as (x^y+y^x). If x is greater than y. Find x.', '253'),
(40, 35, 'Q40.	Before going for a party Dr. Dolittle ordered the three musketeers, Tom, Jerry and Donald – to keep watch on<br/>\r\nthe three gluttonous pets - the cat, the dog and the bear. After the party got over, Dr. Dolittle reached back\r\nhome to find that three items viz, milk, meat and honey were missing from the refrigerator. He then asked the\r\nmusketeers what happened to the three items. Following were the replies of the three musketeers.<br/>\r\nTom : The cat drank the milk. The dog ate the meat. The bear had the honey.<br/>\r\nJerry : The dog ate the meat. The bear had the honey. The cat did not drink the milk.<br/>\r\nDonald : The dog did not have the honey. The bear did not drink the milk.\r\nThe cat did not eat the meat.<br/>\r\nThe statements made by each of the musketeers were alternately true and false but which comes first is uncertain.<br/>\r\n1.If each pet ate exactly one of the three items, can you help Dr. Dolittle find who had the honey?', 'cat'),
(41, 41, 'Q41.	Every time Grant the Ant hears a whistle from her maternal uncle, she takes a right turn and continues travelling.<br/>\r\nAfter she travels twice as much distance as she just covered in the previous direction, her uncle blows the whistle\r\nagain. Grant started at a point and proceeded in a northerly direction. She heard the first whistle from her uncle after\r\nshe covered 1 km. X  is Grant distance from the starting point immediately after she heard the sixth whistle from her uncle. Find ceiling function of X.', '30'),
(42, 42, 'Q42. Three persons A, B &C went for a robbery in different directions and they theft one horse, one mule and one camel. They were caught by  the police and when interrogated gave the following statements <br/>\r\nA: B has stolen the horse<br/>\r\nB: I didn''t rob anything.<br/>\r\nC: both A & B are false and B has stolen the mule.<br/>\r\nThe person who has stolen the horse always tell the truth and\r\nThe person who has stolen the camel always tell the lie.<br/>\r\n<br/>\r\nFind who stole horse?<br/>', 'c'),
(43, 43, 'Q43. On Bagshot Island, there is an airport. The airport is the homebase of an unlimited number of identical airplanes. Each airplane has a fuel capacity to allow it to fly exactly 1/2 way around the world, along a great circle. The planes have the ability to refuel in flight without loss of speed or spillage of fuel. Though the fuel is unlimited, the island is the only source of fuel.<br/>\r\nWhat is the fewest number of aircraft necessary to get one plane all the way around the world assuming that all of the aircraft must return safely to the airport? How did you get to your answer?<br/>\r\nNotes:<br/>\r\n(a) Each airplane must depart and return to the same airport, and that is the only airport they can land and refuel on ground.<br/>\r\n(b) Each airplane must have enough fuel to return to airport.<br/>\r\n(c) The time and fuel consumption of refueling can be ignored. (so we can also assume that one airplane can refuel more than one airplanes in air at the same time.)<br/>\r\n(d) The amount of fuel airplanes carrying can be zero as long as the other airplane is refueling these airplanes. What is the fewest number of airplanes and number of tanks of fuel needed to accomplish this work? (we only need airplane to go around the world)<br/>', '3'),
(44, 44, 'Q44. Two people are playing with a pair of dies. Instead of numbers, the dies have different colors on theirsides. The first person wins if the same color appears  on both the dies and the second person wins if the colors are different. The odds of their winning are equal. If the first dice has 5 red sides and 1 blue side, find the number of red faces on the second one.', '3'),
(45, 45, 'Q45. Postman Pat delivers the mail in the small village Tenhouses. This village, as you already suspected, has only one street with exactly ten houses, numbered from 1 up to and including 10.<br/>\r\nIn a certain week, Pat did not deliver any mail at two houses in the village; at the other houses, he delivered mail three times each. Each working day he delivered mail at exactly four houses.\r\nThe sums of the house numbers where he delivered mail were:<br/>\r\non Monday: 18<br/>\r\non Tuesday: 12<br/>\r\non Wednesday: 23<br/>\r\non Thursday: 19<br/>\r\non Friday: 32<br/>\r\non Saturday: 25<br/>\r\non Sunday: he never works<br/>\r\nTwo houses did not get any mail that week. Find the sum of the house number.', '12'),
(46, 51, 'Q46. You walk upwards on an escalator, with a speed of 1 step per second. After 50 steps, you are at the end. You turn around and run downwards with a speed of 5 steps per second. After 125 steps, you are back at the beginning of the escalator.\r\nHow many steps do you need if the escalator stands still?', '100'),
(47, 52, 'Q 52) If my house number is a multiple of 3, then it is a number from 50 to 59 (inclusive). If my house number is not a multiple of 4, then it is a number from 60 to 69 (inclusive). If my house number is not a multiple of 6, then it is a number from 70 to 79 (inclusive). What is my house number? Consider b/w 1 to 100.', '76'),
(48, 53, 'Q) if 5+3+2= 101512 \r\n<br/>\r\n9+2+4= 183662\r\n<br/>\r\n8+6+3= 482466\r\n<br/>\r\n5+4+5= 202504\r\n<br/>\r\nthen what will be the answer of 7+2+5?', '143542'),
(49, 54, 'Q) After an interview in an office building in New York, I left the office and looked east out at the view of the Atlantic Ocean while waiting for the elevator. When the elevator opened, I turned around and walked into it. I took it down three floors, exited and turned left. I followed the hallway around two corners, turning to the left each time. I then headed down the hall a little way and stopped at the next bank of elevators on my right. I entered one of the elevators, took it down fifteen floors, exited the elevator and went straight across into another elevator that I took to the ground level. I then exited the elevator, turned left and went straight out the front of the building, where I caught a bus. I got on the bus, and the seats facing the door were taken, so I went up and sat facing out the front of the bus. The bus turned left and stopped, then turned right and then right again. It continued fourteen blocks and then turned left, where it stopped and let three people off, one of whom was sitting across from the door. I got up and took his seat. Then, because there is a median in the road, the bus then did a U-turn, went down one block and turned right. It continued on, turned left and stopped. What direction am I facing?', 'south'),
(50, 55, 'Q) In a certain System, Distances from you to certain cities are written below.<br/>\r\nBERLIN 10000 KMS<br/>\r\nPARIS 7000 KMS<br/>\r\nROME 4000 KMS<br/>\r\nAMSTERDAM 15000 KMS<br/>\r\nCARDIFF ???? KMS<br/>\r\nHow far should it be to Cardiff ?<br/>\r\nHint – It has nothing to do with geography.', '13000');

-- --------------------------------------------------------

--
-- Table structure for table `main_words`
--

CREATE TABLE IF NOT EXISTS `main_words` (
`id` int(11) NOT NULL,
  `word` varchar(15) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=380 ;

--
-- Dumping data for table `main_words`
--

INSERT INTO `main_words` (`id`, `word`, `points`) VALUES
(1, 'ALE', 3),
(2, 'ALS', 3),
(3, 'ANE', 3),
(4, 'ANI', 3),
(5, 'ANT', 3),
(6, 'ANY', 3),
(7, 'ARE', 3),
(8, 'ARS', 3),
(9, 'ASS', 3),
(10, 'ATE', 3),
(11, 'AXE', 3),
(12, 'AYS', 3),
(13, 'BOS', 3),
(14, 'BOT', 3),
(15, 'CAN', 3),
(16, 'CAR', 3),
(17, 'COD', 3),
(18, 'COL', 3),
(19, 'DEE', 3),
(20, 'DEL', 3),
(21, 'DEN', 3),
(22, 'DEX', 3),
(23, 'DOC', 3),
(24, 'DOE', 3),
(25, 'DOL', 3),
(26, 'EAT', 3),
(27, 'EEL', 3),
(28, 'ELD', 3),
(29, 'ELS', 3),
(30, 'ENS', 3),
(31, 'EON', 3),
(32, 'ERA', 3),
(33, 'ERE', 3),
(34, 'ERN', 3),
(35, 'ERS', 3),
(36, 'ETA', 3),
(37, 'INS', 3),
(38, 'LAC', 3),
(39, 'LAR', 3),
(40, 'LAS', 3),
(41, 'LAX', 3),
(42, 'LEA', 3),
(43, 'LED', 3),
(44, 'LEE', 3),
(45, 'LET', 3),
(46, 'LEX', 3),
(47, 'NAE', 3),
(48, 'NAY', 3),
(49, 'NEE', 3),
(50, 'NET', 3),
(51, 'NIT', 3),
(52, 'NOB', 3),
(53, 'NOS', 3),
(54, 'NOT', 3),
(55, 'OCA', 3),
(56, 'ODE', 3),
(57, 'OLD', 3),
(58, 'OLE', 3),
(59, 'ONE', 3),
(60, 'ONS', 3),
(61, 'RAN', 3),
(62, 'RAS', 3),
(63, 'RED', 3),
(64, 'REE', 3),
(65, 'REI', 3),
(66, 'RET', 3),
(67, 'SAC', 3),
(68, 'SAL', 3),
(69, 'SIN', 3),
(70, 'SIT', 3),
(71, 'SOB', 3),
(72, 'SON', 3),
(73, 'SOT', 3),
(74, 'SYN', 3),
(75, 'TAE', 3),
(76, 'TAN', 3),
(77, 'TAX', 3),
(78, 'TEA', 3),
(79, 'TED', 3),
(80, 'TEE', 3),
(81, 'TEL', 3),
(82, 'TEN', 3),
(83, 'TET', 3),
(84, 'TIE', 3),
(85, 'TIN', 3),
(86, 'TIS', 3),
(87, 'TOE', 3),
(88, 'TON', 3),
(89, 'YIN', 3),
(90, 'ALEE', 4),
(91, 'ALOE', 4),
(92, 'ANIS', 4),
(93, 'ANTE', 4),
(94, 'ANTI', 4),
(95, 'AXAL', 4),
(96, 'AXED', 4),
(97, 'AXEL', 4),
(98, 'AXLE', 4),
(99, 'AYIN', 4),
(100, 'BONE', 4),
(101, 'BOSS', 4),
(102, 'CALO', 4),
(103, 'CARD', 4),
(104, 'ARE', 3),
(105, 'CARL', 4),
(106, 'CARN', 4),
(107, 'CARS', 4),
(108, 'CLAN', 4),
(109, 'CLOD', 4),
(110, 'CODE', 4),
(111, 'COED', 4),
(112, 'COLA', 4),
(113, 'COLD', 4),
(114, 'COLE', 4),
(115, 'COLS', 4),
(116, 'DEAL', 4),
(117, 'DEAN', 4),
(118, 'DEER', 4),
(119, 'DEET', 4),
(120, 'DELS', 4),
(121, 'DENE', 4),
(122, 'DENS', 4),
(123, 'DENT', 4),
(124, 'DENY', 4),
(125, 'DERE', 4),
(126, 'DOLE', 4),
(127, 'DOLS', 4),
(128, 'DREE', 4),
(129, 'EELS', 4),
(130, 'ELAN', 4),
(131, 'EONS', 4),
(132, 'ERAS', 4),
(133, 'ERNE', 4),
(134, 'ERNS', 4),
(135, 'ETNA', 4),
(136, 'INTO', 4),
(137, 'LARD', 4),
(138, 'LARS', 4),
(139, 'LASS', 4),
(140, 'LEAN', 4),
(141, 'LEER', 4),
(142, 'LEET', 4),
(143, 'LENO', 4),
(144, 'LENS', 4),
(145, 'LENT', 4),
(146, 'LOCA', 4),
(147, 'LODE', 4),
(148, 'NARD', 4),
(149, 'NAYS', 4),
(150, 'NEED', 4),
(151, 'NENE', 4),
(152, 'NEON', 4),
(153, 'NERD', 4),
(154, 'NITE', 4),
(155, 'NOBS', 4),
(156, 'NOTE', 4),
(157, 'OCAS', 4),
(158, 'ODEA', 4),
(159, 'OLEA', 4),
(160, 'OSSA', 4),
(161, 'RALE', 4),
(162, 'REDE', 4),
(163, 'REDO', 4),
(164, 'REED', 4),
(165, 'REEL', 4),
(166, 'REIN', 4),
(167, 'REIS', 4),
(168, 'RENT', 4),
(169, 'RETE', 4),
(170, 'SALE', 4),
(171, 'SARD', 4),
(172, 'SINE', 4),
(173, 'SITE', 4),
(174, 'SLED', 4),
(175, 'SLOE', 4),
(176, 'SNED', 4),
(177, 'SNIT', 4),
(178, 'SNOB', 4),
(179, 'SNOT', 4),
(180, 'SONE', 4),
(181, 'SONS', 4),
(182, 'SYNE', 4),
(183, 'TAEL', 4),
(184, 'TANS', 4),
(185, 'TAXA', 4),
(186, 'TEAL', 4),
(187, 'TEED', 4),
(188, 'TEEL', 4),
(189, 'TEEN', 4),
(190, 'TELA', 4),
(191, 'TELS', 4),
(192, 'TENS', 4),
(193, 'TENT', 4),
(194, 'TERN', 4),
(195, 'TIER', 4),
(196, 'TINE', 4),
(197, 'TINS', 4),
(198, 'TINT', 4),
(199, 'TINY', 4),
(200, 'TONE', 4),
(201, 'TONS', 4),
(202, 'TOSS', 4),
(203, 'TYNE', 4),
(204, 'YINS', 4),
(205, 'ACOLD', 5),
(206, 'ALDER', 5),
(207, 'ALDOL', 5),
(208, 'ANENT', 5),
(209, 'ANTED', 5),
(210, 'ANTIS', 5),
(211, 'ARENA', 5),
(212, 'ARETE', 5),
(213, 'ARSON', 5),
(214, 'AXLED', 5),
(215, 'AYINS', 5),
(216, 'BONED', 5),
(217, 'BONER', 5),
(218, 'CARED', 5),
(219, 'CARET', 5),
(220, 'CARLE', 5),
(221, 'CARLS', 5),
(222, 'CARNS', 5),
(223, 'CLASS', 5),
(224, 'CODEN', 5),
(225, 'CODER', 5),
(226, 'CODEX', 5),
(227, 'COLAS', 5),
(228, 'COLED', 5),
(229, 'DEANS', 5),
(230, 'DEERS', 5),
(231, 'DETER', 5),
(232, 'EATEN', 5),
(233, 'EATER', 5),
(234, 'ELDER', 5),
(235, 'ENATE', 5),
(236, 'ENTER', 5),
(237, 'INTER', 5),
(238, 'LAREE', 5),
(239, 'LASSO', 5),
(240, 'LEANS', 5),
(241, 'LEANT', 5),
(242, 'LEERS', 5),
(243, 'LENIS', 5),
(244, 'LENOS', 5),
(245, 'LENTO', 5),
(246, 'LOCAL', 5),
(247, 'LODEN', 5),
(248, 'NALED', 5),
(249, 'NEONS', 5),
(250, 'NITER', 5),
(251, 'NITON', 5),
(252, 'NOTER', 5),
(253, 'OLDEN', 5),
(254, 'OLDER', 5),
(255, 'REELS', 5),
(256, 'REINS', 5),
(257, 'RENTE', 5),
(258, 'RETAX', 5),
(259, 'SALOL', 5),
(260, 'SAREE', 5),
(261, 'SLEET', 5),
(262, 'SNEER', 5),
(263, 'SNOBS', 5),
(264, 'TANSY', 5),
(265, 'TANTO', 5),
(266, 'TAXED', 5),
(267, 'TEELS', 5),
(268, 'TEENS', 5),
(269, 'TEENY', 5),
(270, 'TENET', 5),
(271, 'TENTY', 5),
(272, 'TERNE', 5),
(273, 'TERNS', 5),
(274, 'TIERS', 5),
(275, 'TINED', 5),
(276, 'TONED', 5),
(277, 'TONER', 5),
(278, 'TYNED', 5),
(279, 'ALDERS', 12),
(280, 'ALDOLS', 12),
(281, 'ANTEED', 12),
(282, 'ARDENT', 12),
(283, 'ARSONS', 12),
(284, 'BONERS', 12),
(285, 'CAREEN', 12),
(286, 'CARNET', 12),
(287, 'CLARET', 12),
(288, 'CODENS', 12),
(289, 'CODERS', 12),
(290, 'COLDER', 12),
(291, 'DENIER', 12),
(292, 'DENOTE', 12),
(293, 'DENTIN', 12),
(294, 'DETENT', 12),
(295, 'DETERS', 12),
(296, 'DEXTER', 12),
(297, 'EATERS', 12),
(298, 'ELDERS', 12),
(299, 'ELODEA', 12),
(300, 'ENTERA', 12),
(301, 'ENTERS', 12),
(302, 'ETERNE', 12),
(303, 'EXTANT', 12),
(304, 'EXTENT', 12),
(305, 'EXTERN', 12),
(306, 'INTENT', 12),
(307, 'INTERN', 12),
(308, 'INTERS', 12),
(309, 'INTONE', 12),
(310, 'LEANED', 12),
(311, 'LEANER', 12),
(312, 'LENTEN', 12),
(313, 'LENTOS', 12),
(314, 'LOCALE', 12),
(315, 'LOCALS', 12),
(316, 'LODENS', 12),
(317, 'NEEDLE', 12),
(318, 'NEONED', 12),
(319, 'NEREIS', 12),
(320, 'NITERS', 12),
(321, 'NITONS', 12),
(322, 'NOTERS', 12),
(323, 'OLEATE', 12),
(324, 'REINED', 12),
(325, 'RENTED', 12),
(326, 'RETINA', 12),
(327, 'RETINE', 12),
(328, 'RETINT', 12),
(329, 'SINTER', 12),
(330, 'SLEETY', 12),
(331, 'SNEERS', 12),
(332, 'SYNTAX', 12),
(333, 'TEENER', 12),
(334, 'TEENSY', 12),
(335, 'TENTED', 12),
(336, 'TENTER', 12),
(337, 'TENTIE', 12),
(338, 'TEREDO', 12),
(339, 'TERETE', 12),
(340, 'TETANY', 12),
(341, 'TIERED', 12),
(342, 'TINTED', 12),
(343, 'TINTER', 12),
(344, 'TONERS', 12),
(345, 'ARENITE', 14),
(346, 'CAREENS', 14),
(347, 'DENIERS', 14),
(348, 'DENTINE', 14),
(349, 'DENTINS', 14),
(350, 'DETENTE', 14),
(351, 'ENTENTE', 14),
(352, 'ENTERAL', 14),
(353, 'EXTERNE', 14),
(354, 'EXTERNS', 14),
(355, 'INTERNE', 14),
(356, 'INTERNS', 14),
(357, 'INTONED', 14),
(358, 'INTONER', 14),
(359, 'LASSOER', 14),
(360, 'LEANERS', 14),
(361, 'LENIENT', 14),
(362, 'RETAXED', 14),
(363, 'RETINAE', 14),
(364, 'SINTERS', 14),
(365, 'SLEETED', 14),
(366, 'TEENERS', 14),
(367, 'TEENIER', 14),
(368, 'TENTERS', 14),
(369, 'TENTIER', 14),
(370, 'TINTERS', 14),
(371, 'INTERNED', 16),
(372, 'INTERNEE', 16),
(373, 'INTONERS', 16),
(374, 'RETINTED', 16),
(375, 'SINTERED', 16),
(376, 'TEENSIER', 16),
(377, 'INTERLENT\r\n', 27),
(378, 'CARE', 4),
(379, 'INTERNET', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_cordinates`
--
ALTER TABLE `main_cordinates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_question`
--
ALTER TABLE `main_question`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_words`
--
ALTER TABLE `main_words`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_cordinates`
--
ALTER TABLE `main_cordinates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `main_question`
--
ALTER TABLE `main_question`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `main_words`
--
ALTER TABLE `main_words`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=380;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
