-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2015 at 01:47 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yiinews`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1446662878),
('m140209_132017_init', 1446662881),
('m140403_174025_create_account_table', 1446662881),
('m140504_113157_update_tables', 1446662882),
('m140504_130429_create_token_table', 1446662882),
('m140830_171933_fix_ip_field', 1446662882),
('m140830_172703_change_account_table_name', 1446662882),
('m141222_110026_update_ip_field', 1446662882),
('m141222_135246_alter_username_length', 1446662882),
('m150614_103145_update_social_account_table', 1446662882),
('m150623_212711_fix_username_notnull', 1446662882),
('m151104_182404_create_table_news', 1446662984);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `reporter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_created_by` (`reporter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `img`, `created_at`, `reporter_id`) VALUES
(17, 'Possible health benefits of apples', '<p>A collection of research studies suggests that apples may well be one of the best foods people should add to their diet.</p><p><strong>The possible health benefits associated with apples are:</strong></p><h3>1) Improving neurological health</h3><p>Apples are good for neurological health. The fruit contains an antioxidant called "quercetin" which <a href="http://www.medicalnewstoday.com/articles/95960.php">reduces cellular death caused by oxidation and inflammation of neurons</a>, according to research conducted by G. Bureau and M. Martinoli at the University of Quebec.</p><h3>2) Preventing dementia</h3><p>Researchers at Cornell University conducted a study, published in the <em>Journal of Food Science</em>, which found evidence to suggest that <a href="http://www.medicalnewstoday.com/articles/95960.php">apples may help "protect neuron cells against oxidative stress-induced neurotoxicity"</a>, which could reduce the risk of developing neurodegenerative disorders such as <a href="http://www.medicalnewstoday.com/articles/159442.php" title="Alzheimer''s Disease: Causes, Symptoms and Treatments" class="keywords">Alzheimer''s disease</a>.</p><h3>3) Reducing your risk of stroke</h3><p>A study involving 9,208 men and women showed that those who ate the most apples over a 28-year period had the lowest risk for <a href="http://www.medicalnewstoday.com/articles/7624.php" title="Stroke: Causes, Symptoms, Diagnosis and Treatment" class="keywords">stroke</a>. The researchers concluded "the results suggest that <a href="http://www.ncbi.nlm.nih.gov/pubmed/10822289" target="_blank">the intake of apples is related to a decreased risk of thrombotic stroke."</a><sup>4</sup></p><h3>4) Lowering levels of bad cholesterol</h3><p>A group of researchers at The Florida State University stated that apples really are a "miracle fruit". They found that older women who ate apples everyday <a href="http://www.medicalnewstoday.com/articles/222422.php">had 23% less bad cholesterol (LDL) and 4% more good cholesterol (HDL)</a>after just six months.</p><h3>5) Reducing your risk of diabetes</h3><p>Apples could also help lower your risk of diabetes. A study involving 187,382 people found that <a href="http://www.medicalnewstoday.com/articles/265410.php">people who ate three servings per week of apples</a>, grapes, raisins, <a href="http://www.medicalnewstoday.com/articles/287710.php" title="Blueberries: Health Benefits, Uses, Health Risks" class="keywords">blueberries</a> or pears had a 7% lower risk of developing <a href="http://www.medicalnewstoday.com/info/diabetes/type2diabetes.php" title="What is type 2 diabetes?" class="keywords">type 2 diabetes</a> compared to those who did not.</p><h3>6) Warding off breast cancer</h3><p>There is growing evidence suggesting that <a href="http://www.medicalnewstoday.com/releases/145087.php">an apple a day may help prevent breast cancer</a>, according to a series of studies conducted by prominent Cornell researcher Rui Hai Liu.</p><p>Liu said her research adds to "the growing evidence that increased consumption of fruits and vegetables, including apples, would provide consumers with more phenolics, which are proving to have important health benefits. I would encourage consumers to eat more and a wide variety of fruits and vegetables daily."</p>', '1446898416.jpg', '2015-11-07 13:13:36', 2),
(18, '16 Health Benefits Of Drinking Warm Lemon Water', '<p>Lemons are <a href="http://foodmatters.tv/articles-1/vitamin-c-natures-most-powerful-vitamin-for-healing" target="_blank">vitamin C</a> rich citrus fruits that enhance your beauty, by rejuvenating skin from within bringing a glow to your face. One of the major health benefits of drinking warm lemon water is that it paves <g style="line-height: 1.6em; background-color: initial;">way</g> for losing weight faster, thus acting as a great weight loss remedy. </p><h3><strong>Lemon water flushes out toxins and is extremely beneficial for the body.</strong></h3><br>Warm lemon water serves as the perfect ‘good morning drink’, as it aids the digestive system and makes the process of eliminating the waste products from the body easier. It prevents the problem of constipation and diarrhea, by ensuring smooth bowel functions.<p><br><br></p><h2>Nutritional Value Of Lemons</h2><h2><img alt="" src="http://foodmatters.tv/images/articles/lemons-yeah.jpg"></h2>A glass of lemon juice contains less than 25 calories. It is a rich source of nutrients like calcium, potassium, vitamin C and pectin fiber. It also has medicinal values and antibacterial properties. It also contains traces of iron and vitamin A<strong>.</strong> <p><br><br>Lemon, a fruit popular for its therapeutic properties, helps maintain your immune system and thus, protects you from the clutches of most types of infections. It also plays the role of a blood purifier. Lemon is a fabulous antiseptic and lime-water juice also works wonders for people having heart problems, owing to its high potassium content. So, make it a part of your daily routine to drink a glass of warm lemon water in the morning and enjoy its health benefits. <strong>Read on for more interesting information on the benefits of warm lemon water.</strong></p><ul><li><strong>Lemon is an excellent and rich source of vitamin C, an essential nutrient that protects the body against immune system deficiencies<br><br></strong></li><li><strong>Lemons contain pectin fiber which is very beneficial for colon health and also serves as a powerful antibacterial <br><br></strong></li><li><strong>It <g>balances</g> maintain the <a href="http://www.foodmatters.tv/content/five-steps-to-an-alkaline-ph" target="_self">pH levels</a> in the body <br><br></strong></li><li><strong>Having warm lemon juice early in the morning helps flush out toxins <br><br></strong></li><li><strong>It aids digestion and encourages the production of bile <br><br></strong></li><li><strong>It is also a great source citric acid, potassium, calcium, phosphorus and magnesium <br><br></strong></li><li><strong>It helps prevent the growth and multiplication of pathogenic bacteria that cause infections and diseases <br><br></strong></li><li><strong>It helps reducing pain and inflammation in joints and knees as it dissolves uric acid <br><br></strong></li><li><strong>It helps cure the common cold <br><br></strong></li><li><strong>The potassium content in lemon helps nourish brain and nerve cells <br><br></strong></li><li><strong>It strengthens the liver by providing energy to the liver enzymes when they are too dilute <br><br></strong></li><li><strong>It helps balance the calcium and oxygen levels in the liver In case of a <g>heart burn</g>, taking a glass of concentrated lemon juice can give relief<br><br></strong></li><li><strong>It is of immense benefit to the skin and it prevents the formation of wrinkles and acne <br><br></strong></li><strong><li><strong>It helps maintain the health of the eyes and helps fight against eye problems <br><br></strong></li><li><strong>Aids in the production of digestive juices <br><br></strong></li><li><strong>Lemon juice helps replenish body salts especially after a strenuous workout session<br><br></strong></li></strong></ul><p><strong></strong>Packed with all the goodness, make it a point to begin your day with a glass of warm lemon water. <g>Its</g> cleansing and healing effects will have positive effects on your health in the long run. <g>However</g> it is very important to note that when lemon juice  comes directly in contact with the teeth, can ruin the enamel on the teeth. Hence, it is advised to consume it diluted and also rinse your mouth thoroughly after drinking lemon juice.</p>', '1446898712.jpg', '2015-11-07 13:18:32', 2),
(19, 'What are the health benefits of oranges?', '<p>We all know the proverb "an apple a day," but equally an orange could be recommended. There are thousands of reasons why eating an orange a day is a good idea; they are low in calories but full of nutrients, they promote clear, healthy skin and can help to lower our risk for many diseases and conditions as part of an overall healthy and varied diet.</p><p>Orange trees are the most cultivated fruit trees in the world. Oranges are a popular fruit because of their natural sweetness, wide variety of types and diversity of uses - from juices and marmalades to face masks and candied orange slices.</p><p>An orange has over 170 different phytochemicals and more than 60 flavonoids, many of which have been shown to have anti-inflammatory properties and strong antioxidant effects.<sup>6</sup></p><p>This MNT Knowledge Center feature is part of a <a href="http://www.medicalnewstoday.com/articles/269143.php">collection of articles</a> on the health benefits of popular foods. It provides a nutritional breakdown of the fruit and an in-depth look at its possible health benefits, how to incorporate more oranges into your diet and any potential health risks of consuming oranges.</p><h2>Nutritional breakdown of oranges</h2><p><br>One orange provides a range of vitamins and minerals; a staggering 130 percent of your vitamin C needs for the day.</p><p>One medium orange (approximately 154 grams) contains 80 <a href="http://www.medicalnewstoday.com/articles/245588.php" title="How Many Calories Should I Eat a Day?" class="keywords">calories</a>, 0 grams of fat, 250 milligrams of <a href="http://www.medicalnewstoday.com/articles/287212.php" title="What are the health benefits of potassium?" class="keywords">potassium</a>, 19 grams of <a href="http://www.medicalnewstoday.com/articles/161547.php" title="What are carbohydrates? What is glucose?" class="keywords">carbohydrate</a> (14 grams of sugar and 3 grams of dietary fiber) as well as 1 gram of protein.</p><p>One orange provides 130 percent of your vitamin C needs for the day, 2 percent of vitamin A needs, 6 percent of calcium and 0 percent of iron.</p><p>Oranges also contain thiamin, riboflavin, niacin, <a href="http://www.medicalnewstoday.com/articles/195878.php" title="What are vitamins? What vitamins do I need?" class="keywords">vitamin</a> B-6, <a href="http://www.medicalnewstoday.com/articles/287677.php" title="What are the health benefits of folate?" class="keywords">folate</a>, pantothenic acid, phosphorus, <a href="http://www.medicalnewstoday.com/articles/286839.php" title="What are the health benefits of magnesium?" class="keywords">magnesium</a>, manganese, selenium and <a href="http://www.medicalnewstoday.com/articles/288165.php" title="What are the health benefits of copper?" class="keywords">copper</a>. Because of their high vitamin C content (over twice the daily need) oranges are associated with boosting the immune system.</p><p>Oranges also contain choline, zeaxanthin, and carotenoids.</p><p>Choline is an important nutrient found in oranges that helps with sleep, muscle movement, learning and memory. Choline also helps to maintain the structure of cellular membranes, aids in the transmission of nerve impulses, assists in the absorption of fat and reduces chronic <a href="http://www.medicalnewstoday.com/articles/248423.php" title="Inflammation: Causes, Symptoms and Treatment" class="keywords">inflammation</a>.<sup>2</sup></p><p>Zeaxanthin and carotenoids have antioxidant effects and have been shown to have an inverse relationship with overall <a href="http://www.medicalnewstoday.com/info/cancer-oncology/" title="What is Cancer?" class="keywords">cancer</a> rates and <a href="http://www.medicalnewstoday.com/articles/150086.php" title="Prostate Cancer: Causes, Symptoms and Treatments" class="keywords">prostate cancer</a> in particular.</p><h2>Possible health benefits of consuming oranges</h2><p>Stroke: According to the American Heart Association, eating higher amounts of a compound found in citrus fruits like oranges and grapefruit may lower ischemic <a href="http://www.medicalnewstoday.com/articles/7624.php" title="Stroke: Causes, Symptoms, Diagnosis and Treatment" class="keywords">stroke</a> risk for women. Those who ate the highest amounts of citrus had a 19 percent lower risk of ischemic stroke than women who consumed the least. <sup>5</sup></p><p>Blood pressure: Maintaining a low sodium intake is essential to lowering <a href="http://www.medicalnewstoday.com/articles/270644.php" title="Blood Pressure: What Is Normal? How To Measure Blood Pressure" class="keywords">blood pressure</a>, however increasing potassium intake may be just as important because of its vasodilation effects. According to the National Health and Nutrition Examination Survey, fewer than 2 percent of US adults meet the daily 4700 mg recommendation.<sup>3</sup></p><p>Also of note, a high potassium intake is associated with a 20 percent decreased risk of dying from all causes.<sup>3</sup></p><p>Cancer: According to a study published in the American Journal of Epidemiology, consuming <a href="http://www.medicalnewstoday.com/articles/271157.php" title="Bananas: Health Benefits, Risks and Nutritional Facts" class="keywords">bananas</a>, oranges and orange juice in the first two years of life <a href="http://www.bastyrcenter.org/content/view/741/">may reduce the risk of developing childhood leukemia.</a></p><p>As an excellent source of the strong antioxidant vitamin C, oranges can also help combat the formation of free radicals known to cause cancer. While an adequate vitamin C intake is necessary and very beneficial as an antioxidant, the amount necessary to consume for therapeutic purposes for cancer is beyond oral intake.<sup>1</sup> High fiber intakes from fruits and vegetables are associated with a lowered risk of <a href="http://www.medicalnewstoday.com/articles/155598.php" title="Colorectal Cancer: Causes, Symptoms and Treatments" class="keywords">colorectal cancer</a>.</p><p>Heart health: The fiber, potassium, vitamin C and choline content in oranges all support heart health. An increase in potassium intake along with a decrease in sodium intake is the most important dietary change that a person can make to reduce their risk of cardiovascular disease, according to Mark Houston, M.D, M.S, an associate clinical professor of medicine at Vanderbilt Medical School and director of the Hypertension Institute at St. Thomas Hospital in Tennessee.<sup>3</sup></p><p>In one study, those who consumed 4069 mg of potassium per day had a 49 percent lower risk of death from ischemic <a href="http://www.medicalnewstoday.com/articles/237191.php" title="Heart Disease: Definition, Causes, Research" class="keywords">heart disease</a> compared with those who consumed less potassium (about 1000 mg per day).<sup>3</sup></p><p>High potassium intakes are also associated with a reduced risk of stroke, protection against loss of muscle mass, preservation of bone mineral density and reduction in the formation of <a href="http://www.medicalnewstoday.com/articles/154193.php" title="Kidney Stones: Causes, Symptoms and Treatments" class="keywords">kidney stones</a>.<sup>3</sup></p><p>Diabetes: Studies have shown that type 1 diabetics who consume high-fiber diets have lower blood glucose levels and type 2 diabetics may have improved blood sugar, lipids and <a href="http://www.medicalnewstoday.com/info/diabetes/whatisinsulin.php" title="What is insulin?" class="keywords">insulin</a> levels. One medium banana provides about 3 grams of fiber.</p><p><em>The Dietary Guidelines for Americans</em> recommends 21-25 g/day for women and 30-38 g/day for men.</p><p>Skin: The antioxidant vitamin C, when eaten in its natural form (as in an orange) or applied topically, can help to fight skin damage caused by the sun and pollution, reduce wrinkles and improve overall skin texture. Vitamin C plays a vital role in the formation of <a href="http://www.medicalnewstoday.com/articles/262881.php" title="What is collagen? What does collagen do?" class="keywords">collagen</a>, the support system of your skin</p><h2>How to incorporate more oranges into your diet</h2><p><img src="http://cdn1.medicalnewstoday.com/content/images/articles/272782-orange-heart.jpg" alt="Orange segments" width="418" height="278" style="width: 418px; height: 278px; float: right; margin: 0px 0px 10px 10px;"><br>There are a variety of orange types on offer that can aid in various conditions from heart health to diabetes.</p><p>Oranges should be picked at their peak of ripeness because unlike some other fruits, they do not ripen or improve in quality after being picked. Oranges should be stored at room temperature, away from direct sunlight.</p><p>While it is hard to find good fruits and vegetables in the winter, it is the perfect time to buy citrus. Winter is the peak season for oranges and other citrus fruits.</p><p>There are many different types of oranges available such as navel, mandarin, cara cara, blood oranges, Valencia and Seville oranges just to name a few. Some are very sweet and others have more of a sour taste.</p><p>Tips:</p><ul><li>Keep a bowl on the kitchen table or counter stocked with fresh fruit from the season. Seeing the fruits readily available will likely cause you to choose them as a snack more often rather than raiding the cupboards for a less healthy snack.</li><li>Make a fruit salad with strawberries, pineapple, mandarin oranges and grapes.</li><li>Add some orange slices to your salad at lunch or dinner. Compliment the oranges with walnuts or pecans, a crumbled cheese and a light balsamic or citrus vinaigrette dressing.</li><li>Make your own juice! Nothing tastes better than freshly squeezed orange juice in the morning. When you make your own, you can be sure there are no added preservatives or sweeteners.</li></ul>', '1446899129.jpg', '2015-11-07 13:25:29', 1),
(20, 'Bananas: Health Benefits, Risks and Nutritional Facts', '<p>Bananas are one of the most widely consumed fruits in the world for good reason. The curved yellow fruit packs a big nutritional punch, wrapped in its own convenient packaging. Some scientists believe that the banana may have even been the world''s first fruit.</p><p>Dan Koeppel, author of Banana: The Fate of the Fruit That Changed the World, traces the banana back to the Garden of Eden, where he believes it was the banana, not the apple, that was the "forbidden fruit" that Eve offered Adam.</p><p>Today, bananas are grown in at least 107 countries and are ranked fourth among the world''s food crops in monetary value. Americans consume more bananas than apples and oranges combined.</p><p>With the world consuming so many bananas, its unsurprising that people are asking the question: <strong>are bananas good for you?</strong>. This article will take a look at the potential health benefits of bananas, such as lowering the risks of<a href="http://www.medicalnewstoday.com/info/cancer-oncology/" title="What is Cancer?" class="keywords">cancer</a> and <a href="http://www.medicalnewstoday.com/info/asthma/" title="What is Asthma?" class="keywords">asthma</a>, lowering <a href="http://www.medicalnewstoday.com/articles/270644.php" title="Blood Pressure: What Is Normal? How To Measure Blood Pressure" class="keywords">blood pressure</a>, improving heart health and promoting regularity. It also examines the possible health risks associated with them.</p><h2>Possible health benefits of bananas</h2><p>Blood pressure: Maintaining a low sodium intake is essential to lowering blood pressure, however increasing<a href="http://www.medicalnewstoday.com/articles/287212.php" title="What are the health benefits of potassium?" class="keywords">potassium</a> intake may be just as important because of its vasodilation effects. According to the National Health and Nutrition Examination Survey, fewer than 2% of US adults meet the daily 4700 mg recommendation.<sup>3</sup></p><p>Also of note, a high potassium intake is associated with a 20% decreased risk of dying from all causes.<sup>3</sup></p><p>Asthma: A study conducted by the Imperial College of London found that children who ate just one banana per day had a 34% less chance of developing asthma.</p><p>Cancer: Consuming bananas, oranges and orange juice in the first two years of life may reduce the risk of developing childhood <a href="http://www.medicalnewstoday.com/articles/142595.php" title="Leukemia: Causes, Symptoms and Treatments" class="keywords">leukemia</a>. As a good source of <a href="http://www.medicalnewstoday.com/articles/195878.php" title="What are vitamins? What vitamins do I need?" class="keywords">vitamin</a> C, bananas can help combat the formation of free radicals known to cause cancer. High fiber intakes from fruits and vegetables like bananas are associated with a lowered risk of <a href="http://www.medicalnewstoday.com/articles/155598.php" title="Colorectal Cancer: Causes, Symptoms and Treatments" class="keywords">colorectal cancer</a>.</p><p>Heart health: The fiber, potassium, vitamin C and B6 content in bananas all support heart health. An increase in potassium intake along with a decrease in sodium intake is the most important dietary change that a person can make to reduce their risk of cardiovascular disease, according to Mark Houston, MD, MS, an associate clinical professor of medicine at Vanderbilt Medical School and director of the Hypertension Institute at St Thomas Hospital in Tennessee.<sup>3</sup></p><p>In one study, those who consumed 4069 mg of potassium per day had a 49% lower risk of death from ischemic<a href="http://www.medicalnewstoday.com/articles/237191.php" title="Heart Disease: Definition, Causes, Research" class="keywords">heart disease</a> compared with those who consumed less potassium (about 1000 mg per day).<sup>3</sup></p><p>High potassium intakes are also associated with a reduced risk of <a href="http://www.medicalnewstoday.com/articles/7624.php" title="Stroke: Causes, Symptoms, Diagnosis and Treatment" class="keywords">stroke</a>, protection against loss of muscle mass, preservation of bone mineral density and reduction in the formation of <a href="http://www.medicalnewstoday.com/articles/154193.php" title="Kidney Stones: Causes, Symptoms and Treatments" class="keywords">kidney stones</a>.<sup>3</sup></p><p>Diabetes: Studies have shown that type 1 diabetics who consume high-fiber diets have lower blood glucose levels and type 2 diabetics may have improved blood sugar, lipids and <a href="http://www.medicalnewstoday.com/info/diabetes/whatisinsulin.php" title="What is insulin?" class="keywords">insulin</a> levels. One medium banana provides about 3 grams of fiber.</p><p>The Dietary Guidelines for Americans recommends 21-25 g/day for women and 30-38 g/day for men.</p><p>Treating diarrhea: Bland foods such as apple sauce and bananas are recommended for <a href="http://www.medicalnewstoday.com/articles/158634.php" title="Diarrhea: Causes, Symptoms and Treatments" class="keywords">diarrhea</a> treatment. Electrolytes like potassium are lost in large quantities during bouts of diarrhea and may make those affected feel weak. Bananas can help to promote regularity and replenish potassium stores.</p><p>Preserving memory and boosting mood: Bananas also contain tryptophan, an amino acid that studies suggest plays a role in preserving memory and boosting your mood.</p><h2>Nutritional breakdown of bananas</h2><p>One medium banana (about 126 grams) is considered to be one serving. One serving of banana contains 110<a href="http://www.medicalnewstoday.com/articles/245588.php" title="How Many Calories Should I Eat a Day?" class="keywords">calories</a>, 30 grams of <a href="http://www.medicalnewstoday.com/articles/161547.php" title="What are carbohydrates? What is glucose?" class="keywords">carbohydrate</a> and 1 gram of protein. Bananas are naturally free of fat, <a href="http://www.medicalnewstoday.com/articles/9152.php" title="Cholesterol: Causes, Symptoms and Treatments For High Cholesterol" class="keywords">cholesterol</a> and sodium.<sup>2</sup></p><p><u>Bananas provide a variety of vitamins and minerals:</u></p><ul><li>Vitamin B6 - .5 mg</li><li>Manganese - .3 mg</li><li>Vitamin C - 9 mg</li><li>Potassium - 450 mg</li><li>Dietary Fiber - 3g</li><li>Protein - 1 g</li><li><a href="http://www.medicalnewstoday.com/articles/286839.php" title="What are the health benefits of magnesium?" class="keywords">Magnesium</a> - 34 mg</li><li><a href="http://www.medicalnewstoday.com/articles/287677.php" title="What are the health benefits of folate?" class="keywords">Folate</a> - 25.0 mcg</li><li>Riboflavin - .1 mg</li><li>Niacin - .8 mg</li><li>Vitamin A - 81 IU</li><li>Iron - .3 mg</li></ul><p>The recommended intake of potassium for adults is 4700 milligrams per day.</p>', '1446899246.jpg', '2015-11-07 13:27:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE IF NOT EXISTS `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(5, '481tnbngclOsG9087PeX030bxNl3TWBb', 1446829746, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_email` (`email`),
  UNIQUE KEY `user_unique_username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`) VALUES
(1, 'magdymedhat', 'magdimedhat@gmail.com', '$2y$10$eINIZr408xTwaVEDetWm7OQdvo46xFgysivZX318GUIFKrjMQ8zAe', '226vQ2WKmt1IqcQAH5aNPnPhLzSLHuY9', 1446726919, NULL, NULL, '::1', 1446726891, 1446726891, 0),
(2, 'mmedhat', 'mmedhat@stingrayconsultation.com', '$2y$10$bBxeZzo7EzsfnqPcUrzQEeZH7ezbgaXihcVt8KFAqueotAH4du89u', '6dtRV3dWms9uKbXApnU8RWYADkgqOy1o', 1446768052, NULL, NULL, '::1', 1446767978, 1446767978, 0),
(5, 'yiinews', 'yiinews.crossover@gmail.com', '$2y$10$yYVX8KuFvLmU9dDMv.g43OcNHPJEfq0VbOH7IqIZFibOii97IMHj2', 'cb5Pj5CY_8HZ0J4ZsVMhhD0Xq4o6PxLE', NULL, NULL, NULL, '::1', 1446829672, 1446829672, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_created_by` FOREIGN KEY (`reporter_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
