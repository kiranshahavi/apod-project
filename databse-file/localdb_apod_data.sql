-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: localdb
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apod_data`
--

DROP TABLE IF EXISTS `apod_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apod_data` (
  `apod_data_id` varchar(255) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `imagename` varchar(255) DEFAULT NULL,
  `description` longtext,
  `apod_date` date DEFAULT NULL,
  PRIMARY KEY (`apod_data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apod_data`
--

LOCK TABLES `apod_data` WRITE;
/*!40000 ALTER TABLE `apod_data` DISABLE KEYS */;
INSERT INTO `apod_data` VALUES ('3cf5c435-6f98-4b9c-a140-464646cd051a','Jeff DaiTWAN','DuelingBands_Dai_960.jpg','What are these two bands in the sky? The more commonly seen band is the one on the right and is the central band of our Milky Way galaxy. Our Sun orbits in the disk of this spiral galaxy, so that from inside, this disk appears as a band of comparable brightness all the way around the sky. The Milky Way band can also be seen all year -- if out away from city lights.  The less commonly seem band, on the left, is zodiacal light -- sunlight reflected from dust orbiting the Sun in our Solar System.  Zodiacal light is brightest near the Sun and so is best seen just before sunrise or just after sunset.  On some evenings in the north, particularly during the months of March and April, this ribbon of zodiacal light can appear quite prominent after sunset.  It was determined only this century that zodiacal dust was mostly expelled by comets that have passed near Jupiter.  Only on certain times of the year will the two bands be seen side by side, in parts of the sky, like this.  The featured image, including the Andromeda galaxy and a meteor, was captured in late January over a frozen lake in Kanding, Sichuan, China.','2022-03-01'),('52839938-2cc3-49c3-a72f-e32666f3a16a','Dawid Glawdzin','InvertedMoon_Glawdzin_960.jpg','Which moon is this? It\'s Earth\'s moon -- but in inverted colors. Here, the pixel values corresponding to light and dark areas have been translated in reverse, or inverted, producing a false-color representation reminiscent of a black and white photographic negative.  However, this is an inverted color image -- where the muted colors of the moon are real but digitally exaggerated before inversion.  Normally bright rays from the large crater Tycho dominate the southern (bottom) features as easily followed dark green lines emanating from the 85-kilometer diameter impact site.  Normally dark lunar mare appear light and silvery.  The image was acquired in Southend-on-Sea, England, UK.  Historically, astronomical images recorded on photographic plates were directly examined on inverted-color negatives because it helped the eye pick out faint details.','2022-03-08'),('61d0c7d3-46f1-41a5-92b2-e7d686842eea',NULL,'SunEruption_SolarOrbiter_960.jpg','What\'s happened to our Sun?  Last month, it produced the largest prominence ever imaged together with a complete solar disk. The record image, featured, was captured in ultraviolet light by the Sun-orbiting Solar Orbiter spacecraft. A quiescent solar prominence is a cloud of hot gas held above the Sun\'s surface by the Sun\'s magnetic field.  This solar prominence was huge -- spanning a length rivaling the diameter of the Sun itself. Solar prominences may erupt unpredictably and expel hot gas into the Solar System via a Coronal Mass Ejection (CME).  When a CME strikes the Earth and its magnetosphere, bright auroras may occur. This prominence did produce a CME, but it was directed well away from the Earth. Although surely related to the Sun\'s changing magnetic field, the energy mechanism that creates and sustains a solar prominence remains a topic of research.','2022-03-02'),('be250168-46a6-4df6-8273-968900e2770c','Jeff Graphy','MoonHands_Graphy_960.jpg','You don\'t have to look through a telescope to know where it\'s pointing. Allowing the telescope to project its image onto a large surface can be useful because it dilutes the intense brightness of very bright sources. Such dilution is useful for looking at the Sun, for example during a solar eclipse. In the featured single-exposure image, though, it is a too-bright full moon that is projected. This February full moon occurred two weeks ago and is called the Snow Moon by some northern cultures.  The projecting instrument is the main 62-centimeter telescope at the Saint-Véran Observatory high in the French Alps. Seeing a full moon directly is easier because it is not too bright, although you won\'t see this level of detail.  Your next chance will occur on March 17.','2022-02-28'),('eccf454e-5495-4d22-aeae-be58f8f28a28','Vitali Pelenjow','NGC2841_20220114_72H_1024.jpg','A mere 46 million light-years distant, spiral galaxy NGC 2841 can be found in the northern constellation of Ursa Major. This deep view of the gorgeous island universe was captured during 32 clear nights in November, December 2021 and January 2022. It shows off a striking yellow nucleus, galactic disk, and faint outer regions.  Dust lanes, small star-forming regions, and young star clusters are embedded in the patchy, tightly wound spiral arms. In contrast, many other spirals exhibit grand, sweeping arms with large star-forming regions.  NGC 2841 has a diameter of over 150,000 light-years, even larger than our own Milky Way. X-ray images suggest that resulting winds and stellar explosions create plumes of hot gas extending into a halo around NGC 2841.','2022-03-03');
/*!40000 ALTER TABLE `apod_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 18:57:00
