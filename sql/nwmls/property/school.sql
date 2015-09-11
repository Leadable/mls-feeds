--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.5
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-09-11 12:48:28 EDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = nwmls, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 670 (class 1259 OID 299591258)
-- Name: school; Type: TABLE; Schema: nwmls; Owner: -; Tablespace: 
--

CREATE TABLE school (
    "SchoolDistrictCode" text,
    "SchoolDistrictDescription" text
);


--
-- TOC entry 8627 (class 0 OID 299591258)
-- Dependencies: 670
-- Data for Name: school; Type: TABLE DATA; Schema: nwmls; Owner: -
--

INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KELR', 'Keller');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LCH', 'Lake Chelan');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MABT', 'Mabton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MK', 'Mary M. Knight #311');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MUK', 'Mukilteo');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NAP', 'Napavine');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NAS', 'Naselle-Grays River');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NAVY', 'Naches Valley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NBC', 'North Beach');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NES', 'Nespelem');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NEWP', 'Newport');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NFRA', 'North Franklin');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NK', 'North Kitsap #400');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NM', 'North Mason #403');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NMFS', 'Nine Mile Falls');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NOO', 'Nooksack Valley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NPRT', 'Northport');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NRV', 'North River');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NTH', 'Northshore');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('NTN', 'North Thurston');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OAK', 'Oakville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OAKS', 'Oakesdale');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OCB', 'Ocean Beach');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OCO', 'Ocosta');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ODES', 'Odessa');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OH', 'Oak Harbor');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OKA', 'Okanogan');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OLY', 'Olympia');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OMA', 'Omak');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ONA', 'Onalaska');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ONCR', 'Onion Creek');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ORC', 'Orcas Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ORCH', 'Orchard Prairie');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ORIE', 'Orient');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ORO', 'Orondo');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ORT', 'Orting');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OTHE', 'Othello');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OTHR', 'Other');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('OVL', 'Oroville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PAL', 'Palisades');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PALO', 'Palouse');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PASC', 'Pasco');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PAT', 'Pateros');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PATS', 'Paterson');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PE', 'Pe Ell');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PEN', 'Peninsula');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PI', 'Pioneer #402');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('POME', 'Pomeroy');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PRES', 'Prescott');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PROS', 'Prosser');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PTA', 'Port Angeles');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PTT', 'Port Townsend #50');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PULL', 'Pullman');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('PUY', 'Puyallup');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('QNC', 'Quincy');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('QTS', 'Queets-Clearwater');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('QUI', 'Quinault');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('QUL', 'Quilcene');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('QUT', 'Quillayute');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RAI', 'Rainier');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RAY', 'Raymond');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('REAR', 'Reardan-Edwall');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('REN', 'Renton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('REPU', 'Republic');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RICH', 'Richland');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RID', 'Ridgefield');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RITZ', 'Ritzville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ROC', 'Rochester');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ROOS', 'Roosevelt');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ROSA', 'Rosalia');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RSID', 'Riverside');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RVW', 'Riverview');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('RYL', 'Royal');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SAN', 'San Juan Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SAT', 'Satsop');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SB', 'South Bend');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SDW', 'Sedro Woolley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SEA', 'Seattle');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SELA', 'Selah');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SELK', 'Selkirk');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SEQ', 'Sequim');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SHL', 'Shelton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SHW', 'Shaw Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SK', 'South Kitsap');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SKM', 'Skamania');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SKY', 'Skykomish');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SNO', 'Snohomish');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SPL', 'Soap Lake');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SPOK', 'Spokane');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SPRA', 'Sprague');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SRI', 'Shoreline');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SS', 'South Side #42');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SSID', 'Sunnyside');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ST', 'Stanwood');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('STAR', 'Star');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('STBU', 'Starbuck');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('STE', 'Steilacoom Historica');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('STEP', 'Steptoe');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('STH', 'Stehekin');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('STJO', 'St. John');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('STV', 'Stevenson-Carson');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SUL', 'Sultan');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SUM', 'Sumner');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SUMM', 'Summit Valley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SVS', 'Snoqualmie Valley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('SWI', 'South Whidbey Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TAC', 'Tacoma');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TEKO', 'Tekoa');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TEN', 'Tenino');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('THL', 'Taholah');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('THO', 'Thorp');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('THS', 'Tahoma');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TOL', 'Toledo');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TOPP', 'Toppenish');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TOU', 'Toutle Lake');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TOUC', 'Touchet');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TROU', 'Trout Lake');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TSK', 'Tonasket');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TUK', 'Tukwila');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('TUM', 'Tumwater');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('VDR', 'Vader');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('VSH', 'Vashon Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('AUB', 'Auburn');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BE', 'Bellevue');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BEL', 'Bellingham');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BENG', 'Benge');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BG', 'Battle Ground');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BICK', 'Bickleton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BIS', 'Bainbridge Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BLN', 'Blaine');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BOI', 'Boistfort');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BRG', 'Bridgeport');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BRI', 'Brinnon');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BRL', 'Burlington');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BRM', 'Bremerton #100c');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BRW', 'Brewster');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('BTH', 'Bethel');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CAM', 'Camas');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CAS', 'Cashmere');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CEN', 'Centralia');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CENT', 'Centerville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CENV', 'Central Valley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CHE', 'Chehalis');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CHEN', 'Cheney');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CURL', 'Curlew');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CUSI', 'Cusick');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CWY', 'Conway');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('DAM', 'Damman');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('DAR', 'Darrington');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('DAVE', 'Davenport');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('DAYT', 'Dayton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('DGR', 'Dieringer');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('DIXI', 'Dixie');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('DPRK', 'Deer Park');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EAS', 'Easton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EAT', 'Eatonville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ED', 'Edmonds');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ELM', 'Elma');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ELN', 'Ellensburg');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EMT', 'Eastmont');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ENDI', 'Endicott');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ENM', 'Enumclaw');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ENT', 'Entiat');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CHEW', 'Chewelah');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CHI', 'Chimacum #49');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CK', 'Central Kitsap #401');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CLAR', 'Clarkston');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CLE', 'Cle Elum-Roslyn');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CLH', 'Coulee-Hartline');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CLP', 'Clover Park');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('COFX', 'Colfax');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('COLB', 'Columbia - Burbank');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('COLH', 'Columbia - Hunters');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('COLP', 'College Place');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('COLT', 'Colton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('COLV', 'Colville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CON', 'Concrete');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('COS', 'Cosmopolis');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CPF', 'Cape Flattery');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CPV', 'Coupeville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CRB', 'Carbonado');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CRE', 'Creston');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CRES', 'Crescent');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CRK', 'Castle Rock');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('CSC', 'Cascade');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EPH', 'Ephrata');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EV', 'Everett');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EVA', 'Evaline');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EVAL', 'East Valley Spokane');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EVGR', 'Evergreen - Hunters');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EYAK', 'East Valley Yakima');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('FED', 'Federal Way');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('FIF', 'Fife');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('FPS', 'Franklin Pierce');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('FREE', 'Freeman');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GARF', 'Garfield');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GF', 'Granite Falls');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GLEN', 'Glenwood');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GMT', 'Green Mountain');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GOLD', 'Goldendale');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GRC', 'Grand Coulee');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GRF', 'Griffin');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('EVG', 'Evergreen');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('FINL', 'Finley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('FRN', 'Ferndale');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GRGR', 'Granger');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GRP', 'Grapeview #54');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('UGAP', 'Union Gap');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('UNP', 'University Place');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('VALY', 'Valley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('VAN', 'Vancouver');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WAH', 'Wahkiakum');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WAIT', 'Waitsburg');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WAPA', 'Wapato');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WAS', 'Washougal');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WAWA', 'Walla Walla');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WDL', 'Woodland');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WEN', 'Wenatchee');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WHR', 'White River');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WHT', 'White Pass');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WILB', 'Wilbur');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WIN', 'Winlock');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WIS', 'Wishkah');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WISH', 'Wishram');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WLC', 'Wilson Creek');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('YEL', 'Yelm');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ZILA', 'Zillah');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('00', 'Not Known');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ABR', 'Aberdeen');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('AD', 'Adna');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ALMI', 'Almira');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ANA', 'Anacortes');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('AR', 'Arlington');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ASOT', 'Asotin-Anatone');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WELL', 'Wellpinit');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WLP', 'Willapa');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WLU', 'Wahluke');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WRD', 'Warden');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WSAL', 'White Salmon');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WTUC', 'Washtucna');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WV', 'Waterville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WVAL', 'West Valley Spokane');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('WYAK', 'West Valley Yakima');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('YAKI', 'Yakima');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GRNO', 'Great Northern');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('GRVW', 'Grandview');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('HARR', 'Harrington');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('HC', 'Hood Canal #404');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('HGL', 'Highline');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('HLND', 'Highland');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('HOC', 'Hockinson');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('HOQ', 'Hoquiam');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('INCH', 'Inchelium');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('IND', 'Index');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('ISS', 'Issaquah');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KAHL', 'Kahlotus');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KAL', 'Kalama');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KEL', 'Kelso');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KENN', 'Kennewick');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KETF', 'Kettle Falls');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KION', 'Kiona-Benton City');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KLIC', 'Klickitat');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KNT', 'Kent');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('KTS', 'Kittitas');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LAC', 'La Conner');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LACS', 'Lacrosse');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LAMO', 'Lamont');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LC', 'La Center');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LGV', 'Longview');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LIBR', 'Liberty');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LIND', 'Lind');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LKD', 'Lakewood');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LKW', 'Lake Washington');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LOON', 'Loon Lake');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LPZ', 'Lopez Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LS', 'Lake Stevens');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LYLE', 'Lyle');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('LYN', 'Lynden');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MAR', 'Marysville');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MARW', 'Mary Walker');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MCC', 'McCleary');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MEAD', 'Mead');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MEDL', 'Medical Lake');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MER', 'Meridian');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MET', 'Methow Valley');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MIS', 'Mercer Island');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MLA', 'Mill A');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MLK', 'Moses Lake');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MNS', 'Manson');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MON', 'Monroe');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MOR', 'Morton');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MOS', 'Mossyrock');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MOT', 'Montesano');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MSF', 'Mansfield');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MTAD', 'Mount Adams');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MTB', 'Mount Baker');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MTP', 'Mount Pleasant');
INSERT INTO school ("SchoolDistrictCode", "SchoolDistrictDescription") VALUES ('MTV', 'Mount Vernon');


-- Completed on 2015-09-11 12:48:35 EDT

--
-- PostgreSQL database dump complete
--

