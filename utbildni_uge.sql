-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2011 at 10:29 PM
-- Server version: 5.0.89
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `utbildni_uge`
--

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE IF NOT EXISTS `hlnnuwp_wpcm_lecturers` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text,
  `url` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `hlnnuwp_wpcm_lecturers` (`id`, `name`, `description`, `url`, `image`) VALUES
(1, 'Lizelott Löwendahl', 'Lizelott är inspiratör, föreläsare och lågstadielärare och har särskilt ägnat sig åt specialundervisning i matematik. Hon har fördjupat sig i sambandet mellan matematik- samt läs- och skrivsvårigheter. Dessutom har hon samlat en bred erfarenhet kring metodiska tips för såväl låg- som mellanstadiet med betoning på laborativa övningar kring tal och talsystem. Lizelott har föreläst på Matematikbiennalen under rubriken "Oasen - en specialpedagogisk tanke".\r\n\r\nLizelott har arbetat med kompetensutvecklingskurser för skolpersonal i femton år. Hon är utbildad pedagog i sällskapsdans och har sedan 1994 arbetat med kurser över hela Sverige kring materialet Dansen i skolan.\r\n\r\nLizelott har läst en försvarlig mängd litteratur relaterad till personlig utveckling och livskvalitet. Lizelott har genomgått utbildning i England till certifierad internationell Practitioner of NLP (Neurolinguistisk Programming). Därmed kan hon erbjuda studiedagar, kurser och seminarier i personlig utveckling samt coaching av olika personalkategorier, privatpersoner samt företag. Lizelott har en bred kunskap och erfarenhet av tankens kraft. På bloggen http://tankeglad.wordpress.com/ delar hon med sig av sina dagliga tankar. Hösten 2008 släpps hennes första bok Tankeglädje 1. Boken produceras tillsammans med dottern Mia Löwendahl som är fotograf och illustratör.\r\n\r\nNaturligtvis kommer Lizelott att tillämpa och förmedla kunskapen om hur man presterar maximalt även i samband med projektverksamhet och föreläsningar i matematikdidaktik. ', 'http://tankeglad.wordpress.com/', '/bilder/lizelott_150.jpg'),
(2, 'Ingemar Karlsson', 'Ingemar har arbetat som matematiklärare i över trettio år i grundskolan, gymnasiet och vuxenutbildningen. Han har fördjupat sig i orsaker till och diagnostisering av olika typer av matematiksvårigheter, speciellt dyskalkyli. Dessutom har han arbetat med olika projekt för utveckling av vuxnas lärande i matematik. Ingemar har föreläst vid de tre senaste matematikbiennalerna, nu senast i Stockholm med ett program om Matematikens historia. Han har också i år skrivit en artikel i Nämnaren om matematikdidaktik, som är hans specialintresse, särskilt att utveckla metodik för att tillämpa muntlig matematik.\r\nIngemar har en magisterexamen i utbildningsvetenskap inom området naturvetenskap, geografi, miljö och matematik med inriktningen matematikdidaktik.\r\n\r\nIngemar har arbetat med kompentensutveckling av lärare i över tjugofem år. Under 80-taletvar han anställd vid Länsskolnämnden i Blekinge. I samverkan med Skolöverstyrelsen och Socialstyrelsen ledde han kurser i Aktiva Värderingar, en pedagogisk metod för att främja medvetenhet och ansvar.\r\n\r\nI tjugo år har Ingemar som utbildad sällskapsdanspedagog lett hundratalet kurser kring utbildningsmaterialet Dansen i skolan. Han är dessutom medförfattare till detta läromedel och har skrivit böcker även för skolornas drogundervisning. ', '', '/bilder/ingemar_150s.jpg'),
(4, 'Bodil Jönsson', 'Bodil är pedagog och författare. Hon är en engagerande och inspirerande föreläsare inom flera olika områden. Bodil är Licensierad UGL- och SDI-handledare samt handledarutbildad vid St Lukas. \r\n\r\nBodil är även en produktiv läromedelsförfattare. Hennes senast läromedel heter Räkna med läsning!\r\nLättlästa texter och kluriga matteproblem.\r\nGrundläggande strategier för effektiv problemlösning.\r\nLäromedlet ges ut våren 2010 på Beta Pedagog ', 'http://www.bodils.se', 'http://www.bodils.se/bodils_bild/bodil.jpg'),
(7, 'Ronny Karlsson', 'Efter 30 år som klasslärare och speciallärare fick Ronny 2010 möjlighet att börja arbeta med BRAVKOD. Det är en lästräningsmetod som \\"kickar\\" igång den viktiga avkodningen och därigenom gör läsningen mer automatiserad. Arbetsminnet kan då börja användas för den viktiga förståelsen.\r\n\r\nHan har tillsammans med professor Martin Ingvar bedrivit en vetenskaplig studie på arbetsmetoden. Martin Ingvar beskriver i sin bok \\"En liten bok om dyslexi\\" Ronnys arbete som \\"Undret i Markaryd\\". ', '', '/bilder/Ronny_Karlsson_87.jpg'),
(8, 'Marie-Louise Nyberg', 'Marie-Louise är förskollärare och språkpedagog. Uppvuxen i södra Finland, utexaminerad som barnträdgårdslärare från seminariet i Jakobstad 1978.  Bosatt i Stockholm sedan 1979.\r\n\r\nHon reser runt och föreläser om barns språkutveckling samt om småbarn och  lustfylld  matematik. Hennes program är mycket uppskattade och hon föreläser om språkpåsar, mattepåsar och fantasipåsar Marie-Louise anlitas ofta som expert och inspiratör för att stimulera metodutveckling i förskola genom roliga och levande metoder. ', 'http://www.sprakpasen.se/', '/bilder/marie-louise.jpg'),
(9, 'Cecilia Palm', 'Cecilia Palm är Ma/NO lärare och arbetar med elever som är mellan 6 och 12 år i matematik på Håslövs byaskola i Vellinge. Hon har byggt upp en matematikverkstad och driver en matematikprofil på sin skola. Cecilia är även författare till en del matematikläromedel.\r\n\r\nCecilia deltog på matematikbiennalen 2006 med en idéutställning om Mattetåget, där utställningen fick ett hedersomnämnande. 2008 var Cecilia åter med på matematikbiennalen och fick då dubblera sina föreläsningar.\r\n\r\nCecilia har fått mycket positivt tillbaka från sina elever. De tycker att matematik är roligt och man kan se en vilja och glädje hos dem, när de arbetar med Mattetåget', 'http://www.mattetaget.se/', '/bilder/cecilia_palm_109.jpg'),
(10, 'John Steinberg', 'John är fil dr i pedagogik med skolan och inlärning som sitt speciella intresseområde.\r\n\r\nHan har publicerat drygt 40 böcker om lärande, skolan, ledarskap och värderingar och åtskilliga artiklar om inlärning, påverkan och kommunikation. Han har erfarenhet som rektor och är numera föreläsare, kursledare och författare. John håller kurser i ledarskap, professionella samtal och om hur vi underlättar inlärning.', 'http://www.steinberg.se/', 'http://www.steinberg.se/images/uploads/thumb_john_steinberg.jpg'),
(11, 'Jenny Åkerman', 'Jenny är föreläsare, certifierad NLP-tränare, ordförande i INLPTA Scandinavia och Vice ordförande i Mensa Sverige.. Hon är musik- och röstpedagog och utbildad på Högskolan för Musikpedagogik i Stockholm. Hon har hållit många utbildningar tillsammans med Kompus AB och dyker ofta upp som tränare i Göteborg på utbildningar arrangerade av Gothia Akademin.\r\n\r\nJenny håller kortare seminarier på ett par timmar upptill en halv dag, bland annat via Talarforum, Fortbildarna, Lära för Livet, Medalgon Utbildning AB, Svenska föreläsare, Utbildningsglädje, Holmbergs Talare och JL Utbildning. Mycket av innehållet i seminarierna finns sammanställda i böckerna "Ja tack Hjärna!", "Mer än hjärna!" och "Goda Hjärningar" som Jenny skrivit ihop med Gabriella Wejlid.', 'http://www.audiva.se/', '/bilder/jenny_akerman.jpg'),
(19, 'Ann-Christine Granelli', 'Ann-Christine är pedagog,stressterapeut samt Certifierad Learning Styles Trainers utbildad i New York.\r\n\r\nAnn-Christine har lång erfarenhet av arbete med lärstilar inom grundskola, gymnasium och vuxenutbildning.', '', 'http://www.utbildningsglädje.nu/utskicksbilder/A_C_G.jpg'),
(20, 'Britt-Inger Ahlström', 'Britt-Inger är pedagog och Master in Arts in Education. Britt-Inger är Certifierad Learning Styles Trainer utbildad i New York.\r\n\r\nBritt-Inger har lång erfarenhet av arbete med lärstilar inom grundskola, gymnasium och vuxenutbildningen.', '', 'http://www.utbildningsglädje.nu/utskicksbilder/B_I_A_150_0948.jpg'),
(13, 'Andreas Kullberg', 'Andreas Kullberg är utbildare, certifierad coach och NLP Master Practitioner,  projektledare med en examen i projektledning. Han har hållit i 1000-tals coachsamtal och ett stort antal föredrag och utbildningar. Han utbildar och inspirerar ledare, personal, idrottare, pedagoger och föräldrar. Han har coachat allt från olympiska idrottare, världsmästare, fotbollsproffs, chefer och ledare till ensamstående småbarnsföräldrar och barn och ungdomar. Han har även haft en serie kallad ”Livstips” i P4 Radio Värmland. Andreas har själv utbildats av några av världens bästa coacher, bl.a. Anthony Robbins och Richard Bandler.', 'http://www.time2change.se', 'http://www.xn--utbildningsgldje-7nb.nu/bilder/AE2U1805.jpg-for-web.jpg'),
(14, 'Gunilla Hammar Säfström', 'Gunilla Hammar Säfström har en bred lärarerfarenhet nationellt och internationellt. Hon har\r\narbetat inom svenskt skolväsendes alla stadier alltifrån lågstadiet till gymnasiet, Komvux och\r\ninom kriminalvården (Hinsebergs kvinnofängelse).\r\nUnder många år var hon bosatt i Mellanöstern och undervisade i Jordanien och Saudi Arabien.\r\n\r\nGunilla föreläser nu över hela landet om hur vi alla kan hjälpa varandra att lyfta fram det bästa hos oss själva och våra arbetskamrater. Engagemanget, viljan och glädjen i ”Klass 9a” inspirerar oss alla.\r\n', '', 'http://www.xn--utbildningsgldje-7nb.nu/bilder/Gunilla2.jpg'),
(17, 'Susanne Hedin', 'Retorikkonsult och logonom (röstpedagog med inriktning mot kommunikation). \r\nMångårig erfarenhet som sång- och scenartist. Verksam som pedagog inom teatern i 10 år och föreläsare och utbildare/konsult inom näringslivet i 15 år. Föreläser vid universitetet och Ekonomihögskolan i Lund.\r\n', 'http://www.retorikbyran.nu', 'http://www.xn--utbildningsgldje-7nb.nu/bilder/Susanne%20Hedin4.jpg'),
(18, 'Gunilla Strand och Johanna Segercrantz', 'Gunilla Strand är lärare i Sv/So för skolår 1-7, certifierad coach och föreläsare. Hon har flera års erfarenhet av arbetet som lärare och ämnesintegrerad och målstyrd undervisning.  Idag arbetar Gunilla med individ och grupputveckling inom både kommunal och privat verksamhet. Gunillas inspirerande idéer om skolan och fantastiska förmåga att ställa frågor får lyssnaren att tänka till och öppna upp för nya tankesätt. \r\n\r\nJohanna Segercrantz är lärare i Sv/ So för skolår 1-7 och föreläsare. Hennes engagemang för skolutveckling och förmåga att se möjligheter i dagens skolsystem har lett henne in på en magisterutbildning i utbildningsvetenskap inom skolutveckling och ledarskap. Kunskapen, den mångåriga erfarenheten från skolan och förmågan att inspirera gör henne till en föreläsare värd att lyssna till.  \r\n\r\nGunilla och Johanna har tillsammans lett en undervisning som skett utan läromedel, med inflytande från eleverna och med konkret koppling till kursplanernas mål. Tillsammans har de arbetat fram en modell för att kvalitetssäkra undervisningen.  \r\n', '', 'http://www.xn--utbildningsgldje-7nb.nu/bilder/giggiojag_001_150.jpg'),
(21, 'Elin Mannheimer', 'Elin Mannheimer är utbildad inom teater, drama och pedagogik. Hon har erfarenhet av att arbeta med alla möjliga grupper; alltifrån småbarn till pensionärer och har även vid ett flertal tillfällen arbetat med människor med funktionshinder. \r\nHösten 2009 jobbade hon ideellt i ett dramaprojekt för de hemlösa på Stadsmissionen i Malmö.', 'http://www.teatertakeaway.se/', 'http://www.utbildningsglädje.nu/utskicksbilder/Elin.jpg'),
(22, 'Annika Rickard och Marie Kniest', 'Annika Rickard och Marie Kniest är gymnasielärare och diplomerade coacher med lång skolerfarenhet. Annika arbetar nu som utvecklingsledare/skolledare samt föreläsare och Marie som utvecklingspedagog, arbetslagsledare och föreläsare. \r\n \r\nAnnika och Marie har startat upp och är verksamma i ett utvecklingsprojekt med syftet att implementera entreprenöriellt lärande i undervisningen. Marie har dokumenterat detta utvecklingsarbete, vilket har resulterat i en magisteruppsats i utbildningsvetenskap vid Malmö Högskola.\r\n\r\nAnnika och Marie har utifrån sina samlade kunskaper och erfarenheter skapat en modell för hur man kan arbeta med entreprenörskap och entreprenöriellt lärande i skolans vardag.\r\n', 'http://www.kreducation.se/', 'http://www.utbildningsglädje.nu/bilder/K&R_150.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `forelasningar`
--

CREATE TABLE IF NOT EXISTS `hlnnuwp_wpcm_courses` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `short_description` text,
  `description` text,
  `target` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `forelasningar`
--

INSERT INTO `hlnnuwp_wpcm_courses` (`id`, `title`, `short_description`, `description`, `target`) VALUES
(1, 'Utbildningskväll i retorik för pedagoger', 'Presentera – inspirera – engagera: Föreläsningen handlar om hur du som lärare skapar ett tryggt klassrumsklimat och förutsättningar för dialog med eleverna. Retoriken utvecklar elevernas självkänsla, empatiska förmåga och sociala kompetens.', 'RETORIKENS GRUNDTANKAR OCH CENTRALA BEGREPP\r\n* Retoriska redskap och kunskapande retorik\r\n* Argumentation – Vad är Ditt budskap?\r\n\r\nTALA OCH ENGAGERA\r\n* Kroppsspråket, rösten och hållningen\r\n* Lärandets retorik - dialogens pedagogiska möjligheter\r\n\r\nKONSTEN ATT VÄLJA SPRÅK\r\n* Kvinnligt och manligt språk\r\n* Att ge konstruktiv kritik och öka självkänslan\r\n\r\nPLANERINGEN OCH HANTVERKET\r\n* Retorik på skolschemat –praktiska exempel\r\n* Dialog i undervisningen – retoriska övningar för pedagoger – hur börjar Du?', 'Pedagoger F – 9 samt gymnasiet och komvux'),
(21, 'Matte - fest eller pest ', 'En praktisk föreläsning om hur vi kan hjälpa våra elever att få en framgångsrik matematikutveckling. Om vi låter våra elever konsekvent arbeta med konkret strukturerat material och genomtänkta metoder så får fler möjlighet att tillägna sig effektiva matematiska strategier och abstrakt tänkande.  ', 'Hur kan man arbeta med matematik för att fler barn ska tillägna sig ett effektivt matematiskt tänkande?\r\nHur kan man arbeta för att fler barn ska nå önskat resultat i matematik?\r\nHar vi för få matematiklektioner eller handlar det om hur vi använder dem?\r\nHur organiserar vi eleverna, läromedlen, rummet och oss själva för att nå effektivitet?\r\n\r\nHur visar det sig att en elev har matematiksvårigheter? Vad kan vi göra för att undvika detta? \r\n\r\nUr innehållet:   \r\nHur mycket tid lägger vi på att\r\n* räkna i boken?\r\n* arbeta konkret för att skapa förståelse?\r\n* arbeta med grundläggande matematiska begrepp?\r\n* ta reda på samt tillgodose varje barns individuella nivå och behov?\r\n* medvetandegöra effektiva matematiska strategier för eleverna?\r\n* prata matematik? \r\n', 'Pedagoger i F – 6        '),
(19, 'Matematiken i framtiden', 'Lust och lärande i matematik – hur formar vi en ny effektiv matematikundervisning? Vi utgår från TIMSS-analysen och synliggör matematiken för eleverna och får dem att upptäcka glädjen i ämnet. Vi visar även exempel på hur eleverna själva kan ta ansvar för det egna lärandet och ger praktiska exempel på elevaktiviteter för samtliga stadier. Under kvällen introducerar vi metoder för att arbeta med muntliga inslag\r\ni matematikundervisningen.\r\n', '• Forskningsbakgrund och aktuella matematikdidaktiska frågor\r\n\r\n• Matematiksvårigheter, bl a dyskalkyli samt diagnostik och åtgärder\r\n\r\n• Hur vi planerar hjälpinsatser och arbetar med färdighetsträning\r\n\r\n• Praktiska exempel på muntlig behandling av kursmoment\r\n\r\n• Intresseväckande logikövningar\r\n\r\n• Vi reser i det matematikhistoriska landskapet\r\n', 'Pedagoger F – 9, gymnasiet och komvux'),
(20, 'Portfolio i praktiken', 'En sprudlande och praktisk föreläsning om Portfolio. Föreläsningen är mycket verklighetsnära och bygger på egna erfarenheter av portfoliometodik från vardagsarbetet med elever. Föreläsningen är fylld av tydliga och praktiska exempel \r\npå portfolioarbeten. Så kom och låt dig utvecklas, inspireras och glädjas! Med små steg mot de stora målen!\r\n', 'Hur kan man skapa jordmån for eleverna att växa i sitt eget lärande?\r\nHur kan man skapa ett arbetsklimat där eleverna är mer anslutna till sitt eget\r\ntänkande än till sina lärares?\r\n\r\nHur kan man göra det möjligt för varje elev att visa utveckling och framgång?\r\nPortfolio innebar bland annat…\r\n\r\n• att göra lärandet och framgångarna synliga\r\n• att få vara stolt över det man har lyckats med\r\n• att få se att man har utvecklats\r\n• att se förbättringsområden och att kunna satta egna mål for att nå utveckling\r\n\r\nVad är portfolio? Portfolio kan översättas med elevportfölj\r\nPortfolio är en verktygslåda som ger våra elever möjlighet att reflektera över sina produkter \r\noch arbetsinsatser i skolan. \r\n\r\nSyftet är att eleven ska kunna överblicka sin situation, bevara sitt självförtroende, bli delaktig och kunna ta ansvar för sitt eget lärande. Metoden går i korthet ut på att eleverna till sin portfolio väljer ett arbete som de är nöjda och stolta över. Därefter formulerar var och en skriftligen sitt eget motiv till valet på en så kallad inträdesbiljett. \r\n', 'Pedagoger i F-6'),
(22, 'Det lyser om läsande barn', 'En konkret föreläsning om hur man med liv och lust kan arbeta med grundläggande läs- och skrivinlärning. Att skörda segrar och framgångar i stället för nederlag och förluster är vad varje barn borde få uppleva. ', 'Det lyser om läsande barn bygger på de konkreta erfarenheter och den metodik jag använt och utvecklat under mitt mångåriga arbete på låg- och mellanstadiet. \r\nMin utgångspunkt är att barn kan i princip lära sig vad som helst med rätt metodik. Även ett högt torn börjar vid marken! Att barnet får bevara, bygga upp och förstärka sitt självförtroende är den absolut viktigaste komponenten vad det gäller barnets framgångar i läs och skrivutveckling.  \r\nDet lyser om läsande barn är en livfull, inspirerande och konkret föreläsning.\r\n\r\n• Hur kan vi arbeta för att minimera riskerna för att våra elever ska hamna i läs- och skrivsvårigheter?\r\n• Vad beror det på att en del av våra elever får svårigheter med läs- och skrivutveckling?\r\n• Finns anledningen till problemen hos eleven eller hos omgivningen?\r\n• Vilka faktorer finns det som vi kan påverka?\r\n\r\n\r\nUr innehållet:\r\n\r\n• Vikten av att bevara barnets självförtroende.\r\n• Ljudinlärning med kroppen och alla sinnena.\r\n• Vokalernas betydelse; Inlärning som förberedelse till stavningskompetens!\r\n• Att läsa på sin egen nivå.\r\n• Vad gör vi med dom som "står och stampar"?  Öppnar kursverksamhet så klart!\r\n• Berätta om Nisse och Greta, så kommer dina elever aldrig att glömma ng-ljudets stavning.\r\n• Individuell rättstavning - går det?\r\n• Lättläst- vad är det?\r\n• Mål och målavstämning på elevernas nivå.\r\n• HC Andersen och någon mera... Hur bevarar vi läslusten upp i åldrarna?\r\n• Att utveckla sitt skrivande; konkreta strategier för att bygga en text.\r\n', 'Pedagoger i F – 6              '),
(23, 'Det var han som började!                      ', 'Föreläsningen belyser hur grupper utvecklas. Vilken roll spelar konflikterna i\r\ndenna utveckling? Hur hanterar vi konflikter på ett konstruktivt sätt?\r\nHur ska vi ha det på vår arbetsplats:\r\nNyttiga konflikter eller tärande tjafs?\r\nKan konflikter vara berikande eller tar de bara en massa tid och energi?\r\n', 'Konflikter, pakter och allianser kommer som ett brev på posten när gruppens\r\nsmekmånad är över; hur fortsättningen blir kan du som ledare påverka. Alla\r\ngrupper genomgår olika faser i sin utveckling. \r\n\r\nKonflikter är en viktig del i denna utveckling. För att få grupper som fungerar krävs det att vi kan hantera konflikter på ett effektivt och konstruktivt sätt.\r\n\r\nVad är det som gör att vissa grupper mognar medan andra stagnerar och aldrig\r\nkommer till mognad?\r\n\r\nUr innehållet:   Vad är en konflikt?\r\n• Bakomliggande orsaker\r\n• Positiva effekter av konflikter\r\n• Effektiv konflikthantering\r\n• Förebyggande konkreta åtgärder\r\n• Feedback och Jag-budskap\r\n• Vad kan du som ledare göra?\r\n• Grupputveckling enligt FIRO-teorin\r\n• Vad får en grupp att gå framåt? Vad får en grupp att gå bakåt?\r\n', 'Pedagoger i förskola, grundskola, gymnasium'),
(24, 'Fantasipåsar', 'Att arbeta utifrån ett tema under en hel dag, eller varför inte en hel vecka, är ett utvecklande äventyr för barnen och en spännande utmaning för varje förskolepedagog. \r\n \r\nSagan, rim, ramsor och sånger bildar tillsammans en helhet. Barnen bidrar med egna erfarenheter och sammantaget får man ett spännande och fantasifyllt innehåll, för både inom– och utomhusaktiviteter.\r\n', 'Fantasin och leken har en underbar förmåga att utveckla barns språk och matematikutveckling Därför är lusten, glädjen och glittret i barns ögon det viktigaste. Om det inte glittrar i barns ögon så beror det på att de inte tilltalas eller inte lyssnar.\r\n\r\n \r\nAtt arbeta med språk och matte blir spännande om man stoppar ner sagor, sånger, rim och ramsor, ord och begrepp i vackra påsar. Det blir en behaglig upplevelse för barn att erfara språket tredimensionellt.Barn måste se, lyssna, känna, uppleva, tala och sjunga ord. Påsarna skapar magi och överraskning och det påverkar inlärningen positivt. \r\n', 'Pedagoger i förskolan, dagbarnvårdare och skolår F-2'),
(25, 'Mattetåget', 'Ett lok och trettiofem vagnar lastade med matematik. Det är Mattetåget. Eleverna arbetar individuellt i sin egen takt. Föreläsningen inspirerar till ett lustfyllt sätt att arbeta med matematiken.', 'Eleverna ska förstå matematik och tycka att det är roligt. De ska kunna använd sina matematikkunskaper i vardagslivet och kunna ta ansvar for sitt eget lärande.\r\n\r\nPedagogen ska kunna möta varje individ där han/hon befinner sig och\r\ntillsammans med eleven arbeta vidare utifrån hans/hennes behov och intressen.\r\nDessa tankar ligger till grund for Cecilias arbetssätt i matematik.\r\n\r\n\r\nAr 2004 skapade Cecilia Mattetåget, en individuell utvecklingslinje i matematik. Med hjälp av LPO-94, lokala arbetsplaner, riktlinjerna för de nationella proven samt matteböcker skapade hon en utvecklingslinje i matematik. En viktig tanke med hennes arbetssätt är att eleverna kan se målet med sitt arbete.\r\n\r\nDet ökar drivkraften och möjliggör ansvarstagande. Utvecklingslinjen skulle\r\ndärför vara tydlig och lätt att förstå och Mattetåget växte fram. Ett lok som drar trettiofem vagnar, där varje vagn representerar ett huvudmål inom matematiken. \r\n', 'Pedagoger F - 5      '),
(47, 'Drama för pedagoger', 'Föreläsningen ökar kunskapen om den positiva inverkan dramapedagogiken har på människan och gruppen, vad den öppnar för möjligheter och hur den bäst tillämpas. Elin kommer att ta med lyssnarna på en tur genom dramats allra värsta och bästa stunder – med hög igenkänningsfaktor. Alla har vi någon bild av drama, förutfattad eller ej. Kommer din att ändras innan kvällen är slut? ', 'Ur kvällens innehåll:   \r\n• Vad är skillnaden mellan drama och teater?\r\n• Kan verkligen alla använda sig av dramaövningar?\r\n• Varför är drama avgörande för arbetsklimatet i gruppen?   \r\n• Varför behöver vi drama på schemat i skolan? \r\n• Hur kan dramats positiva effekter påverka vardagen i skolan? \r\n \r\nKvällen kommer att avslutas med en interaktiv del där deltagarna får chansen att själva uppleva effekten av drama – det är något helt annat än teater              \r\n', 'Pedagoger i F – 9, gymnasiet och komvux'),
(46, 'Lärstilar i teori och praktik', 'Rätt utbildning för alla fokuserar på bästa sätt att få eleverna att förverkliga sin potential. Känner vi till hur vi lär, vilka faktorer som påverkar vårt lärande och använder denna kunskap ökar vår kreativa förmåga att lösa problem. Vi blir trygga i oss själva och vågar prova våra idéer. Risken att misslyckas avskräcker oss inte utan gör oss motiverade att välja nya vägar för att nå våra mål. ', 'Är det så att:\r\n•du vill utforma undervisningen så att den passar alla?\r\n•du vill skapa förutsättningar för ett lärande där eleverna stimuleras till att inhämta kunskaper?\r\n•du vill ge eleverna möjligheter att ta egna initiativ och ta ansvar för sitt lärande? \r\n•du vill ge eleverna förutsättningar att utveckla förmåga att arbeta         självständigt och lösa problem?\r\n•du vill ge trygghet, vilja och lust att lära?\r\n•du vill ge eleverna användbara verktyg för sitt kunskapande?\r\n•du vill ta del av modern inlärningsforskning?\r\n•du vill satsa på de nya undervisnings- inlärningsmetoderna? \r\n\r\nDå kan kunskap om lärstilar hjälpa dig att nå dessa mål.\r\nLärstilar handlar om våra olikheter och att vi lär på olika sätt. \r\n•Det handlar om hur hjärnan och minnet fungerar.\r\n•Vilka sinnen som vi använder vid inlärning.\r\n•Fysiska behov som t.ex. rörelse, mat, dryck, tidpunkt på dagen\r\n•Inlärningsmiljö – ljud, ljus, temperatur och möblering.\r\n•I vilka sociala grupperingar vi vill arbeta, ensam, par, grupp eller team.\r\n•Det handlar om motivation, uthållighet, anpassning och ansvar.\r\n\r\nRegeringen har bestämt att entreprenörskap ska gå som en röd tråd genom utbildningen. Entreprenörskap i skolan handlar om olika arbetsformer för att utveckla kompetenser , som krävs i arbetslivet. Elever ska känna sig delaktiga, ges chanser att utveckla sitt eget lärande och komma med egna initiativ. För att klara detta krävs att eleven känner till sin lärstil.\r\n\r\n', 'Pedagoger i F-9, gymnasiet och komvux'),
(28, 'Fängslande föreläsningar!  (Eller \\"Den Positiva Pedagogen!\\")', 'Vad är det som händer när en pedagog lyckas fängsla, underhålla och utbilda sina elever, så de glömmer tid och rum? Men kommer ihåg det de lär sig? Vad är hemligheten hos dessa stjärnpedagoger? Är det medfött? Ingalunda! Du som redan är en duktig pedagog behöver bara få lite extra tekniker för att locka fram allt detta inom dig. Lär dig hur du får fram din egen och elevernas kreativitet, hur ni kan använda minnets möjligheter och hur du kan stärka både din egen och andras självkänsla. Upptäck vad som egentligen händer i hjärnan på scenen, den scen som finns i alla klassrum där minnen skapas.', 'Lust att locka fram dina elevers bästa kapacitet? Under denna föreläsning får du som pedagog verktyg att direkt använda i mötet med barn och ungdomar. \r\n\r\nAllt är baserat på hur hjärnan fungerar och vad de senaste rönen inom hjärnforskning visar.\r\n\\"En rolig och aktiv föreläsning som du lämnar med lätta steg och härlig lust att locka fram dina elevers kapacitet och din egen!\\"\r\n\r\nMycket av innehållet i Jennys seminarier finns sammanställda i böckerna \\"Ja tack Hjärna!\\", \\"Mer än hjärna!\\" och \\"Goda Hjärningar\\" som Jenny skrivit ihop med Gabriella Wejlid. \r\nLäs mer om Jenny på www.audiva.se. \r\n', 'Pedagoger i F – 9, gymnasiet och komvux'),
(29, 'Utbildningskväll i dyslexi', 'Hur ger du dina elever maximala förutsättningar för att lyckas med läs- och skrivutvecklingen?\r\n\r\nI föreläsningen beskriver Ronny Karlsson BRAVKOD-metoden.Ronny berättar om sina erfarenheter av metoden och sitt samarbete med professor Martin Ingvar, som i ”En liten bok om dyslexi” beskriver Ronnys arbete som ”Undret i Markaryd”.', 'Metoden vänder sig till elever med läs- och skrivsvårigheter/dyslexi. Det är en metod som förutsätter att det finns en möjlighet att bedriva ett långsiktigt, målmedvetet och strukturerat arbete under den tid som det tar att nå det uppsatta målet. \r\n\r\nMetoden har en tydlig och enkel struktur och omfattar avkodning och läsförståelse. Framstegen synliggörs och elever med svårigheter får hjälp enkelt och effektivt.\r\n\r\nRonny behandlar\r\n•	Vad vi vet om dyslexibegreppet\r\n•	description av BRAVKOD \r\n', 'Pedagoger i förskola, grundskola, gymnasium '),
(45, 'Matematiken i framtiden 2 dagars kurs för gymnasiet', 'Kursen introducerar ett åtgärdsprogram för en förändrad matematikundervisning i enlighet med Skolverkets förslag Lusten att lära - med fokus på matematik samt TIMSS-analysens förslag till en effektivare matematikundervisning. Förslagen innebär som helhet en aktiv inlärning som en följd av en mer aktiv och varierad undervisning med inslag av muntliga aktiviteter och lösning av rika problem samt en ökad fokusering på elever med matematiksvårigheter.', 'Kursens innehåll\r\n• TIMSS Advanced för gymnasieskolan –  matematikuppgifter och analys av elevresultat\r\n• Dyskalkyli och andra former av matematiksvårigheter - diagnostik och åtgärder\r\n• Det matematiska samtalet - muntlig matematik\r\n• Co-operativ learning:Hur eleverna kan ta ansvar för det egna lärandet - praktiska exempel från olika stadier och olika metoder för att öka elevernas engagemang och intresse\r\n• Konkretiseringens roll - introduktion till laborativ matte och exempel på laborationer\r\n• Helgdagsmatematik: Lösning av rika matematiska problem som alternativ till att mekaniskt lösa uppgifter i läroboken\r\n• Bildning och matematik - hur kan vi få in matematikens historia i undervisningen?\r\n• Taluppfattning, aritmetik, algebra: Hur vi bygger upp en progression i undervisningen?\r\n', 'Matematikpedagoger som undervisar på gymnasieskolan'),
(44, 'Från oro till fokus, 2-dagars kurs', 'Ledarskap som skapar arbetsro och resultat\r\nArbetsro, koncentration, fokus, engagemang, motivation - det vill alla vi ha som leder grupper med dagens barn och ungdomar. Men hur skapar man det, och hur vänder man en grupp från oro till fokus.', 'Denna praktiska kurs ger svar på två frågor:\r\n1)Orsaken till oro och 2) Vad man kan göra åt den.\r\n\r\nDet handlar om ledarens icke-verbala signaler, fokus på styrkor, struktur och uppföljning.\r\n\r\nDu får goda principer,modeller,exempel och tips.\r\nDu får god dokumentation och ett enkelt utvärderingssystem för att kartlägga förändringar. ', 'Klasslärare, ämneslärare, skolledare och gruppledare på alla stadier.'),
(33, 'Mental träning för pedagoger', '- Konsten att må bra utan anledning -\r\n\r\nVad skulle det betyda för dig och de runt omkring dig om \r\ndu mår bra och är glad ännu oftare? \r\n\r\nVad skulle du tycka om att ha fler ”Bra Dagar”?\r\nDet här är mental träning på pedagogers villkor för att må bra i livet och det är väldigt användbart i jobbet. Du får verktyg att använda omedelbart!\r\n', 'Vad skulle det innebära om du som pedagog mår mycket bättre, kan kontrollera ditt tillstånd och förstår ännu bättre hur människor fungerar?\r\n\r\nDu introduceras i tekniker för att:\r\n•Slappna av och hålla dig lugn lättare\r\n•Hantera negativa känslor som stress,oro och irritation \r\n•Ta bort alla måsten\r\n•Fokusera på det som stärker dig\r\n•Lämna jobbet på jobbet och hemmet hemma\r\n•Påverka dig själv och andra\r\n', 'Pedagoger i F – 9, gymnasiet och komvux'),
(34, 'Att se det bästa hos alla!', 'Hur kan jag som pedagog få mina elever att lyfta?\r\n\r\nEn av TV:s största dokumentära satsningar blev ”Klass 9A”. Vi vet idag att många ungdomar är vilsna och saknar tro på sig själva och framtiden. Hur ska vi vuxna som finns runt ungdomar idag möta detta och stötta dem på bästa sätt?\r\n', 'Gunilla Hammar Säfström har en bred lärarerfarenhet nationellt och internationellt. Hon har arbetat inom svenskt skolväsendes alla stadier alltifrån lågstadiet till gymnasiet, komvux och inom kriminalvården (Hinsebergs kvinnofängelse). \r\nUnder många år var hon bosatt i Mellanöstern och undervisade i Jordanien och Saudi Arabien. Hon var dessutom en av mentorerna i klass 9A och undervisade bland annat i livs-kunskap. \r\n\r\nGunilla är en uppskattad föreläsare som på ett generöst och engagerande sätt delar med sig av sina upplevelser av alla spännande möten med ungdomarna i 9A. Hon är en inspiration för oss alla!\r\n', 'Pedagoger i förskola, grundskola, gymnasium samt föräldrar och övriga intresserade  '),
(35, 'Utbildningskväll i muntlig matematik', 'Föreläsningen handlar om hur du som lärare skapar en varierad matematik- undervisning och förutsättningar för dialog med eleverna. Retoriken utvecklar elevernas självkänsla, empatiska förmåga och sociala kompetens. Vi visar på olika sätt att introducera muntliga arbetssätt i matematikundervisningen.', 'HUR RETORIKENS GRUNDTANKAR KAN TILLÄMPAS I MATEMATIKUNDERVISNINGEN\r\n• Retoriska redskap och kunskapande retorik\r\n• Lärandets retorik – dialogens pedagogiska möjligheter\r\n\r\nMUNTLIGA ARBETSFORMER\r\n• Vi visar hur vi tränar eleverna att bearbeta sina kunskaper och få nödvändiga bekräftelser\r\n• Vi introducerar olika muntliga arbetssätt vid grupparbeten och lösning av matematiska problem\r\n\r\nPRAKTISKA EXEMPEL FÖR OLIKA STADIER\r\n• Retoriska övningar i matematiken\r\n• Logikövningar och öppna problem\r\n\r\nBILDNING OCH MATEMATIK\r\n• Matematikhistoria som tema för olika muntliga övningar\r\n', 'Pedagoger F – 9 samt gymnasiet och komvux'),
(39, 'Den magiska mattepåsen – lekfull matematik för små barn', 'Matematik är rolig när den leks in med hjälp av alla sinnen. Att arbeta med mattepåsar lockar, fängslar och stimulerar barn. Det är ett arbetssätt som ger många tillfällen till överraskningar och blir en spännande introduktion till matematikens värld för de små barnen.', 'Fantasin och leken har en underbar förmåga att påverka barnens matematikutveckling. Därför är lusten, glädjen och glittret i barns ögon det viktigaste. Om det inte glittrar i barns ögon så beror det på att de inte tilltalas eller inte lyssnar. \r\nAtt arbeta med matte blir spännande om man stoppar ner sagor, sånger, rim och ramsor, ord och begrepp i vackra påsar.  Påsarna skapar magi och överraskning och det påverkar inlärningen positivt. Föreläsningen Mattepåsar är uppbyggd kring former, mönster, antal, ordningstal, likheter och skillnader, symmetri, lägesord, jämförelse, tid, sortering, klassificering, logik och symboler.\r\n', 'Pedagoger i förskolan, dagbarnvårdare och skolår F-2'),
(40, 'Rösten som arbetsredskap', 'Röstinspiration och praktisk träning för skolpersonal\r\nHur får man rösten att hålla för påfrestningarna i ett klassrum? Hur använder man rösten för att få eleverna att lyssna?Att arbeta som lärare ställer särskilda krav på rösten.  Den ska höras och hålla i en livlig ljudmiljö och dessutom klara av att bära fram budskap på ett sätt som engagerar och övertygar. Det här är en interaktiv föreläsning om hur du använder rösten rätt. Du får lära dig hur rösten fungerar och en inblick i hur du kan göra för att den ska hålla, höras och övertyga.\r\n', 'Efter föreläsningen kommer du att veta mer om hur du förebygger rösttrötthet och utvecklar en röst som andra vill lyssna på.  Praktiska övningar i grupp varvas med illustrerande exempel och teoretiska genomgångar. Allt kryddat med en portion humor. Många skratt alltså. Men inget trams. Välkommen!\r\n\r\nUr innehållet\r\n• röstens uppbyggnad – lär känna din röst bättre\r\n• andningsteknik – grunden för funktionell rösthantering\r\n• kroppsmedvetande – hållning och avspänning\r\n• praktisk röstteknik - för hållbarhet, styrka, klang och röstläge\r\n• tal och tydlighet – att övertyga med hjälp av röst och tal\r\n• kroppsspråk och röst – en växelverkan \r\n• yttre faktorer som påverkar rösten \r\n', 'Pedagoger i F – 9, gymnasiet och komvux'),
(41, 'Matematiken i framtiden 2 dagars kurs', 'Kursen introducerar ett åtgärdsprogram för en förändrad matematikundervisning i enlighet med Skolverkets förslag Lusten att lära - med fokus på matematik samt TIMSS-analysens förslag till en effektivare matematikundervisning. Förslagen innebär som helhet en aktiv inlärning som en följd av en mer aktiv och varierad undervisning med inslag av muntliga aktiviteter och lösning av rika problem samt en ökad fokusering på elever med matematiksvårigheter.\r\nKursen genomförs under två heldagar . Antalet deltagare maximeras till 14 st. \r\n', 'Kursens innehåll\r\n•Dyskalkyli och andra former av matematiksvårigheter - diagnostik och åtgärder\r\n•Det matematiska samtalet - muntlig matematik\r\n•Co-operativ learning:    Hur eleverna kan ta ansvar för det egna lärandet - praktiska exempel från olika stadier och olika metoder för att öka elevernas engagemang och intresse\r\n•Helgdagsmatematik: Lösning av rika matematiska problem som alternativ till att mekaniskt lösa uppgifter i läroboken\r\n•Bildning och matematik - hur kan vi få in matematikens historia i undervisningen?\r\n•Taluppfattning, aritmetik, algebra: Hur vi bygger upp en progression i undervisningen?\r\n\r\nSagt om kursen:\r\n\\"Med inspiration, variation och personlig erfarenhet uppdaterade ni deltagarna att känna sig som om de stod på tröskeln till matematiken i framtiden.\\"\r\nLars Andersson\r\nMattelärare\r\nRönnowska skolan\r\nHelsingborg', 'Kursen riktar sig till pedagoger som undervisar i skolår 4 – 9 samt Gymnasiet. '),
(43, 'Möjligheternas metodik', 'Hur kan man integrera olika ämnen och ändå ha koll på hur eleverna ligger till?\r\nHur gör vi för att hinna med läroplanen och samtidigt göra skolan rolig?\r\nHur får vi eleverna att tillgodogöra sig ett livslångt lärande?\r\nHur konkretiserar vi ämnesspecifika mål för eleverna?\r\nHur kan en undervisning med reellt elevinflytande se ut?\r\nDet här är några frågor som berörs under kvällen. Som lyssnare får man också tillgång till en modell och checklista för att själv kunna genomföra ”Möjligheternas metodik”.\r\n', 'Pedagogiska teorier och forskning pekar på en ny typ av kunskap som behövs i dagens samhälle, men hur gör man i praktiken? \r\nKom och bli inspirerad av “Möjligheternas metodik”.\r\nDen här föreläsningen bjuder på konkreta exempel på skolarbete som sker målinriktat, kvalitativt och strukturerat på ett lustfyllt sätt. \r\nUnder föreläsningen ”Möjligheternas metodik” vävs den komplexa väven av målstyrning, elevinflytande, djupinlärning och livslångt lärande ihop till en inspirerande och kreativ undervisning.\r\n', 'Pedagoger F - 9      '),
(48, 'Välkommen till den entreprenöriella skolan!', 'Inspirationsföreläsning och workshop om entreprenöriellt lärande', 'Alla lär sig på olika sätt, vilket innebär att arbetsformer och arbetssätt i skolan måste vara varierande och stimulerande. \r\n\r\nUnder kvällen får du konkreta exempel utifrån begreppet TRE, som innebär tillämpat, riktigt entreprenörskap. Dessutom får du kunskap om hur man praktiskt kan arbeta med entreprenörskap och entreprenöriellt lärande som en röd tråd genom hela skolverksamheten och hur det kan fungera i verkligheten.\r\n \r\nAnnika och Marie belyser följande:\r\n• Olika elevkompetenser\r\n• Den aktuella kunskapssynen\r\n• Genomförandet av begreppet TRE\r\n• Fördelar och vinster med att arbeta med entreprenöriellt lärande\r\n', 'Pedagoger och skolledare åk 7 – 9,  gymnasiet och komvux'),
(49, 'Hur hjälper vi elever med låga prestationer i matematik?', 'Under kvällen ges en heltäckande bild av problematiken kring lågpresterande elever i matematik. Begreppet särskilt utbildningsbehov i matematik förklaras och ställs i relation till den allt mer använda termen dyskalkyli. Vi går även igenom förslag till hjälpinsatser med olika slag av färdighetsträning.\r\n\r\n', '• Forskningsöversikt och bakgrund till dagens situation\r\n• Särskilt utbildningsbehov i matematik – grundläggande teori\r\n• Matematiksvårigheter, bl a termen dyskalkyli samt diagnostik \r\n• Sociala nätverkets betydelse för elever med låga prestationer\r\n• Sambandet mellan matematik och läs- och skrivsvårigheter\r\n• TIMSS-rapporten: Arbetsminnets roll vid utveckling av talfakta\r\n• Hur vi planerar hjälpinsatser och arbetar med färdighetsträning\r\n• Matematiksvårigheter och specialpedagogiskt stöd\r\n• Oasen - en specialpedagogisk modell i praktiken\r\n', 'Pedagoger F – 9, gymnasiet och komvux'),
(50, 'Hur hjälper vi elever med låga prestationer? Em-kurs/3 tillf', 'Syftet med denna utbildning är att ge en aktuell och heltäckande bild av problematiken kring elever med låga prestationer i matematik. Vi kommer också att lägga fokus på hur vi planerar hjälpinsatser och arbetar med färdighetsträning. Kursen vänder sig till pedagoger som under- visar i F-9 samt gymnasiet och komvux och genomförs under tre eftermiddagar.\r\nDet första kurstillfället består av en inspirationsföreläsning med forskningsbakgrund samt orsaker till elevernas låga prestationer. Dessutom dras riktlinjerna upp hur vi kan arbeta med åtgärdsprogram. Vid de följande två tillfällena går vi igenom hur vi bygger upp hjälpinsatser med arbetsminnesträning och färdighetsträning.\r\n', 'Kurstillfälle 1: Inspirationsföreläsning:\r\n\r\n•Särskilt utbildningsbehov i matematik – grundläggande teori\r\n•Matematiksvårigheter, bl a termen dyskalkyli samt diagnostik\r\n•Sociala nätverkets betydelse för elever med låga prestationer\r\n•Sambandet mellan matematik och läs-  och skrivsvårigheter\r\n•TIMSS-rapporten: Arbetsminnets roll vid utveckling av talfakta\r\n•Oasen – en specialpedagogisk modell i praktiken\r\n•Riktlinjer för arbetet med hjälpinsatser\r\n\r\nKurstillfälle 2: Workshop med färdighetsträning och kognitiv träning\r\n\r\n•Träning av arbetsminnet\r\n•Verktyg och konkreta tips för undervisningen\r\n\r\nKurstillfälle 3: Workshop med hjälpinsatser\r\n  \r\n•Utformning av åtgärdsprogram\r\n•Lärarrollen och föräldraperspektivet\r\n•Mattecoaching som pedagogisk metod\r\n', 'F-9 samt gymnasiet och komvux ');

-- --------------------------------------------------------

--
-- Table structure for table `forelasningshallare`
--

CREATE TABLE IF NOT EXISTS `hlnnuwp_wpcm_course_holders` (
  `id` int(11) NOT NULL auto_increment,
  `lecturers_id` int(11) NOT NULL,
  `courses_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `forelasningshallare`
--

INSERT INTO `hlnnuwp_wpcm_course_holders` (`id`, `lecturers_id`, `courses_id`) VALUES
(69, 2, 1),
(68, 1, 1),
(46, 1, 35),
(31, 4, 22),
(30, 4, 21),
(71, 8, 39),
(93, 2, 19),
(92, 1, 19),
(47, 2, 35),
(72, 17, 40),
(51, 4, 20),
(101, 2, 41),
(100, 1, 41),
(33, 8, 24),
(34, 9, 25),
(91, 20, 46),
(103, 2, 45),
(62, 11, 28),
(119, 7, 29),
(102, 1, 45),
(80, 10, 44),
(44, 4, 23),
(42, 13, 33),
(43, 14, 34),
(78, 18, 43),
(90, 19, 46),
(118, 21, 47),
(99, 22, 48),
(109, 2, 49),
(108, 1, 49),
(114, 2, 50),
(113, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tillfalle`
--

CREATE TABLE IF NOT EXISTS `hlnnuwp_wpcm_schedule` (
  `id` int(11) NOT NULL auto_increment,
  `courses_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `city` varchar(255) NOT NULL,
  `venue` varchar(255) default NULL,
  `more_info_url` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=271 ;

--
-- Dumping data for table `tillfalle`
--

INSERT INTO `hlnnuwp_wpcm_schedule` (`id`, `courses_id`, `date`, `city`, `venue`, `more_info_url`) VALUES
(144, 44, '2010-04-21', 'Göteborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/steinberg_produktblad_fran_oro_till_fokus_v04_Utbildningsgladje.pdf'),
(145, 44, '2010-05-05', 'Umeå', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/steinberg_produktblad_fran_oro_till_fokus_v04_Utbildningsgladje.pdf'),
(146, 1, '2010-02-22', 'Karlstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_Retorik_i_Karlstad.pdf'),
(143, 44, '2010-03-10', 'Stockholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/steinberg_produktblad_fran_oro_till_fokus_v04_Utbildningsgladje.pdf'),
(112, 35, '2009-12-01', 'Falkenberg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Falkenberg.pdf'),
(108, 19, '2009-11-19', 'Eslöv', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Inbjudan_Ma_i_framtiden_Eslov.pdf'),
(95, 19, '2010-01-26', 'Flen', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Inbjudan_Ma_i_framtiden_Flen.pdf'),
(94, 19, '2009-11-26', 'Huskvarna', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Inbjudan_Ma_i_framtiden_Huskvarna.pdf'),
(111, 1, '2009-12-03', 'Värnamo', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_retorik_i_Varnamo.pdf'),
(133, 25, '2010-02-10', 'Halmstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Halmstad.pdf'),
(132, 35, '2010-02-04', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Malmo.pdf'),
(131, 35, '2010-03-22', 'Halmstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Halmstad.pdf'),
(130, 35, '2010-03-29', 'Kalmar', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Kalmar.pdf'),
(106, 1, '2009-11-17', 'Motala', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_retorik_i_Motala.pdf'),
(105, 1, '2009-11-05', 'Borås', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_retorik_i_Boras.pdf'),
(32, 21, '2009-10-15', 'Lysekil', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Matte_fest_eller_pest_Lysekil.pdf'),
(103, 35, '2009-11-23', 'Helsingborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_muntlig_matematik_i_Helsingborg.pdf'),
(104, 19, '2009-11-02', 'Vimmerby', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Inbjudan%20Ma_i_framtiden_Vimmerby.pdf'),
(129, 43, '2010-02-04', 'Kalmar', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mojligheternas_metodik_Kalmar.pdf'),
(39, 25, '2009-11-18', 'Lund', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Lund.pdf'),
(40, 25, '2009-12-02', 'Kristianstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Kristianstad.pdf'),
(43, 28, '2009-11-03', 'Gävle', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Gavle.pdf'),
(44, 28, '2009-11-11', 'Södertälje', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Sodertalje.pdf'),
(45, 28, '2009-11-18', 'Eskilstuna', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Eskilstuna.pdf'),
(46, 28, '2009-11-25', 'Strängnäs', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Strangnas.pdf'),
(47, 28, '2009-12-02', 'Katrineholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Katrineholm.pdf'),
(48, 20, '2009-11-24', 'Täby', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Portfolio_i_praktiken_Taby.pdf'),
(109, 19, '2009-11-16', 'Vadstena', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Inbjudan_Ma_i_framtiden_Vadstena.pdf'),
(110, 1, '2009-12-08', 'Kristianstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_retorik_i_%20Kristianstad.pdf'),
(102, 35, '2009-11-03', 'Tranås', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_muntlig_matematik_i_Tranas.pdf'),
(54, 29, '2009-10-22', 'Varberg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Dyslexi_Varberg.pdf'),
(55, 29, '2009-11-05', 'Jönköping', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Dyslexi_Jonkoping.pdf'),
(56, 29, '2009-11-12', 'Kalmar', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Dyslexi_Kalmar.pdf'),
(57, 29, '2009-11-17', 'Växjö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Dyslexi_Vaxjo.pdf'),
(58, 29, '2009-12-03', 'Karlskrona', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Dyslexi_Karlskrona.pdf'),
(59, 29, '2009-12-08', 'Hässleholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Dyslexi_Hassleholm.pdf'),
(98, 39, '2009-12-08', 'Göteborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Goteborg.pdf'),
(97, 39, '2009-12-07', 'Karlstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Karlstad.pdf'),
(65, 22, '2009-11-25', 'Olofström', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Det_lyser_om_lasande_barn_Olofstrom.pdf'),
(83, 33, '2009-11-19', 'Västerås', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mental_traning_for_pedagoger_i_Vasteras.pdf'),
(101, 40, '2009-12-03', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Rosten_som_arbetsredskap_i_Malmo.pdf'),
(147, 35, '2010-02-23', 'Malung', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_Muntlig_matematik_i_Malung.pdf'),
(148, 35, '2010-02-24', 'Falun', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_Muntlig_matematik_i_Falun.pdf'),
(96, 25, '2009-11-25', 'Landskrona', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Landskrona.pdf'),
(100, 40, '2009-11-26', 'Helsingborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Rosten_som_arbetsredskap_i_Helsingborg.pdf'),
(82, 33, '2009-11-11', 'Skövde', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mental_traning_for_pedagoger_i_Skovde.pdf'),
(99, 40, '2009-11-19', 'Kristianstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Rosten_som_arbetsredskap_i_Kristianstad.pdf'),
(120, 41, '2010-02-16', 'Stockholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Stockholm.pdf'),
(119, 41, '2010-02-09', 'Göteborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Goteborg.pdf'),
(86, 34, '2009-11-11', 'Hässleholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Att_se_det_basta_hos_alla_i_Hassleholm.pdf'),
(87, 34, '2009-11-12', 'Landskrona', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Att_se_det_basta_hos_alla_i_Landskrona.pdf'),
(88, 19, '2009-10-22', 'Tyringe', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Inbjudan_Ma_i_framtiden_Tyringe.pdf'),
(114, 35, '2009-12-07', 'Båstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Bastad.pdf'),
(121, 41, '2010-01-19', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Malmo.pdf'),
(115, 35, '2009-11-24', 'Uppsala', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Uppsala.pdf'),
(116, 35, '2009-11-25', 'Upplands Väsby', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_muntlig_matematik_i_Upplands_Vasby.pdf'),
(134, 22, '2010-02-22', 'Jönköping', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Det_lyser_om_lasande_barn_Jonkoping.pdf'),
(135, 39, '2010-02-17', 'Lund', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Lund.pdf'),
(136, 39, '2010-02-15', 'Ystad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Ystad.pdf'),
(137, 39, '2010-02-16', 'Hässleholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Hassleholm.pdf'),
(138, 20, '2010-01-27', 'Lund', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Portfolio_i_praktiken_Lund.pdf'),
(139, 35, '2010-02-08', 'Göteborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Goteborg.pdf'),
(162, 35, '2010-02-25', 'Gävle', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_Muntlig_matematik_i_Gavle.pdf'),
(150, 43, '2010-03-11', 'Halmstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mojligheternas_metodik_Halmstad.pdf'),
(151, 43, '2010-04-15', 'Hässleholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mojligheternas_metodik_Hassleholm.pdf'),
(152, 43, '2010-05-06', 'Göteborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mojligheternas_metodik_Goteborg.pdf'),
(153, 25, '2010-03-03', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Malmo.pdf'),
(154, 25, '2010-03-17', 'Hässleholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Hassleholm.pdf'),
(188, 25, '2010-05-05', 'Helsingborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Helsingborg.pdf'),
(156, 22, '2010-03-08', 'Växjö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Det_lyser_om_lasande_barn_Vaxjo.pdf'),
(157, 21, '2010-02-24', 'Tranås', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Matte_fest_eller_pest_Tranas.pdf'),
(158, 21, '2010-02-25', 'Vetlanda', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Matte_fest_eller_pest_Vetlanda.pdf'),
(172, 21, '2010-03-31', 'Mariestad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Matte_%20fest_eller_pest_Mariestad.pdf'),
(160, 21, '2010-04-08', 'Lidköping', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Matte_fest_eller_pest_Lidkoping.pdf'),
(161, 21, '2010-05-19', 'Kungälv', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Matte_fest_eller_pest_Kungalv.pdf'),
(163, 35, '2010-03-08', 'Upplands-Väsby', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_muntlig_matematik_i_Upplands_Vasby.pdf'),
(164, 39, '2010-05-10', 'Halmstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Halmstad.pdf'),
(165, 39, '2010-05-11', 'Helsingborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Helsingborg.pdf'),
(166, 35, '2010-03-30', 'Eskilstuna', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_muntlig_matematik_i_Eskilstuna.pdf'),
(167, 35, '2010-03-31', 'Sundsvall', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_muntlig_matematik_i_Sundsvall.pdf'),
(168, 39, '2010-05-18', 'Nyköping', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Nykoping.pdf'),
(169, 39, '2010-05-17', 'Stockholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattepasar_Stockholm.pdf'),
(173, 28, '2010-04-28', 'Katrineholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Katrineholm.pdf'),
(174, 28, '2010-03-18', 'Norrköping', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Norrkoping.pdf'),
(175, 28, '2010-04-14', 'Sollentuna', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Sollentuna.pdf'),
(176, 28, '2010-04-21', 'Västerås', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Vasteras.pdf'),
(177, 28, '2010-05-05', 'Örebro', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Den_Positiva_Pedagogen_Orebro.pdf'),
(178, 40, '2010-04-29', 'Hässleholm', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Rosten_som_arbetsredskap_i_Hassleholm.pdf'),
(179, 40, '2010-04-22', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Rosten_som_arbetsredskap_i_Malmo.pdf'),
(180, 40, '2010-03-18', 'Halmstad', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Rosten_som_arbetsredskap_i_Halmstad.pdf'),
(182, 35, '2010-04-21', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_muntlig_matematik_i_Malmo.pdf'),
(183, 41, '2010-04-14', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Malmo.pdf'),
(184, 41, '2010-05-04', 'Kalmar', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Kalmar.pdf'),
(185, 41, '2010-04-08', 'Helsingborg', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Helsingborg.pdf'),
(186, 25, '2010-04-21', 'Simrishamn', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Mattetaget_Simrishamn.pdf'),
(187, 35, '2010-05-11', 'Ulricehamn', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/Utbildningskvall_i_muntlig_matematik_i_Ulricehamn.pdf'),
(189, 45, '2010-05-05', 'Malmö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Malmo_gy.pdf'),
(190, 41, '2010-09-07', 'Växjö', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Vaxjo.pdf'),
(191, 41, '2010-09-08', 'Jönköping', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Jonkoping.pdf'),
(192, 41, '2010-09-01', 'Norrköping', '', 'http://www.xn--utbildningsgldje-7nb.nu/pdf/2-dagars_kurs_Norrkoping.pdf'),
(232, 49, '2011-02-01', 'Kristianstad', '', 'http://www.utbildningsglädje.nu/pdf/MasvKristianstad.pdf'),
(231, 49, '2010-12-08', 'Höör', '', 'http://www.utbildningsglädje.nu/pdf/MasvHoor.pdf'),
(228, 41, '2010-10-18', 'Malmö', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Malmo.pdf'),
(197, 46, '2010-01-05', 'Halmstad', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Halmstad.pdf'),
(198, 46, '2010-10-05', 'Halmstad', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Halmstad.pdf'),
(199, 46, '2010-11-25', 'Helsingborg', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Helsingborg.pdf'),
(200, 46, '2010-11-09', 'Hässleholm', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Hassleholm.pdf'),
(201, 46, '2010-10-21', 'Ystad', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Ystad.pdf'),
(202, 46, '2010-12-07', 'Kristianstad', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Kristianstad.pdf'),
(207, 39, '2010-10-20', 'Växjö', '', 'http://www.utbildningsglädje.nu/pdf/Mattepasar_Vaxjo.pdf'),
(204, 19, '2010-12-06', 'Helsingborg', '', 'http://www.utbildningsglädje.nu/pdf/Matematiken_i_framtiden_Helsingborg.pdf'),
(206, 39, '0000-00-00', 'Jönköping', '', 'http://www.utbildningsglädje.nu/pdf/Mattepasar_Jonkoping.pdf'),
(208, 39, '2010-10-21', 'Jönköping', '', 'http://www.utbildningsglädje.nu/pdf/Mattepasar_Jonkoping.pdf'),
(209, 35, '2010-10-06', 'Ljungby', '', 'http://www.utbildningsglädje.nu/pdf/Muntlig_Ma_Ljungby.pdf'),
(210, 19, '2010-10-12', 'Sjöbo', '', 'http://www.utbildningsglädje.nu/pdf/Matematiken_i_framtiden_Sjobo.pdf'),
(211, 35, '2010-10-13', 'Ängelholm', '', 'http://www.utbildningsglädje.nu/pdf/Muntlig_Ma_Angelholm.pdf'),
(212, 19, '2010-10-18', 'Malmö', '', 'http://www.utbildningsglädje.nu/pdf/Matematiken_i_framtiden_Malmo.pdf'),
(213, 35, '0000-00-00', '2010-10-25', '', 'http://www.utbildningsglädje.nu/pdf/Muntlig_Ma_Simrishamn.pdf'),
(247, 49, '2011-03-24', 'Hässleholm', '', 'http://www.utbildningsglädje.nu/pdf/MasvHassleholm.pdf'),
(215, 19, '2010-11-09', 'Vellinge', '', 'http://www.utbildningsglädje.nu/pdf/Matematiken_i_framtiden_Vellinge.pdf'),
(216, 35, '2010-11-18', 'Landskrona', '', 'http://www.utbildningsglädje.nu/pdf/Muntlig_Ma_Landskrona.pdf'),
(217, 35, '2010-11-24', 'Hässleholm', '', 'http://www.utbildningsglädje.nu/pdf/Muntlig_Ma_Hassleholm.pdf'),
(218, 47, '2010-10-21', 'Lund', '', 'http://www.utbildningsglädje.nu/pdf/Drama_for_pedagoger_Lund.pdf'),
(219, 47, '2010-11-22', 'Hässleholm', '', 'http://www.utbildningsglädje.nu/pdf/Drama_for_pedagoger_Hassleholm.pdf'),
(229, 49, '2011-01-25', 'Båstad', '', 'http://www.utbildningsglädje.nu/pdf/MasvBastad.pdf'),
(222, 41, '2010-11-15', 'Stockholm', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Stockholm.pdf'),
(224, 41, '2010-11-16', 'Uppsala', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Uppsala.pdf'),
(225, 48, '2010-11-10', 'Malmö', '', 'http://www.utbildningsglädje.nu/pdf/Entrepr_Malmo.pdf'),
(226, 48, '2010-11-17', 'Ystad', '', 'http://www.utbildningsglädje.nu/pdf/Entrepr_Ystad.pdf'),
(227, 48, '2010-12-01', 'Varberg', '', 'http://www.utbildningsglädje.nu/pdf/Entrepr_Varberg.pdf'),
(233, 49, '2010-11-29', 'Laholm', '', 'http://www.utbildningsglädje.nu/pdf/MasvLaholm.pdf'),
(234, 49, '2010-12-02', 'Lomma', '', 'http://www.utbildningsglädje.nu/pdf/MasvLomma.pdf'),
(235, 49, '2010-11-23', 'Lund', '', 'http://www.utbildningsglädje.nu/pdf/MasvLund.pdf'),
(236, 49, '2011-01-19', 'Malmö', '', 'http://www.utbildningsglädje.nu/pdf/MasvMalmo.pdf'),
(246, 49, '2011-03-15', 'Trelleborg', '', 'http://www.utbildningsglädje.nu/pdf/MasvTrelleborg.pdf'),
(239, 49, '2011-02-21', 'Göteborg', '', 'http://www.utbildningsglädje.nu/pdf/MasvGoteborg.pdf'),
(241, 45, '2011-02-22', 'Göteborg', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Goteborg_gy.pdf'),
(242, 45, '2011-02-15', 'Malmö', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Malmo_gy.pdf'),
(248, 49, '2011-03-31', 'Laholm', '', 'http://www.utbildningsglädje.nu/pdf/MasvLaholm.pdf'),
(244, 46, '2011-02-02', 'Trelleborg', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Trelleborg.pdf'),
(245, 46, '2011-02-01', 'Vellinge', '', 'http://www.utbildningsglädje.nu/pdf/Larstilar_Vellinge.pdf'),
(249, 49, '2011-04-06', 'Alvesta', '', 'http://www.utbildningsglädje.nu/pdf/MasvAlvesta.pdf'),
(250, 49, '2011-04-14', 'Falkenberg', '', 'http://www.utbildningsglädje.nu/pdf/MasvFalkenberg.pdf'),
(251, 49, '2011-04-18', 'Kristinehamn', '', 'http://www.utbildningsglädje.nu/pdf/MasvKristinehamn.pdf'),
(252, 49, '2011-04-19', 'Karlstad', '', 'http://www.utbildningsglädje.nu/pdf/MasvKarlstad.pdf'),
(253, 49, '2011-04-20', 'Arvika', '', 'http://www.utbildningsglädje.nu/pdf/MasvArvika.pdf'),
(254, 49, '2011-05-03', 'Varberg', '', 'http://www.utbildningsglädje.nu/pdf/MasvVarberg.pdf'),
(255, 49, '2011-05-10', 'Ulricehamn', '', 'http://www.utbildningsglädje.nu/pdf/MasvUlricehamn.pdf'),
(256, 41, '2011-04-11', 'Göteborg', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Goteborg.pdf'),
(257, 41, '2011-04-28', 'Stockholm', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Stockholm.pdf'),
(258, 49, '2011-12-06', 'Borås', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Boras.pdf'),
(259, 49, '2011-10-19', 'Halmstad', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Halmstad.pdf'),
(260, 49, '2011-10-25', 'Kinna', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Kinna.pdf'),
(261, 49, '2011-11-30', 'Kristianstad', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Kristianstad.pdf'),
(262, 49, '2011-11-23', 'Kävlinge', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Kavlinge.pdf'),
(263, 49, '2011-11-16', 'Lund', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Lund.pdf'),
(264, 49, '2011-11-09', 'Värnamo', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Varnamo.pdf'),
(265, 49, '2011-10-05', 'Växjö', '', 'http://www.utbildningsglädje.nu/pdf/Masv_Vaxjo.pdf'),
(266, 41, '2011-10-03', 'Stockholm', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Stockholm.pdf'),
(267, 41, '2011-10-10', 'Malmö', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Malmo.pdf'),
(268, 41, '2011-09-26', 'Göteborg', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Goteborg.pdf'),
(269, 41, '2011-11-15', 'Lund', '', 'http://www.utbildningsglädje.nu/pdf/2-dagars_kurs_Lund.pdf'),
(270, 50, '2011-09-13', 'Malmö', '', 'http://www.utbildningsglädje.nu/pdf/em_kurs_Malmo.pdf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
