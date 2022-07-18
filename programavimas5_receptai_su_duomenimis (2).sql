--
-- Dumping data for table `alergijos`
--

INSERT INTO `alergijos` (`id`, `pavadinimas`) VALUES
(1, 'glitimas'),
(2, 'veziagyviai'),
(3, 'kiausiniai'),
(4, 'zuvys'),
(5, 'zemes riesutai'),
(6, 'soju pupeles'),
(7, 'pienas'),
(8, 'riesutai'),
(9, 'salieras'),
(10, 'garstycios'),
(11, 'sezamo seklos'),
(12, 'sieros dioksidas'),
(13, 'lubinai'),
(14, 'moliuskai');

-- --------------------------------------------------------
--
-- Dumping data for table `dieta`
--

INSERT INTO `dieta` (`id`, `patiekalu_kiekis_per_diena`, `trukme_dienomis`) VALUES
(1, 2, 2),
(2, 2, 4),
(3, 3, 3);

-- --------------------------------------------------------
--
-- Dumping data for table `ingredientai`
--

INSERT INTO `ingredientai` (`id`, `pavadinimas`, `kalorijos_per100g`, `kaina`) VALUES
(1, 'Vištiena', 166, '6.12'),
(2, 'Jautienos faršas', 39, '8.55'),
(3, 'Braškės', 309, '3.53'),
(4, 'Pienas', 243, '4.53'),
(5, 'Avižiniai dribsniai', 45, '3.59'),
(6, 'Svogūnas', 72, '2.53'),
(7, 'Bulvės', 313, '9.44'),
(8, 'Grietinė', 307, '5.93'),
(9, 'Teriyaki marinatas', 134, '3.85'),
(10, 'Lęšiai', 290, '10.21'),
(11, 'Avinžirniai', 423, '6.99'),
(12, 'Petražolė', 318, '1.57'),
(13, 'Pomidoras', 311, '8.87'),
(14, 'Agurkas', 436, '3.59'),
(15, 'Couscous', 84, '2.57'),
(16, 'Duona', 44, '0.69');

-- --------------------------------------------------------
--
-- Dumping data for table `receptai`
--

INSERT INTO `receptai` (`id`, `pavadinimas`, `nurodymai`, `kalorijos_per100g`, `kaina`) VALUES
(1, 'Tabule couscous salotos', '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', 564, '6.85'),
(2, 'Tablue lebanietiškos salotos', '1. Supjausstom daržoves ir viską suberiam į vieną.', 831, '15.03'),
(3, 'Jautienos faršas su svogūnais', '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną', 622, '12.97'),
(4, 'Kepta vištiena su svogūnu ir petražolėmis', '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną', 663, '26.86'),
(5, 'Keptos bulvės su grietine', '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine', 754, '19.22'),
(6, 'Bulvių košė', '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu', 352, '9.52'),
(7, 'Teriyaki vištiena', '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti', 329, '18.76'),
(8, 'Lęšių ir avinžirnių sriuba', '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine', 1410, '27.23'),
(9, 'Avižinė košė', '1. Išvirti dribsnius piene', 288, '8.12'),
(10, 'Mutinys', '1. Sumaišyti duoną, braškes ir pieną', 596, '8.75');

-- --------------------------------------------------------
--
-- Dumping data for table `sujungimas_ingredientai_alergijos`
--

INSERT INTO `sujungimas_ingredientai_alergijos` (`ingredientas_id`, `alergija_id`) VALUES
(4, 7),
(5, 1),
(8, 7),
(9, 6),
(9, 11),
(15, 1),
(16, 1);

-- --------------------------------------------------------
--
-- Dumping data for table `sujungimas_receptai_alergijos`
--

INSERT INTO `sujungimas_receptai_alergijos` (`receptas_id`, `alergija_id`) VALUES
(1, 1),
(5, 7),
(6, 7),
(7, 11),
(7, 6),
(8, 7),
(9, 1),
(10, 1);

-- --------------------------------------------------------
--
-- Dumping data for table `sujungimas_receptai_dieta`
--

INSERT INTO `sujungimas_receptai_dieta` (`receptas_id`, `dieta_id`) VALUES
(1, 1),
(3, 1),
(5, 1),
(2, 1),
(5, 2),
(7, 2),
(2, 2),
(1, 2),
(6, 2),
(8, 2),
(6, 2),
(3, 2),
(1, 3),
(3, 3),
(7, 3),
(9, 3),
(1, 3),
(2, 3),
(5, 3),
(10, 3),
(7, 3);

-- --------------------------------------------------------
--
-- Dumping data for table `sujungimas_receptai_ingredientai`
--

INSERT INTO `sujungimas_receptai_ingredientai` (`receptas_id`, `ingredientas_id`) VALUES
(1, 6),
(1, 13),
(1, 14),
(1, 15),
(2, 12),
(2, 13),
(2, 14),
(3, 2),
(3, 6),
(4, 1),
(4, 6),
(4, 12),
(5, 6),
(5, 7),
(5, 8),
(6, 4),
(6, 7),
(7, 1),
(7, 9),
(8, 6),
(8, 8),
(8, 10),
(8, 11),
(8, 12),
(9, 4),
(9, 5),
(10, 3),
(10, 4),
(10, 16);

-- --------------------------------------------------------
--
-- Dumping data for table `sujungimas_receptai_virtuve`
--

INSERT INTO `sujungimas_receptai_virtuve` (`receptas_id`, `virtuve_salis_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 3),
(10, 6);

-- --------------------------------------------------------
--
-- Dumping data for table `virtuve_salis`
--

INSERT INTO `virtuve_salis` (`id`, `pavadinimas`) VALUES
(1, 'vidurio rytu'),
(2, 'libanietiska'),
(3, 'universali'),
(4, 'azijieciu'),
(5, 'marokietiska'),
(6, 'lietuviska');