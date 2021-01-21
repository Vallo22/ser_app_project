-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 21, 2021 alle 17:50
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classe_energetica`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `caratteristiche_qualitative`
--

CREATE TABLE `caratteristiche_qualitative` (
  `id` bigint(20) NOT NULL,
  `caratteristiche_qualitative` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caratteristiche_qualitative`
--

INSERT INTO `caratteristiche_qualitative` (`id`, `caratteristiche_qualitative`) VALUES
(1, 'Scarso potere coibente'),
(2, 'Scarsa capacità di dissipare calore'),
(3, 'Umidità per risalita capillare'),
(4, 'Infiltrazioni d\'aria'),
(5, 'Ponti termici'),
(6, 'Scarsa capacità di accumulare calore'),
(7, 'Irraggiamento estivo non contrastato'),
(8, 'Necessità di ventilazione naturale'),
(9, 'Scarso apporto di luce naturale negli ambienti interni'),
(10, 'Soluzioni da fonti rinnovabili');

-- --------------------------------------------------------

--
-- Struttura della tabella `codice_intervento`
--

CREATE TABLE `codice_intervento` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `codice_intervento`
--

INSERT INTO `codice_intervento` (`id`, `codice`, `descrizione`) VALUES
(1, 'A1', 'Isolamento termico all\'estradosso non ventilato\r\n'),
(2, 'A2', 'Isolamento termico all\'estradosso ventilato\r\n'),
(3, 'A3', 'Isolamento termico all\'intradosso\r\n'),
(4, 'A4', 'Isolamento termico all\'intradosso ventilato\r\n'),
(5, 'A5', '\"Integrazione del fotovoltaico \r\n(tegole e coppi fotovoltaici)\"\r\n'),
(6, 'A6', '\"Integrazione del solare termico \r\n(collettori solari con decalcomanie forate)\"\r\n'),
(7, 'A7', 'Green roof\r\n'),
(8, 'A8', 'Roof pond\r\n'),
(9, 'B1', 'Isolamento termico a pannelli sulla superficie interna della parete \r\n'),
(10, 'B2', 'Isolamento tramite intonaco termoisolante sulla superficie interna della parete\r\n'),
(11, 'B3', 'Isolamento termico a pannelli sulla superficie esterna della parete ventilato\r\n'),
(12, 'B4', 'Isolamento termico a pannelli sulla superficie esterna della parete non ventilato\r\n'),
(13, 'B5', 'Isolamento tramite intonaco termoisolante sulla superficie esterna della parete\r\n'),
(14, 'B6', 'Isolamento termico all\'interno dell\'intercapedine\r\n'),
(15, 'B7', 'Sistemi di accumulo a cambiamento di fase \r\n'),
(16, 'B8', 'Realizzazione di barriere fisiche alla risalita capillare\r\n'),
(17, 'B9', 'Realizzazione di barriere chimiche alla risalita capillare\r\n'),
(18, 'B10', 'Realizzazione di sistemi di evacuazione dell\'umidità tramite intonaci macroporosi\r\n'),
(19, 'B11', 'Realizzazione di sistemi di evacuazione dell\'umidità tramite sistemi elettro-fisici\r\n'),
(20, 'B12', 'Green wall\r\n'),
(21, 'B13', 'Muro di Trombe\r\n'),
(22, 'B14', 'Sistemi di accumulo ad acqua \r\n'),
(23, 'C1', 'Sostituzione dei serramenti con modelli ad alta prestazione energetica\r\n'),
(24, 'C2', 'Sostituzione dei vetri con modelli isolanti o captanti su telaio esistente\r\n'),
(25, 'C3', 'Messa in opera di una seconda anta vetrata\r\n'),
(26, 'C4', 'Messa in opera di una seconda lastra vetrata\r\n'),
(27, 'C5', 'Isolamento e tenuta all\'aria del telaio\r\n'),
(28, 'C6', 'Applicazione al vetro di pellicole speciali isolanti o captanti\r\n'),
(29, 'C7', 'Meccanizzazione del serramento\r\n'),
(30, 'C8', 'Applicazione al vetro di pellicole a controllo solare\r\n'),
(31, 'C9', 'Installazione di schermi interni\r\n'),
(32, 'C10', 'Installazione di schermi esterni\r\n'),
(33, 'C11', 'Applicazione di una mensola di luce\r\n'),
(34, 'D1', 'Isolamento termico all\'intradosso del solaio\r\n'),
(35, 'D2', 'Isolamento termico all\'intradosso del solaio superiore\r\n'),
(36, 'D3', 'Isolamento termico all\'estradosso del solaio superiore\r\n'),
(37, 'D4', 'Isolamento termico all\'estradosso del solaio inferiore \r\n'),
(38, 'E1', 'Revisione del modello di riscaldamento esistente, con la previsione di soluzioni radianti a pavimento o a parete\r\n'),
(39, 'E2', 'Sostituzione dei corpi illuminanti con lampade a risparmio energetico\r\n'),
(40, 'E3', 'Inserimento di sistemi automatizzati di gestione e controllo \r\n'),
(41, 'E4', 'Installazione di generatori di calore a condensazione\r\n'),
(42, 'E5', 'Installazione di pompe di calore\r\n'),
(43, 'E6', 'Installazione di testine termostatiche sui terminali di impianto\r\n'),
(44, 'E7', 'Inserimento di termostati ambiente\r\n'),
(45, 'E8', 'Installazione di sensori di presenza negli ambienti\r\n'),
(46, 'E9', 'Installazione di caldaia a biomasse\r\n'),
(47, 'E10', 'Installazione di sonde geotermiche\r\n'),
(48, 'E11', 'Installazione di impianto di cogenerazione\r\n'),
(49, 'E12', 'Installazione di regolatori di flusso collegati a rilevatori di luce\r\n'),
(50, 'E13', 'Installazione di sistemi di deumidificazione attiva con macchine a funzionamento elettrico\r\n'),
(51, 'F1', 'Introduzione di sistemi di ombreggiamento all\'intorno\r\n'),
(52, 'F2', 'Realizzazione di una serra solare\r\n'),
(53, 'F3', 'Realizzazione di camini di luce\r\n'),
(54, 'F4', 'Realizzazione di un camino di ventilazione\r\n');

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura`
--

CREATE TABLE `struttura` (
  `id` bigint(20) NOT NULL,
  `struttura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura`
--

INSERT INTO `struttura` (`id`, `struttura`) VALUES
(1, 'Strutture di elevazione verticale'),
(2, 'Strutture di elevazione orizzontale'),
(3, 'Strutture di elevazione inclinate'),
(4, 'Strutture di elevazione spaziali'),
(5, 'Infissi esterni verticali');

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_due`
--

CREATE TABLE `struttura_due` (
  `id` bigint(20) NOT NULL,
  `struttura_due` varchar(255) DEFAULT NULL,
  `struttura_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_due`
--

INSERT INTO `struttura_due` (`id`, `struttura_due`, `struttura_id_id`) VALUES
(1, 'Strutture a pareti portanti in muratura', 1),
(2, 'Strutture per impalcati piani', 2),
(3, 'Strutture per coperture piane', 2),
(4, 'Strutture per coperture inclinate', 3),
(5, 'Strutture voltate', 4),
(6, 'Infissi esterni verticali', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_tre`
--

CREATE TABLE `struttura_tre` (
  `id` bigint(20) NOT NULL,
  `struttura_tre` varchar(255) DEFAULT NULL,
  `struttura_due_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_tre`
--

INSERT INTO `struttura_tre` (`id`, `struttura_tre`, `struttura_due_id_id`) VALUES
(1, 'Strutture a pareti portanti in muratura', 1),
(2, 'Solai a terra', 2),
(3, 'Solai inferiori', 2),
(4, 'Solai superiori', 2),
(5, 'Strutture per coperture piane', 3),
(6, 'Strutture per coperture inclinate', 4),
(7, 'Confinanti con ambienti sottotetto', 5),
(8, 'Confinanti con ambienti non riscaldati inferiori', 5),
(9, 'Infissi esterni verticali', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_tre_caratt_qualit`
--

CREATE TABLE `struttura_tre_caratt_qualit` (
  `struttura_tre_id` bigint(20) NOT NULL,
  `caratt_qualit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_tre_caratt_qualit`
--

INSERT INTO `struttura_tre_caratt_qualit` (`struttura_tre_id`, `caratt_qualit_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(2, 1),
(2, 6),
(3, 1),
(3, 6),
(4, 1),
(4, 6),
(5, 1),
(5, 2),
(5, 5),
(5, 6),
(5, 10),
(6, 1),
(6, 2),
(6, 5),
(6, 6),
(6, 10),
(7, 1),
(7, 6),
(8, 1),
(8, 6),
(9, 1),
(9, 4),
(9, 7),
(9, 8);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `caratteristiche_qualitative`
--
ALTER TABLE `caratteristiche_qualitative`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `codice_intervento`
--
ALTER TABLE `codice_intervento`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `struttura`
--
ALTER TABLE `struttura`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `struttura_due`
--
ALTER TABLE `struttura_due`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9eqhylq6sc1yseu3cglwffnsy` (`struttura_id_id`);

--
-- Indici per le tabelle `struttura_tre`
--
ALTER TABLE `struttura_tre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt7ybagev1aaw5py3n0g10byt4` (`struttura_due_id_id`);

--
-- Indici per le tabelle `struttura_tre_caratt_qualit`
--
ALTER TABLE `struttura_tre_caratt_qualit`
  ADD KEY `FKfm9te8rqyqr9nhw8980c4f6bk` (`caratt_qualit_id`),
  ADD KEY `FK5hyqaks3aec1trm37c1vgbmci` (`struttura_tre_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `caratteristiche_qualitative`
--
ALTER TABLE `caratteristiche_qualitative`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `codice_intervento`
--
ALTER TABLE `codice_intervento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la tabella `struttura`
--
ALTER TABLE `struttura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `struttura_due`
--
ALTER TABLE `struttura_due`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `struttura_tre`
--
ALTER TABLE `struttura_tre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `struttura_due`
--
ALTER TABLE `struttura_due`
  ADD CONSTRAINT `FK9eqhylq6sc1yseu3cglwffnsy` FOREIGN KEY (`struttura_id_id`) REFERENCES `struttura` (`id`);

--
-- Limiti per la tabella `struttura_tre`
--
ALTER TABLE `struttura_tre`
  ADD CONSTRAINT `FKt7ybagev1aaw5py3n0g10byt4` FOREIGN KEY (`struttura_due_id_id`) REFERENCES `struttura_due` (`id`);

--
-- Limiti per la tabella `struttura_tre_caratt_qualit`
--
ALTER TABLE `struttura_tre_caratt_qualit`
  ADD CONSTRAINT `FK5hyqaks3aec1trm37c1vgbmci` FOREIGN KEY (`struttura_tre_id`) REFERENCES `struttura_tre` (`id`),
  ADD CONSTRAINT `FKfm9te8rqyqr9nhw8980c4f6bk` FOREIGN KEY (`caratt_qualit_id`) REFERENCES `caratteristiche_qualitative` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
