-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2023 lúc 01:14 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `librariant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(2, '9a20dca1-a19d-473f-a4f8-721999c5685e', 9, '2023-09-13 19:43:50', '2023-09-13 19:43:50'),
(5, '9a20dca1-a19d-473f-a4f8-721999c5685e', 2, '2023-09-13 19:51:46', '2023-09-13 19:51:46'),
(6, '9a20dca1-a19d-473f-a4f8-721999c5685e', 1, '2023-09-22 20:44:58', '2023-09-22 20:44:58'),
(7, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', 3, '2023-09-23 07:30:46', '2023-09-23 07:30:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `genre` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `book_photo` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `isbn`, `book_title`, `author`, `pages`, `publisher`, `publish_date`, `genre`, `quantity`, `language`, `book_photo`, `summary`, `created_at`, `updated_at`) VALUES
(1, '9780553381689', 'A Game of Thrones', 'George R. R. Martin', 704, 'Bantam Books', '2002-05-28', 'Fantasy', 10, 'English', 'book-photos/SjjGJVEMY7SVMIsVrnQaB7gr08ufejvmkCz8daIJ.jpg', 'Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens. Here an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; and a determined woman undertakes the most treacherous of journeys. Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavors to win that deadliest of conflicts: the game of thrones.', '2023-09-13 19:38:54', '2023-10-04 09:21:29'),
(2, '9780857197689', 'The Psychology of Money', 'Morgan Housel', 256, 'Harriman House', '2020-09-08', 'Finance', 1, 'English', 'book-photos/cTCQqMoLHwt335l7tKcrgsO4H1rz5iD2qt0YVi4f.jpg', 'Timeless lessons on wealth, greed, and happiness doing well with money isn’t necessarily about what you know. It’s about how you behave. And behavior is hard to teach, even to really smart people. How to manage money, invest it, and make business decisions are typically considered to involve a lot of mathematical calculations, where data and formulae tell us exactly what to do. But in the real world, people don’t make financial decisions on a spreadsheet. They make them at the dinner table, or in a meeting room, where personal history, your unique view of the world, ego, pride, marketing, and odd incentives are scrambled together. In the psychology of money, the author shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life’s most important matters.', '2023-09-13 19:38:54', '2023-09-24 08:41:46'),
(3, '9781250809711', 'Family Style: Memories of an American from Vietnam', 'Thien Pham', 240, 'First Second', '2023-06-20', 'Comics', 0, 'English', 'book-photos/jHGSxZzjyj5zBxoQSgaHYmOpRFAz7LsDVw0yUTbN.jpg', 'A moving young adult graphic memoir about a Vietnamese immigrant boy\'s search for belonging in America, perfect for fans of American Born Chinese and The Best We Could Do !\r\n\r\n         Thien\'s first memory isn\'t a sight or a sound. It\'s the sweetness of watermelon and the saltiness of fish. It\'s the taste of the foods he ate while adrift at sea as his family fled Vietnam.\r\n         \r\n         After the Pham family arrives at a refugee camp in Thailand, they struggle to survive. Things don\'t get much easier once they resettle in California. And through each chapter of their lives, food takes on a new meaning. Strawberries come to signify struggle as Thien\'s mom and dad look for work. Potato chips are an indulgence that bring Thien so much joy that they become a necessity.\r\n         \r\n         Behind every cut of steak and inside every croissant lies a story. And for Thien Pham, that story is about a search for belonging, for happiness, for the American dream.', '2023-09-13 19:38:54', '2023-10-03 17:34:01'),
(4, '9781627791151', 'Book Scavenger', 'Jennifer Chambliss Bertman', 368, 'Henry Holt and Co.', '2015-06-02', 'Adventure', 0, 'English', 'book-photos/E1nKhV93ZNE1wP7L7ptJYdnI1nu5FEztd1cAGJ9G.jpg', 'For twelve-year-old Emily, the best thing about moving to San Francisco is that it\'s the home city of her literary idol: Garrison Griswold, book publisher and creator of the online sensation Book Scavenger (a game where books are hidden in cities all over the country and clues to find them are revealed through puzzles). Upon her arrival, however, Emily learns that Griswold has been attacked and is now in a coma, and no one knows anything about the epic new game he had been poised to launch. Then Emily and her new friend James discover an odd book, which they come to believe is from Griswold himself, and might contain the only copy of his mysterious new game.', '2023-09-13 19:38:54', '2023-09-24 08:45:01'),
(5, '9781302948542', 'Star Wars: The High Republic - The Blade', 'Charles Soule, Marco Castiello, Jethro Morales', 112, 'Marvel', '2023-06-27', 'Comics', 1, 'English', 'book-photos/yM8l3jOKBv5OTwrgN47N16Uzj4ZqluI6HznwPWD5.jpg', 'The dynamic new Star Wars era of the High Republic continues to expand, focusing on the legendary Jedi Knight Porter Engle\r\n\r\n         Hundreds of years before the Skywalker saga, witness the birth of a Jedi legend: Porter Engle! He is perhaps the most skilled lightsaber wielder in the High Republic. With his sister Barash, he travels the galaxy, serving as a guardian of peace and justice. But even Porter Engle has enemies he cannot defeat…', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(6, '9781590388983', 'Grip of the Shadow Plague', 'Brandon Mull', 464, 'Shadow Mountain', '2008-04-21', 'Fantasy', 0, 'English', 'book-photos/HuueutxY3YFldQhqFKoq0uVvMRCw4cNNN3Bxlno0.jpg', 'Danger lurks everywhere at Fablehaven, where someone has released a plague that transforms beings of light into creatures of darkness. In dire need of help, the Sorensons question where to turn, now that long trusted allies have been revealed as potential foes. Kendra embarks on a special mission that only she can attempt because of her new abilities as fairykind, while Seth stays behind and discovers an incredible new talent of his own. The siblings are put to the test as the threat grows both abroad and home at the Fablehaven preserve, and Brandon Mull spins his richest and most thrilling fantasy tale yet in this third title of the popular fantasy series.', '2023-09-13 19:38:54', '2023-10-03 23:39:50'),
(7, '9781250805140', 'The Talk', 'Darrin Bell', 352, 'Henry Holt and Co.', '2023-06-06', 'Comics', 6, 'English', 'book-photos/aZ7wM4bTxbyga0AO8Y2ZqSg10Lji81NCRnu2u1xc.jpg', 'Darrin Bell was six years old when his mother told him he couldn’t have a realistic water gun. She said she feared for his safety, that police tend to think of little Black boys as older and less innocent than they really are.\r\n\r\n         Through evocative illustrations and sharp humor, Bell examines how The Talk shaped intimate and public moments from childhood to adulthood. While coming of age in Los Angeles—and finding a voice through cartooning—Bell becomes painfully aware of being regarded as dangerous by white teachers, neighbors, and police officers and thus of his mortality. Drawing attention to the brutal murders of African Americans and showcasing revealing insights and cartoons along the way, he brings us up to the moment of reckoning when people took to the streets protesting the murders of George Floyd and Breonna Taylor. And now Bell must decide whether he and his own six-year-old son are ready to have The Talk.', '2023-09-13 19:38:54', '2023-10-03 08:38:44'),
(8, '9780062943514', 'The Diamond Eye', 'Kate Quinn', 435, 'William Morrow', '2022-03-29', 'Historical', 4, 'English', 'book-photos/9TcHlbCL9ABKJaSHeCXD49dk2767XNEckU0h9e6D.jpg', 'The New York Times bestselling author of The Rose Code returns with an unforgettable World War II tale of a quiet bookworm who becomes history\'s deadliest female sniper. Based on a true story.\r\n\r\n         In 1937 in the snowbound city of Kyiv, wry and bookish history student Mila Pavlichenko organizes her life around her library job and her young son--but Hitler\'s invasion of Ukraine and Russia sends her on a different path. Given a rifle and sent to join the fight, Mila must forge herself from studious girl to deadly sniper--a lethal hunter of Nazis known as Lady Death. When news of her three hundredth kill makes her a national heroine, Mila finds herself torn from the bloody battlefields of the eastern front and sent to America on a goodwill tour.\r\n         \r\n         Still reeling from war wounds and devastated by loss, Mila finds herself isolated and lonely in the glittering world of Washington, DC--until an unexpected friendship with First Lady Eleanor Roosevelt and an even more unexpected connection with a silent fellow sniper offer the possibility of happiness. But when an old enemy from Mila\'s past joins forces with a deadly new foe lurking in the shadows, Lady Death finds herself battling her own demons and enemy bullets in the deadliest duel of her life.\r\n         \r\n         Based on a true story, The Diamond Eye is a haunting novel of heroism born of desperation, of a mother who became a soldier, of a woman who found her place in the world and changed the course of history forever.', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(9, '9781779518392', 'Batman - One Bad Day: The Riddler', 'Tom King, Mitch Gerads', 88, 'Dc Comics', '2023-06-20', 'Comics', 1, 'English', 'book-photos/BtU7kINKhzGgPXcWqVVCEi6cxPGgQhiROVQyX0uQ.jpg', 'The Most Dangerous Game of Wits Batman and Riddler have ever played...\r\n         The Riddler is one of Batman\'s most intellectual villains and the one who lays out his clues the most deliberately. The Riddler is always playing a game, there are always rules. But what happens when The Riddler kills someone in broad daylight for seemingly no reason? No game to play. No cypher to breakdown. Batman will reach his wit\'s end trying to figure out the Riddler\'s true motivation in this incredible thriller!', '2023-09-13 19:38:54', '2023-10-04 09:21:45'),
(10, '9781410423962', 'Under the Dome', 'Stephen King', 1417, 'Thorndike Press', '2013-06-24', 'Thriller', 2, 'English', 'book-photos/HTO81Ch3Scn8TSQF8BZ4lXj13M94vWKW2WVWumUq.jpg', 'On a beautiful fall day in Chester\'s mIll, Maine, the town is inexplicably and suddenly sealed off from the rest of the world by an invisible force field. No one can fathom what this barrier is and when--or if--it will go away. Dale Barbara, Iraq vet and now a short-order cook, finds himself teamed with a few intrepid citizens. Agains them stands Big Jim Rennie, a politician who will stop at nothing--even murder--to hold the reins of power, and his sone, who is keeping a horrible secret in a dark pantry. But their main adversary is the Dome itself.', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(11, '9788374801171', 'Koralina', 'Neil Gaiman', 181, 'Wydawnictwo MAG', '2009-02-06', 'Fantasy', 2, 'English', 'book-photos/4U2cKNjAdXLR5WUd8O1BnGfvOPtnvSD5rzyOT9t0.jpg', 'When Coraline steps through a door to find another house strangely similar to her own (only better), things seem marvelous. But there\'s another mother there, and another father, and they want her to stay and be their little girl. They want to change her and never let her go. Coraline will have to fight with all her wit and courage if she is to save herself and return to her ordinary life.', '2023-09-13 19:38:54', '2023-10-03 08:35:48'),
(12, '9781984896438', 'Good Girl, Bad Blood', 'Holly Jackson', 416, 'Ember', '2022-03-01', 'Mystery', 1, 'English', 'book-photos/Nk5vJ01xeOrRVhLc5P7ObXJt3hgzTf8lWE3DxKfx.jpg', 'More dark secrets are exposed in this addictive, true-crime fueled sequel when Pip finds herself in another deadly case. Pip is not a detective anymore. With the help of Ravi Singh, she released a true-crime podcast about the murder case they solved together last year. The podcast has gone viral, yet Pip insists her investigating days are behind her. But she will have to break that promise when someone she knows goes missing. Jamie Reynolds has disappeared, on the very same night the town hosted a memorial for the sixth-year anniversary of the deaths of Andie Bell and Sal Singh. The police won\'t do anything about it. And if they won\'t look for Jamie then Pip will, uncovering more of her town\'s dark secrets along the way... and this time everyone is listening. But will she find him before it\'s too late?', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(13, '9780578643427', 'You\'re Too Good to Feel This Bad', 'Nate Dallas', 256, 'Dallas Brother LLC', '2020-02-24', 'Psychology', 2, 'English', 'book-photos/IWFkNotK219c0qjug4yCrWcXGlR0tJ3rNyqdkHqV.jpg', 'Are you feeling overwhelmed, stressed, or anxious? You\'re likely not broken, just a little too normal. The problem isn\'t your DNA. The problem is culture, and without a definitive strategy to combat social norms, you end up in the “mediocre middle” with everyone else: exhausted, stressed, and unfulfilled. Headaches, stomach trouble, anxiety, and insomnia are all par for the course. It\'s typical to be burdened, frustrated, and easily triggered today. Feeling trapped in finances, work, or relationships isn’t remarkable, either. Most folks have lost a sense of peace, playfulness, and any semblance of order and simplicity. But the middle is no place for someone of your caliber. You\'re Too Good to Feel This Bad, and you know it. In this book, Dr. Nate Dallas shares his eye-opening, personal experiment to escape a cultural epidemic. In his unabashed, down-to-earth style, he presents an entertaining and enlightening journey, challenging capable over-achievers alike. Combining potent insights from multiple disciplines, he distills complex processes into practical, achievable steps designed to elevate your life to an all-time high. ', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(14, '9781478923732', 'The Cruel Prince', 'Holly Black and Caitlin Kelly', 750, 'Little, Brown Young Readers', '2018-01-02', 'Fantasy', 1, 'English', 'book-photos/4xVFus7dNr2HDb1EOsOqAhN5YhuT5Y0LpPH28hZ3.jpg', 'Jude was seven years old when her parents were murdered and she and her two sisters were stolen away to live in the treacherous High Court of Faerie. Ten years later, Jude wants nothing more than to belong there, despite her mortality. But many of the fey despise humans. Especially Prince Cardan, the youngest and wickedest son of the High King. To win a place at the Court, she must defy him, and face the consequences. ', '2023-09-13 19:38:55', '2023-09-13 19:38:55'),
(15, '9780765318411', 'Boneshaker', 'Cherie Priest', 416, 'Tor Books', '2009-09-29', 'Fantasy', 3, 'English', 'book-photos/ZNEWBMTdBCoPQedi4y8WLWcU4lKybfLBbZ1brNcP.jpg', 'In the early days of the Civil War, rumors of gold in the frozen Klondike brought hordes of newcomers to the Pacific Northwest. Anxious to compete, Russian prospectors commissioned inventor Leviticus Blue to create a great machine that could mine through Alaska’s ice. Thus was Dr. Blue’s Incredible Bone-Shaking Drill Engine born.\r\n\r\n         But on its first test run the Boneshaker went terribly awry, destroying several blocks of downtown Seattle and unearthing a subterranean vein of blight gas that turned anyone who breathed it into the living dead.\r\n         \r\n         Now it is sixteen years later, and a wall has been built to enclose the devastated and toxic city. Just beyond it lives Blue’s widow, Briar Wilkes. Life is hard with a ruined reputation and a teenaged boy to support, but she and Ezekiel are managing. Until Ezekiel undertakes a secret crusade to rewrite history.\r\n         \r\n         His quest will take him under the wall and into a city teeming with ravenous undead, air pirates, criminal overlords, and heavily armed refugees. And only Briar can bring him out alive.', '2023-09-13 19:38:55', '2023-10-03 08:32:46'),
(16, '9780316081054', 'Feed', 'Mira Grant', 599, 'Orbit', '2010-05-01', 'Horror', 5, 'English', 'book-photos/vKCgNX3DmhGlh7W3Vvoqr3JX4GKSmB8zxoukS82G.jpg', 'The year was 2014. We had cured cancer. We had beaten the common cold. But in doing so we created something new, something terrible that no one could stop.\r\n\r\n         The infection spread, virus blocks taking over bodies and minds with one, unstoppable command: FEED. Now, twenty years after the Rising, bloggers Georgia and Shaun Mason are on the trail of the biggest story of their lives—the dark conspiracy behind the infected.\r\n         \r\n         The truth will get out, even if it kills them.', '2023-09-13 19:38:55', '2023-09-13 19:38:55'),
(17, '9780385534260', 'The Wager: A Tale of Shipwreck, Mutiny and Murder', 'David Grann', 352, 'Doubleday', '2023-04-18', 'Adventure', 6, 'English', 'book-photos/nJYjdaVehanZk4ySemFhiuGvzY95wHBN8AY94SBa.jpg', 'From the #1 New York Times bestselling author of Killers of the Flower Moon, a page-turning story of shipwreck, survival, and savagery, culminating in a court martial that reveals a shocking truth. The powerful narrative reveals the deeper meaning of the events on The Wager, showing that it was not only the captain and crew who ended up on trial, but the very idea of empire.\r\n\r\n         On January 28, 1742, a ramshackle vessel of patched-together wood and cloth washed up on the coast of Brazil. Inside were thirty emaciated men, barely alive, and they had an extraordinary tale to tell. They were survivors of His Majesty\'s Ship the Wager, a British vessel that had left England in 1740 on a secret mission during an imperial war with Spain. While the Wager had been chasing a Spanish treasure-filled galleon known as \'the prize of all the oceans,\' it had wrecked on a desolate island off the coast of Patagonia. The men, after being marooned for months and facing starvation, built the flimsy craft and sailed for more than a hundred days, traversing nearly 3,000 miles of storm-wracked seas. They were greeted as heroes.\r\n         \r\n         But then ... six months later, another, even more decrepit craft landed on the coast of Chile. This boat contained just three castaways, and they told a very different story. The thirty sailors who landed in Brazil were not heroes - they were mutineers. The first group responded with countercharges of their own, of a tyrannical and murderous senior officer and his henchmen. It became clear that while stranded on the island the crew had fallen into anarchy, with warring factions fighting for dominion over the barren wilderness. As accusations of treachery and murder flew, the Admiralty convened a court martial to determine who was telling the truth. The stakes were life-and-death--for whomever the court found guilty could hang.\r\n         \r\n         The Wager is a grand tale of human behavior at the extremes told by one of our greatest nonfiction writers. Grann\'s recreation of the hidden world on a British warship rivals the work of Patrick O\'Brian, his portrayal of the castaways\' desperate straits stands up to the classics of survival writing such as The Endurance, and his account of the court martial has the savvy of a Scott Turow thriller. As always with Grann\'s work, the incredible twists of the narrative hold the reader spellbound.', '2023-09-13 19:38:55', '2023-09-13 19:38:55'),
(18, '9781410467850', 'Insurgent', 'Veronica Roth', 556, 'Thorndike Press', '2012-05-01', 'Science Fiction', 2, 'English', 'book-photos/ZRCaU9bas5n6Hg38jO2xNJLCZonrV5ng4gISePLI.jpg', 'One choice can transform you or it can destroy you. But every choice has consequences, and as unrest surges in the factions all around her, Tris Prior must continue trying to save those she loves--and herself--while grappling with haunting questions of grief and forgiveness, identity and loyalty, politics and love. Tris\'s initiation day should have been marked by celebration and victory with her chosen faction; instead, the day ended with unspeakable horrors. War now looms as conflict between the factions and their ideologies grows. And in times of war, sides must be chosen, secrets will emerge, and choices will become even more irrevocable--and even more powerful. Transformed by her own decisions but also by haunting grief and guilt, radical new discoveries, and shifting relationships, Tris must fully embrace her Divergence, even if she does not know what she may lose by doing so. \'New York Times\' bestselling author Veronica Roth\'s much-anticipated second book of the dystopian \'Divergent\' series is another intoxicating thrill ride of a story, rich with hallmark twists, heartbreaks, romance, and powerful insights about human nature.', '2023-09-13 19:38:55', '2023-09-13 19:38:55'),
(19, '9781982198107', 'Little Monsters', 'Adrienne Brodeur', 320, 'Avid Reader Press / Simon & Schuster', '2023-06-27', 'Psychology', 2, 'English', 'book-photos/Gbg0hiOb0ZTJSRc3sNu8Wi6GATiC3Z40suoT4Ukb.jpg', 'Ken and Abby Gardner lost their mother when they were small and they have been haunted by her absence ever since. Their father, Adam, a brilliant oceanographer, raised them mostly on his own in his remote home on Cape Cod, where the attachment between Ken and Abby deepened into something complicated—and as adults their relationship is strained. Now, years later, the siblings’ lives are still deeply entwined. Ken is a successful businessman with political ambitions and a picture-perfect family and Abby is a talented visual artist who depends on her brother’s goodwill, in part because he owns the studio where she lives and works.\r\n\r\n         As the novel opens, Adam is approaching his seventieth birthday, staring down his mortality and fading relevance. He has always managed his bipolar disorder with medication, but he’s determined to make one last scientific breakthrough and so he has secretly stopped taking his pills, which he knows will infuriate his children. Meanwhile, Abby and Ken are both harboring secrets of their own, and there is a new person on the periphery of the family—Steph, who doesn’t make her connection known. As Adam grows more attuned to the frequencies of the deep sea and less so to the people around him, Ken and Abby each plan the elaborate gifts they will present to their father on his birthday, jostling for primacy in this small family unit.\r\n         \r\n         Set in the fraught summer of 2016, and drawing on the biblical tale of Cain and Abel, Little Monsters is an absorbing, sharply observed family story by a writer who knows Cape Cod inside and out—its Edenic lushness and its snakes.', '2023-09-13 19:38:55', '2023-09-13 19:38:55'),
(20, '9780593543764', 'My Murder', 'Katie Williams', 304, 'Riverhead Books', '2023-06-23', 'Thriller', 4, 'English', 'book-photos/C7ASPckeLh2ANzDbdVYGGwk7Jns0FeTpF9Q96pd8.jpg', 'Lou is a happily married mother of an adorable toddler. She\'s also the victim of a local serial killer. Recently brought back to life and returned to her grieving family by a government project, she is grateful for this second chance. But as the new Lou re-adapts to her old routines, and as she bonds with other female victims, she realizes that disturbing questions remain about what exactly preceded her death and how much she can really trust those around her.\r\n\r\n         Now it\'s not enough to care for her child, love her husband, and work the job she\'s always enjoyed--she must also figure out the circumstances of her death. Darkly comic, tautly paced, and full of surprises, My Murder is a devour-in-one-sitting, clever twist on the classic thriller.', '2023-09-13 19:38:55', '2023-09-13 19:38:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `review_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, '9a20dca1-a19d-473f-a4f8-721999c5685e', 1, 'tuyệt vời\n\n', '2023-09-13 19:44:50', '2023-09-13 19:44:50'),
(2, '9a20dca1-a19d-473f-a4f8-721999c5685e', 2, 'địt con me hay valol\n', '2023-09-13 19:52:01', '2023-09-13 19:52:01'),
(3, '9a20db91-3d0d-4dd5-88a4-73b1f5140914', 4, 'hay quá\n', '2023-10-03 17:37:57', '2023-10-03 17:37:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `subject`, `name`, `message`, `created_at`, `updated_at`, `status`) VALUES
(5, 'zedhasagi113@gmail.com', 'dsa', 'Huỳnh Văn Đức', 'dsadas', '2023-10-01 18:35:52', '2023-10-01 18:35:52', 0),
(6, 'zedhasagi113@gmail.com', 'dsa', 'Huỳnh Văn Đức', 'dsadas', '2023-10-01 18:36:39', '2023-10-01 18:36:39', 1),
(7, 'zedhasagi113@gmail.com', 'he lú', 'Huynh Van Duc', 'sản phẩm của bạn tuyệt vời ông mặt trời', '2023-10-01 19:09:15', '2023-10-01 19:09:15', 0),
(8, 'zedhasagi113@gmail.com', 'địt coan,eoe', 'Huynh Van Duc', 'chạy ngay đi cu e', '2023-10-03 08:30:45', '2023-10-03 08:30:45', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'What are the library opening hours?', 'Our library operates from 9:00 a.m. to 6:00 p.m. from monday to saturday. Please note that hours may vary on public holidays or special occasions.', '2023-09-13 19:38:53', '2023-09-13 19:38:53'),
(2, 'How many books can I borrow at a time?', 'As a member, you can borrow 8 books at a time.', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(3, 'How long can I keep borrowed books?', 'The standard loan period for books is 2 weeks, but you may be able to renew books if there are no holds or requests from other members.', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(4, 'How can I renew my borrowed books?', 'You can renew your borrowed books 10 days after the loan date by logging into your library account on our website and selecting the option to renew the books. Alternatively, you can call our library\'s circulation desk or visit in person to renew books.', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(5, 'What happens if I don\'t return the book by the due date?', 'If you don\'t return the books by the due date, you can\'t borrow any books until you return the late one.', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(6, 'Can I reserve or place a hold on a book?', 'Yes, you can place a hold on a book that is currently checked out by another member. This can be done through our online catalog, by phone, or by visiting the library in person. You will be notified when the item becomes available.', '2023-09-13 19:38:54', '2023-09-13 19:38:54'),
(7, 'Tối nay bạn có rảnh không mình cùng ngồi coffer', 'có cái lol địt con bà m', '2023-09-13 19:47:38', '2023-09-13 19:47:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `review_id`, `created_at`, `updated_at`) VALUES
(1, '9a20dca1-a19d-473f-a4f8-721999c5685e', 1, '2023-09-13 19:44:53', '2023-09-13 19:44:53'),
(2, '9a20dca1-a19d-473f-a4f8-721999c5685e', 2, '2023-09-13 19:52:03', '2023-09-13 19:52:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loan_details`
--

CREATE TABLE `loan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_header_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `due_date` datetime NOT NULL,
  `returned_date` datetime DEFAULT NULL,
  `is_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loan_details`
--

INSERT INTO `loan_details` (`id`, `loan_header_id`, `book_id`, `status_id`, `due_date`, `returned_date`, `is_notified`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2023-09-28 02:42:17', '2023-09-14 02:42:23', 1, '2023-09-13 19:42:17', '2023-09-24 23:44:09'),
(2, 2, 1, 1, '2023-10-02 00:00:00', '2023-09-27 06:53:53', 1, '2023-09-13 19:42:45', '2023-10-03 08:32:38'),
(3, 3, 9, 3, '2023-10-03 00:00:00', '2023-09-26 15:07:45', 1, '2023-09-13 19:43:53', '2023-09-26 08:10:32'),
(4, 4, 2, 3, '2023-10-03 00:00:00', '2023-10-01 15:14:01', 1, '2023-09-13 19:51:14', '2023-10-03 08:28:59'),
(5, 5, 3, 1, '2023-10-07 14:31:01', '2023-09-24 08:25:11', 1, '2023-09-23 07:31:01', '2023-10-03 17:32:47'),
(6, 6, 2, 1, '2023-10-07 14:56:12', '2023-09-24 08:03:03', 1, '2023-09-23 07:56:12', '2023-10-03 17:32:47'),
(7, 7, 4, 0, '2023-10-08 15:45:01', NULL, 0, '2023-09-24 08:45:01', '2023-09-24 08:45:01'),
(8, 8, 3, 0, '2023-10-11 08:33:41', NULL, 0, '2023-09-27 01:33:41', '2023-09-27 01:33:41'),
(9, 9, 11, 1, '2023-10-11 08:34:40', '2023-10-03 15:31:18', 0, '2023-09-27 01:34:40', '2023-10-03 08:32:42'),
(10, 10, 15, 1, '2023-10-12 01:57:20', '2023-10-03 15:31:24', 0, '2023-09-27 18:57:20', '2023-10-03 08:32:46'),
(11, 11, 3, 1, '2023-10-17 15:19:26', '2023-10-03 15:31:29', 0, '2023-10-03 08:19:26', '2023-10-03 08:32:50'),
(12, 12, 3, 3, '2023-10-19 00:00:00', NULL, 0, '2023-10-03 08:35:29', '2023-10-03 23:41:23'),
(13, 13, 11, 0, '2023-10-17 15:35:48', NULL, 0, '2023-10-03 08:35:48', '2023-10-03 08:35:48'),
(14, 14, 7, 3, '2023-10-19 00:00:00', NULL, 0, '2023-10-03 08:38:44', '2023-10-03 23:41:54'),
(15, 15, 3, 2, '2023-10-18 00:34:01', '2023-10-04 06:40:34', 0, '2023-10-03 17:34:01', '2023-10-03 23:40:34'),
(16, 16, 6, 0, '2023-10-18 06:39:50', NULL, 0, '2023-10-03 23:39:50', '2023-10-03 23:39:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loan_headers`
--

CREATE TABLE `loan_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `loan_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loan_headers`
--

INSERT INTO `loan_headers` (`id`, `user_id`, `loan_date`, `created_at`, `updated_at`) VALUES
(1, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-09-14 02:42:17', '2023-09-13 19:42:17', '2023-09-13 19:42:17'),
(2, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-09-14 02:42:45', '2023-09-13 19:42:45', '2023-09-13 19:42:45'),
(3, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-09-14 02:43:53', '2023-09-13 19:43:53', '2023-09-13 19:43:53'),
(4, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-09-14 02:51:14', '2023-09-13 19:51:14', '2023-09-13 19:51:14'),
(5, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '2023-09-23 14:31:01', '2023-09-23 07:31:01', '2023-09-23 07:31:01'),
(6, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '2023-09-23 14:56:12', '2023-09-23 07:56:12', '2023-09-23 07:56:12'),
(7, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '2023-09-24 15:45:01', '2023-09-24 08:45:01', '2023-09-24 08:45:01'),
(8, '9a3b8106-44e2-441e-92d4-e58b16be9893', '2023-09-27 08:33:41', '2023-09-27 01:33:41', '2023-09-27 01:33:41'),
(9, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-09-27 08:34:40', '2023-09-27 01:34:40', '2023-09-27 01:34:40'),
(10, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-09-28 01:57:20', '2023-09-27 18:57:20', '2023-09-27 18:57:20'),
(11, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-10-03 15:19:26', '2023-10-03 08:19:26', '2023-10-03 08:19:26'),
(12, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '2023-10-03 15:35:29', '2023-10-03 08:35:29', '2023-10-03 08:35:29'),
(13, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '2023-10-03 15:35:48', '2023-10-03 08:35:48', '2023-10-03 08:35:48'),
(14, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-10-03 15:38:44', '2023-10-03 08:38:44', '2023-10-03 08:38:44'),
(15, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-10-04 00:34:01', '2023-10-03 17:34:01', '2023-10-03 17:34:01'),
(16, '9a20dca1-a19d-473f-a4f8-721999c5685e', '2023-10-04 06:39:50', '2023-10-03 23:39:50', '2023-10-03 23:39:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_05_21_050226_create_roles_table', 1),
(5, '2023_05_25_135003_create_books_table', 1),
(6, '2023_06_20_063730_create_loan_headers_table', 1),
(7, '2023_06_20_070928_create_loan_details_table', 1),
(8, '2023_06_20_071235_create_statuses_table', 1),
(9, '2023_06_20_101117_create_bookmarks_table', 1),
(10, '2023_06_28_042140_create_queues_table', 1),
(11, '2023_07_07_062831_create_faqs_table', 1),
(12, '2023_07_09_051412_create_renewals_table', 1),
(13, '2023_07_29_112440_create_reviews_table', 1),
(14, '2023_07_31_142831_create_comments_table', 1),
(15, '2023_08_01_113121_create_likes_table', 1),
(16, '2023_08_04_142320_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `content` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `content`, `read_at`, `created_at`, `updated_at`) VALUES
(1, '9a20dca1-a19d-473f-a4f8-721999c5685e', '✅ Your \"The Psychology of Money\" returned book has been successfully verified.', NULL, '2023-09-13 19:50:47', '2023-09-13 19:50:47'),
(3, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '✅ Your \"The Psychology of Money\" returned book has been successfully verified.', NULL, '2023-09-24 08:41:46', '2023-09-24 08:41:46'),
(4, '9a20dca1-a19d-473f-a4f8-721999c5685e', '📚 Friendly Reminder: The book \"The Psychology of Money\" you borrowed is due in 3 days! Please return it by September 28, 2023, to avoid any late fees. Happy reading!', NULL, '2023-09-24 23:44:09', '2023-09-24 23:44:09'),
(5, '9a20dca1-a19d-473f-a4f8-721999c5685e', '📚 Friendly Reminder: The book \"A Game of Thrones\" you borrowed is due in 3 days! Please return it by September 28, 2023, to avoid any late fees. Happy reading!', NULL, '2023-09-24 23:44:09', '2023-09-24 23:44:09'),
(6, '9a20dca1-a19d-473f-a4f8-721999c5685e', '📚 Friendly Reminder: The book \"Batman - One Bad Day: The Riddler\" you borrowed is due in 3 days! Please return it by September 28, 2023, to avoid any late fees. Happy reading!', NULL, '2023-09-24 23:44:09', '2023-09-24 23:44:09'),
(7, '9a20dca1-a19d-473f-a4f8-721999c5685e', '📚 Friendly Reminder: The book \"The Psychology of Money\" you borrowed is due in 3 days! Please return it by September 28, 2023, to avoid any late fees. Happy reading!', NULL, '2023-09-24 23:44:09', '2023-09-24 23:44:09'),
(8, '9a20dca1-a19d-473f-a4f8-721999c5685e', '🎉 Your renewal request for the book \"Batman - One Bad Day: The Riddler\" has been verified.', NULL, '2023-09-26 08:10:32', '2023-09-26 08:10:32'),
(9, '9a20dca1-a19d-473f-a4f8-721999c5685e', '🎉 Your renewal request for the book \"A Game of Thrones\" has been verified.', NULL, '2023-09-26 08:10:38', '2023-09-26 08:10:38'),
(10, '9a20dca1-a19d-473f-a4f8-721999c5685e', '🎉 Your renewal request for the book \"The Psychology of Money\" has been verified.', NULL, '2023-10-01 09:36:38', '2023-10-01 09:36:38'),
(11, '9a20dca1-a19d-473f-a4f8-721999c5685e', '🎉 Your renewal request for the book \"The Psychology of Money\" has been verified.', NULL, '2023-10-03 08:28:59', '2023-10-03 08:28:59'),
(12, '9a20dca1-a19d-473f-a4f8-721999c5685e', '✅ Your \"A Game of Thrones\" returned book has been successfully verified.', NULL, '2023-10-03 08:32:38', '2023-10-03 08:32:38'),
(13, '9a20dca1-a19d-473f-a4f8-721999c5685e', '✅ Your \"Koralina\" returned book has been successfully verified.', NULL, '2023-10-03 08:32:42', '2023-10-03 08:32:42'),
(14, '9a20dca1-a19d-473f-a4f8-721999c5685e', '✅ Your \"Boneshaker\" returned book has been successfully verified.', NULL, '2023-10-03 08:32:46', '2023-10-03 08:32:46'),
(15, '9a20dca1-a19d-473f-a4f8-721999c5685e', '✅ Your \"Family Style: Memories of an American from Vietnam\" returned book has been successfully verified.', NULL, '2023-10-03 08:32:50', '2023-10-03 08:32:50'),
(16, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '📚 Friendly Reminder: The book \"Family Style: Memories of an American from Vietnam\" you borrowed is due in 3 days! Please return it by October 07, 2023, to avoid any late fees. Happy reading!', NULL, '2023-10-03 17:32:47', '2023-10-03 17:32:47'),
(17, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '📚 Friendly Reminder: The book \"The Psychology of Money\" you borrowed is due in 3 days! Please return it by October 07, 2023, to avoid any late fees. Happy reading!', NULL, '2023-10-03 17:32:47', '2023-10-03 17:32:47'),
(18, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '🎉 Your renewal request for the book \"Family Style: Memories of an American from Vietnam\" has been verified.', NULL, '2023-10-03 23:41:13', '2023-10-03 23:41:13'),
(19, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', '🎉 Your renewal request for the book \"Family Style: Memories of an American from Vietnam\" has been verified.', NULL, '2023-10-03 23:41:23', '2023-10-03 23:41:23'),
(20, '9a20dca1-a19d-473f-a4f8-721999c5685e', '🎉 Your renewal request for the book \"The Talk\" has been verified.', NULL, '2023-10-03 23:41:54', '2023-10-03 23:41:54'),
(21, '9a20dca1-a19d-473f-a4f8-721999c5685e', '🎉 Your renewal request for the book \"The Talk\" has been verified.', NULL, '2023-10-03 23:42:03', '2023-10-03 23:42:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('liem123@gmail.com', '$2y$10$d7rJQS47BMLcJcbfGxTq.eUkmrzaMIrV0TU1ty90FmINWUQTiRqpy', '2023-10-03 09:22:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `queues`
--

CREATE TABLE `queues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `queues`
--

INSERT INTO `queues` (`id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(2, '9a20db91-3d0d-4dd5-88a4-73b1f5140914', 3, '2023-10-03 17:36:47', '2023-10-03 17:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `renewals`
--

CREATE TABLE `renewals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `loan_detail_id` bigint(20) UNSIGNED NOT NULL,
  `renewal_date` datetime NOT NULL,
  `renewed_due_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `renewals`
--

INSERT INTO `renewals` (`id`, `user_id`, `loan_detail_id`, `renewal_date`, `renewed_due_date`, `created_at`, `updated_at`) VALUES
(6, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', 7, '2023-10-03 15:38:06', '2023-10-10 00:00:00', '2023-10-03 08:38:06', '2023-10-03 08:38:06'),
(10, '9a20dca1-a19d-473f-a4f8-721999c5685e', 16, '2023-10-04 06:40:07', '2023-10-19 00:00:00', '2023-10-03 23:40:07', '2023-10-03 23:40:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `book_id`, `rating`, `review`, `like_count`, `created_at`, `updated_at`) VALUES
(1, '9a20dca1-a19d-473f-a4f8-721999c5685e', 9, 5, 'sách hay ', 1, '2023-09-13 19:43:27', '2023-09-13 19:44:53'),
(2, '9a20dca1-a19d-473f-a4f8-721999c5685e', 2, 5, 'sách quá hay', 1, '2023-09-13 19:51:31', '2023-09-13 19:52:03'),
(3, '9a20dca1-a19d-473f-a4f8-721999c5685e', 1, 5, 'địt mẹ fen ngáo vl', 0, '2023-09-22 20:45:01', '2023-09-22 20:45:01'),
(4, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', 3, 4, 'sách hay\n', 0, '2023-09-23 07:30:54', '2023-10-03 08:35:36'),
(5, '9a33f4db-2a6a-4bcd-8018-f7a769fab965', 11, 5, '', 0, '2023-10-03 08:35:54', '2023-10-03 08:35:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(0, 'user', '2023-09-13 19:38:53', '2023-09-13 19:38:53'),
(1, 'librarian', '2023-09-13 19:38:53', '2023-09-13 19:38:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(0, 'Loaned', '2023-09-13 19:38:53', '2023-09-13 19:38:53'),
(1, 'Returned', '2023-09-13 19:38:53', '2023-09-13 19:38:53'),
(2, 'Return Pending', '2023-09-13 19:38:53', '2023-09-13 19:38:53'),
(3, 'Renewed', '2023-09-13 19:38:53', '2023-09-13 19:38:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `books_borrowed` int(11) NOT NULL DEFAULT 0,
  `penalty` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `full_name`, `username`, `gender`, `date_of_birth`, `phone_number`, `address`, `email`, `books_borrowed`, `penalty`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('9a20db90-ffab-45af-83ca-9f90a798e96c', 1, 'Librariant', 'librarianttt', 'Male', '2003-01-23', '000000000000', 'Library Center', 'librariant@gmail.com', 0, 0, NULL, '$2y$10$FbC2pCTz/vq9oODgc7TCgeeY310UowOqUArEBGwubRtc4ZhhUzzaW', NULL, '2023-09-13 19:38:53', '2023-09-13 19:38:53'),
('9a20db91-3d0d-4dd5-88a4-73b1f5140914', 0, 'User', 'userrr', 'Male', '2002-02-02', '111111111111', 'User Street No.2B', 'user@gmail.com', 0, 0, NULL, '$2y$10$rej/7jujjoEexfVD7pdGJe/67AO8/.ZnmOtVL4na0sFQcxYyoYbjO', NULL, '2023-09-13 19:38:53', '2023-09-13 19:38:53'),
('9a20dca1-a19d-473f-a4f8-721999c5685e', 0, 'Huynh Van Duc', 'vanduc123', 'Female', '2023-09-17', '079566372222', 'Đà Nẵng', 'zedhasagi113@gmail.com', 10, 0, NULL, '$2y$10$ngK1EGFF5nnczhMANMKj6.Md/n0PcxGb04pOroBj.4aO/Pd9XlZWG', 'VgaCtDWzsMhNyZro1N6gtaV5F2ddt1U3oTFre6laedjUju40KhAKif0l7dYs', '2023-09-13 19:41:52', '2023-10-03 23:39:50'),
('9a33f4db-2a6a-4bcd-8018-f7a769fab965', 0, 'Ngô Sĩ Liêm', 'Liem', 'Male', '2023-09-22', '083939393992', 'Đà Nẵng', 'liem123@gmail.com', 5, 0, NULL, '$2y$10$fc0LE.y5ni0EhrN9uKEdcOQ5kvvbZS9jbnfRPxebA5D9Np6zIjzZK', NULL, '2023-09-23 07:30:20', '2023-10-03 08:35:48'),
('9a36106d-b3bf-4f12-82f2-a2ef90067323', 0, 'duc', 'vanduc', 'Male', '2023-09-21', '083939393991', 'Đà Nẵng', 'huynhvanduc04062003@gmail.com', 0, 0, NULL, '$2y$10$vJE.jtgfMFfABHUMWTIf1OzwJZgQdViNvXtYXJzKjZ/myzS0c9xsq', NULL, '2023-09-24 08:39:05', '2023-09-24 08:39:05'),
('9a3b8106-44e2-441e-92d4-e58b16be9893', 0, 'duc', 'duc', 'Male', '2023-09-14', '123456789012', 'Đà Nẵng', '123@gmail.com', 1, 0, NULL, '$2y$10$6lijKyB3//uTHDxd4fw06OUkFxcFFzaVhynHZZRjSmOw7fjJ1LjBO', NULL, '2023-09-27 01:33:04', '2023-09-27 01:33:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `bookmarks_book_id_foreign` (`book_id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_review_id_foreign` (`review_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_review_id_foreign` (`review_id`);

--
-- Chỉ mục cho bảng `loan_details`
--
ALTER TABLE `loan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_details_loan_header_id_foreign` (`loan_header_id`),
  ADD KEY `loan_details_book_id_foreign` (`book_id`);

--
-- Chỉ mục cho bảng `loan_headers`
--
ALTER TABLE `loan_headers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_headers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queues_user_id_foreign` (`user_id`),
  ADD KEY `queues_book_id_foreign` (`book_id`);

--
-- Chỉ mục cho bảng `renewals`
--
ALTER TABLE `renewals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `renewals_user_id_foreign` (`user_id`),
  ADD KEY `renewals_loan_detail_id_foreign` (`loan_detail_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_book_id_foreign` (`book_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loan_details`
--
ALTER TABLE `loan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `loan_headers`
--
ALTER TABLE `loan_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `queues`
--
ALTER TABLE `queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `renewals`
--
ALTER TABLE `renewals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `loan_details`
--
ALTER TABLE `loan_details`
  ADD CONSTRAINT `loan_details_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `loan_details_loan_header_id_foreign` FOREIGN KEY (`loan_header_id`) REFERENCES `loan_headers` (`id`);

--
-- Các ràng buộc cho bảng `loan_headers`
--
ALTER TABLE `loan_headers`
  ADD CONSTRAINT `loan_headers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `queues`
--
ALTER TABLE `queues`
  ADD CONSTRAINT `queues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `queues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `renewals`
--
ALTER TABLE `renewals`
  ADD CONSTRAINT `renewals_loan_detail_id_foreign` FOREIGN KEY (`loan_detail_id`) REFERENCES `loan_details` (`id`),
  ADD CONSTRAINT `renewals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
