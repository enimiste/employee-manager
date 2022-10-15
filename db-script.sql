-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.27 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage de la structure de table employees. employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table employees.employees : ~0 rows (environ)
INSERT INTO `employees` (`id`, `email`, `employee_code`, `image_url`, `job_title`, `name`, `phone`) VALUES
	(10, 'nouni.elbachir@gmail.com', '390b1ce7-2318-4a42-b7e3-0eaf677229e1', 'https://media-exp1.licdn.com/dms/image/C4D03AQHu6VDaw-tW2A/profile-displayphoto-shrink_100_100/0/1571869677631?e=1671062400&v=beta&t=UORLZnqQv8AuocuQzesFSIKrVYlAx09P_mtw5rEf9gc', 'Information Systems Manager', 'NOUNI EL Bachir', '0653082238'),
	(12, 'shi.tamou@gmail.com', '288921a1-23a2-4747-b2c1-5d23a06caaf8', 'https://media-exp1.licdn.com/dms/image/C5603AQFC8FJWQjq9fQ/profile-displayphoto-shrink_400_400/0/1532275642840?e=1671062400&v=beta&t=EQlLh9c32w-z_4J1i34lDLgRx7QdU4cxfsjtoggYpyY', 'Process Engineer & Phd Student', 'SAISSI HASSANI Tamou', '9351962648'),
	(13, 'phorburgh6@gnu.org', '79d7f4ce-e217-4c60-b505-9dd74ad909d6', 'https://picsum.photos/id/113/200/300', 'Recruiting Manager', 'Pamelina Horburgh', '4416305478'),
	(14, 'rarmstrong7@mapy.cz', 'cf9747ed-8460-494e-9e34-2c3c33000069', 'https://picsum.photos/id/114/200/300', 'Senior Cost Accountant', 'Robers Armstrong', '8214161343'),
	(15, 'eatack8@t.co', 'a8c5f0dd-5093-4afa-9a71-95dd10f533b0', 'https://picsum.photos/id/115/200/300', 'Systems Administrator II', 'Eldridge Atack', '8387284687'),
	(16, 'gwillarton9@admin.ch', '8d8874c3-e615-4573-97bb-9def30099a8f', 'https://picsum.photos/id/116/200/300', 'Senior Sales Associate', 'Gran Willarton', '4354082307'),
	(18, 'ctunnickb@census.gov', '87242216-8ccd-459c-be11-89198db9a299', 'https://picsum.photos/id/118/200/300', 'Recruiting Manager', 'Conny Tunnick', '3804131553'),
	(19, 'gdracoc@fema.gov', '58451241-cd71-4aad-986d-28864eab103c', 'https://picsum.photos/id/119/200/300', 'Product Engineer', 'Garv Draco', '8165352301'),
	(20, 'divettd@thetimes.co.uk', '2ae48949-ab7b-421a-a994-44199e36c12f', 'https://picsum.photos/id/120/200/300', 'Civil Engineer', 'Dav Ivett', '1437286015'),
	(1007, 'm.kardous@iss.ma', '6ad9f135-470f-42ba-ae24-26dc8515b26c', 'https://icons.iconarchive.com/icons/chanut/role-playing/128/Armor-icon.png', 'Web Devlopper', 'KARDOUS Mohamed', '0201232525'),
	(1008, 'nouni.youssef.pro@gmail.com', 'c182840e-2490-4d0d-a58f-9fa08443d161', 'https://media-exp1.licdn.com/dms/image/C4E03AQGDEZGXlqbG1A/profile-displayphoto-shrink_400_400/0/1517285502685?e=1671062400&v=beta&t=MMVfE9NNxWRulLIiLCsTIRmc1pNn7Xd2TpduT_GxLTo', 'Odoo Consultant', 'NOUNI Youssef', '0653152125'),
	(1009, 'nouni.hafidse@gmail.com', '3532537a-8bd8-4ea9-9b0b-17a6f9e6fda4', 'https://media-exp1.licdn.com/dms/image/C4D03AQGXGHRnlI5ihA/profile-displayphoto-shrink_400_400/0/1553462758334?e=1671062400&v=beta&t=q6PXLI00U82YoeRoLUKr3iLmPwaz3g-Xq8D_RKM9bkg', 'Design specialiste', 'NOUNI Hafid', '0653152126');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
