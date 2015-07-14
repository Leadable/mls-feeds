-- START __major_area
DROP FUNCTION IF EXISTS mtrmls.fn_mtrmls_major_area(text, text, text) CASCADE;
CREATE FUNCTION
  mtrmls.fn_mtrmls_major_area(county text, city text, zip text)
  RETURNS text AS
$$
BEGIN
  CASE
    WHEN ( city = 'Beechgrove' AND county = 'Bedford County' AND zip = '37018' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Bell Buckle' AND county = 'Bedford County' AND zip = '37020' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Chapel Hill' AND county = 'Bedford County' AND zip = '37034' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Christiana' AND county = 'Bedford County' AND zip = '37018' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Christiana' AND county = 'Bedford County' AND zip = '37020' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Eagleville' AND county = 'Bedford County' AND zip = '37060' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Lewisburg' AND county = 'Bedford County' AND zip = '37091' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Lewisburg' AND county = 'Bedford County' AND zip = '37160' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Normandy' AND county = 'Bedford County' AND zip = '37360' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Petersburg' AND county = 'Bedford County' AND zip = '37144' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37020' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37091' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37160' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37162' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Tullahoma' AND county = 'Bedford County' AND zip = '37160' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Tullahoma' AND county = 'Bedford County' AND zip = '37388' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Unionville' AND county = 'Bedford County' AND zip = '37180' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Wartrace' AND county = 'Bedford County' AND zip = '37183' ) THEN
      RETURN 'Bedford County';
    WHEN ( city = 'Big Sandy' AND county = 'Benton County' AND zip = '38221' ) THEN
      RETURN 'Benton County';
    WHEN ( city = 'Camden' AND county = 'Benton County' AND zip = '38320' ) THEN
      RETURN 'Benton County';
    WHEN ( city = 'Holladay' AND county = 'Benton County' AND zip = '38341' ) THEN
      RETURN 'Benton County';
    WHEN ( city = 'Sugar Tree' AND county = 'Benton County' AND zip = '38380' ) THEN
      RETURN 'Benton County';
    WHEN ( city = 'Graysville' AND county = 'Bledsoe County' AND zip = '37338' ) THEN
      RETURN 'Bledsoe County';
    WHEN ( city = 'Spring City' AND county = 'Bledsoe County' AND zip = '37351' ) THEN
      RETURN 'Bledsoe County';
    WHEN ( city = 'Auburntown' AND county = 'Cannon County' AND zip = '37016' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Bradyville' AND county = 'Cannon County' AND zip = '37026' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Gassaway' AND county = 'Cannon County' AND zip = '37095' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Liberty' AND county = 'Cannon County' AND zip = '37095' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Mcminnville' AND county = 'Cannon County' AND zip = '37110' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Morrison' AND county = 'Cannon County' AND zip = '37357' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Readyville' AND county = 'Cannon County' AND zip = '37149' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Smithville' AND county = 'Cannon County' AND zip = '37166' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Woodbury' AND county = 'Cannon County' AND zip = '37166' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Woodbury' AND county = 'Cannon County' AND zip = '37190' ) THEN
      RETURN 'Cannon County';
    WHEN ( city = 'Bruceton' AND county = 'Carroll County' AND zip = '38317' ) THEN
      RETURN 'Carroll County';
    WHEN ( city = 'Buena Vista' AND county = 'Carroll County' AND zip = '38318' ) THEN
      RETURN 'Carroll County';
    WHEN ( city = 'Clarksburg' AND county = 'Carroll County' AND zip = '38324' ) THEN
      RETURN 'Carroll County';
    WHEN ( city = 'Holladay' AND county = 'Carroll County' AND zip = '38341' ) THEN
      RETURN 'Carroll County';
    WHEN ( city = 'Mckenzie' AND county = 'Carroll County' AND zip = '38201' ) THEN
      RETURN 'Carroll County';
    WHEN ( city = 'Ashland City' AND county = 'Cheatham County' AND zip = '37015' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Ashland City' AND county = 'Cheatham County' AND zip = '37043' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Cedar Hill' AND county = 'Cheatham County' AND zip = '37032' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Chapmansboro' AND county = 'Cheatham County' AND zip = '37035' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Charlotte' AND county = 'Cheatham County' AND zip = '37036' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Clarksville' AND county = 'Cheatham County' AND zip = '37043' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Joelton' AND county = 'Cheatham County' AND zip = '37080' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Kingston Springs' AND county = 'Cheatham County' AND zip = '37082' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Pegram' AND county = 'Cheatham County' AND zip = '37143' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Pleasantview' AND county = 'Cheatham County' AND zip = '37143' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Pleasant View' AND county = 'Cheatham County' AND zip = '37146' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'White Bluff' AND county = 'Cheatham County' AND zip = '37187' ) THEN
      RETURN 'Cheatham County';
    WHEN ( city = 'Allons' AND county = 'Clay County' AND zip = '38541' ) THEN
      RETURN 'Clay County';
    WHEN ( city = 'Celina' AND county = 'Clay County' AND zip = '38551' ) THEN
      RETURN 'Clay County';
    WHEN ( city = 'Hilham' AND county = 'Clay County' AND zip = '38568' ) THEN
      RETURN 'Clay County';
    WHEN ( city = 'Monroe' AND county = 'Clay County' AND zip = '38573' ) THEN
      RETURN 'Clay County';
    WHEN ( city = 'Moss' AND county = 'Clay County' AND zip = '38575' ) THEN
      RETURN 'Clay County';
    WHEN ( city = 'Red Boiling Springs' AND county = 'Clay County' AND zip = '37150' ) THEN
      RETURN 'Clay County';
    WHEN ( city = 'Beechgrove' AND county = 'Coffee County' AND zip = '37018' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Beech Grove' AND county = 'Coffee County' AND zip = '37018' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Bradyville' AND county = 'Coffee County' AND zip = '37026' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Christiana' AND county = 'Coffee County' AND zip = '37037' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Estill Springs' AND county = 'Coffee County' AND zip = '37330' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Hillsboro' AND county = 'Coffee County' AND zip = '37342' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Manchester' AND county = 'Coffee County' AND zip = '37349' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Manchester' AND county = 'Coffee County' AND zip = '37355' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Morrison' AND county = 'Coffee County' AND zip = '37355' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Morrison' AND county = 'Coffee County' AND zip = '37357' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Normandy' AND county = 'Coffee County' AND zip = '37360' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Tullahoma' AND county = 'Coffee County' AND zip = '37360' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Tullahoma' AND county = 'Coffee County' AND zip = '37388' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Wartrace' AND county = 'Coffee County' AND zip = '37183' ) THEN
      RETURN 'Coffee County';
    WHEN ( city = 'Crossville' AND county = 'Cumberland County' AND zip = '38555' ) THEN
      RETURN 'Cumberland County';
    WHEN ( city = 'Crossville' AND county = 'Cumberland County' AND zip = '38558' ) THEN
      RETURN 'Cumberland County';
    WHEN ( city = 'Crossville' AND county = 'Cumberland County' AND zip = '38572' ) THEN
      RETURN 'Cumberland County';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37011' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37013' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37211' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37213' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Ashland City' AND county = 'Davidson County' AND zip = '37015' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Brentwood' AND county = 'Davidson County' AND zip = '37027' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Cane Ridge' AND county = 'Davidson County' AND zip = '37011' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Cane Ridge' AND county = 'Davidson County' AND zip = '37013' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Franklin' AND county = 'Davidson County' AND zip = '37064' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Goodlettsville' AND county = 'Davidson County' AND zip = '37072' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Goodlettsville' AND county = 'Davidson County' AND zip = '37076' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Hermitage' AND county = 'Davidson County' AND zip = '37076' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Joelton' AND county = 'Davidson County' AND zip = '37080' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Madison' AND county = 'Davidson County' AND zip = '37115' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Madison' AND county = 'Davidson County' AND zip = '37116' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Madison' AND county = 'Davidson County' AND zip = '37138' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Mount Juliet' AND county = 'Davidson County' AND zip = '37122' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37011' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37013' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37027' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37116' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37122' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37201' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37202' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37203' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37204' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37205' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37206' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37207' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37208' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37209' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37210' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37211' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37212' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37213' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37214' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37215' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37216' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37217' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37218' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37219' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37220' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37221' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37222' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37224' ) THEN
      RETURN 'Nashville';
    WHEN ( city = 'Nolensville' AND county = 'Davidson County' AND zip = '37135' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Oak Hill' AND county = 'Davidson County' AND zip = '37027' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Old Hickory' AND county = 'Davidson County' AND zip = '37138' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Pegram' AND county = 'Davidson County' AND zip = '37143' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Whites Creek' AND county = 'Davidson County' AND zip = '37189' ) THEN
      RETURN 'Davidson County';
    WHEN ( city = 'Bath Springs' AND county = 'Decatur County' AND zip = '38311' ) THEN
      RETURN 'Decatur County';
    WHEN ( city = 'Decaturville' AND county = 'Decatur County' AND zip = '38329' ) THEN
      RETURN 'Decatur County';
    WHEN ( city = 'Parsons' AND county = 'Decatur County' AND zip = '38363' ) THEN
      RETURN 'Decatur County';
    WHEN ( city = 'Scotts Hill' AND county = 'Decatur County' AND zip = '38374' ) THEN
      RETURN 'Decatur County';
    WHEN ( city = 'Sugar Tree' AND county = 'Decatur County' AND zip = '38380' ) THEN
      RETURN 'Decatur County';
    WHEN ( city = 'Alexandria' AND county = 'Dekalb County' AND zip = '37012' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Baxter' AND county = 'Dekalb County' AND zip = '37012' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Baxter' AND county = 'Dekalb County' AND zip = '38544' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Buffalo Valley' AND county = 'Dekalb County' AND zip = '38548' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Dowelltown' AND county = 'Dekalb County' AND zip = '37059' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Doweltown' AND county = 'Dekalb County' AND zip = '37059' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Hickman' AND county = 'Dekalb County' AND zip = '38567' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Lancaster' AND county = 'Dekalb County' AND zip = '38569' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Liberty' AND county = 'Dekalb County' AND zip = '37095' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Riverwatch' AND county = 'Dekalb County' AND zip = '38583' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Silver Point' AND county = 'Dekalb County' AND zip = '38582' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Smithville' AND county = 'Dekalb County' AND zip = '37166' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Sparta' AND county = 'Dekalb County' AND zip = '37166' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Sparta' AND county = 'Dekalb County' AND zip = '38583' ) THEN
      RETURN 'Dekalb County';
    WHEN ( city = 'Bon Aqua' AND county = 'Dickson County' AND zip = '37025' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Burns' AND county = 'Dickson County' AND zip = '37029' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Burns' AND county = 'Dickson County' AND zip = '37055' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Burns / Bon Aqua' AND county = 'Dickson County' AND zip = '37025' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Charlotte' AND county = 'Dickson County' AND zip = '37029' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Charlotte' AND county = 'Dickson County' AND zip = '37036' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Charlotte' AND county = 'Dickson County' AND zip = '37055' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Cumberland Furnace' AND county = 'Dickson County' AND zip = '37051' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Cunningham' AND county = 'Dickson County' AND zip = '37052' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Dickson' AND county = 'Dickson County' AND zip = '37052' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Dickson' AND county = 'Dickson County' AND zip = '37055' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Fairview' AND county = 'Dickson County' AND zip = '37062' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Fairview-Burns' AND county = 'Dickson County' AND zip = '37062' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Mcewen' AND county = 'Dickson County' AND zip = '37101' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Slayden' AND county = 'Dickson County' AND zip = '37165' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Vanleer' AND county = 'Dickson County' AND zip = '37181' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'White Bluff' AND county = 'Dickson County' AND zip = '37187' ) THEN
      RETURN 'Dickson County';
    WHEN ( city = 'Jamestown' AND county = 'Fentress County' AND zip = '38556' ) THEN
      RETURN 'Fentress County';
    WHEN ( city = 'Wilder' AND county = 'Fentress County' AND zip = '38589' ) THEN
      RETURN 'Fentress County';
    WHEN ( city = 'Belvidere' AND county = 'Franklin County' AND zip = '37306' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Cowan' AND county = 'Franklin County' AND zip = '37318' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Decherd' AND county = 'Franklin County' AND zip = '37324' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Estill Springs' AND county = 'Franklin County' AND zip = '37330' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Huntland' AND county = 'Franklin County' AND zip = '37345' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Sewanee' AND county = 'Franklin County' AND zip = '37375' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Tullahoma' AND county = 'Franklin County' AND zip = '37388' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Winchester' AND county = 'Franklin County' AND zip = '37330' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Winchester' AND county = 'Franklin County' AND zip = '37352' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Winchester' AND county = 'Franklin County' AND zip = '37398' ) THEN
      RETURN 'Franklin County';
    WHEN ( city = 'Ardmore' AND county = 'Giles County' AND zip = '38449' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Cornersville' AND county = 'Giles County' AND zip = '37047' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Dellrose' AND county = 'Giles County' AND zip = '38455' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Elkton' AND county = 'Giles County' AND zip = '38455' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Ethridge' AND county = 'Giles County' AND zip = '38456' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Frankewing' AND county = 'Giles County' AND zip = '38459' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Goodspring' AND county = 'Giles County' AND zip = '38460' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Lawrenceburg' AND county = 'Giles County' AND zip = '38464' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Leoma' AND county = 'Giles County' AND zip = '38468' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Lynnville' AND county = 'Giles County' AND zip = '38472' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Minor Hill' AND county = 'Giles County' AND zip = '37047' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Minor Hill' AND county = 'Giles County' AND zip = '38455' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Minor Hill' AND county = 'Giles County' AND zip = '38473' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Petersburg' AND county = 'Giles County' AND zip = '37144' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Prospect' AND county = 'Giles County' AND zip = '38456' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Prospect' AND county = 'Giles County' AND zip = '38477' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Prospect' AND county = 'Giles County' AND zip = '38478' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Pulaski' AND county = 'Giles County' AND zip = '38478' ) THEN
      RETURN 'Giles County';
    WHEN ( city = 'Altamont' AND county = 'Grundy County' AND zip = '37301' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Beersheba Springs' AND county = 'Grundy County' AND zip = '37305' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Coalmont' AND county = 'Grundy County' AND zip = '37313' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Gruetli Laager' AND county = 'Grundy County' AND zip = '37339' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Monteagle' AND county = 'Grundy County' AND zip = '37356' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Morrison' AND county = 'Grundy County' AND zip = '37357' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Palmer' AND county = 'Grundy County' AND zip = '37365' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Pelham' AND county = 'Grundy County' AND zip = '37366' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Tracy City' AND county = 'Grundy County' AND zip = '37387' ) THEN
      RETURN 'Grundy County';
    WHEN ( city = 'Lexington' AND county = 'Henderson County' AND zip = '38351' ) THEN
      RETURN 'Henderson County';
    WHEN ( city = 'Reagan' AND county = 'Henderson County' AND zip = '38368' ) THEN
      RETURN 'Henderson County';
    WHEN ( city = 'Buchanan' AND county = 'Henry County' AND zip = '38222' ) THEN
      RETURN 'Henry County';
    WHEN ( city = 'Cottage Grove' AND county = 'Henry County' AND zip = '38224' ) THEN
      RETURN 'Henry County';
    WHEN ( city = 'Paris' AND county = 'Henry County' AND zip = '38242' ) THEN
      RETURN 'Henry County';
    WHEN ( city = 'Springville' AND county = 'Henry County' AND zip = '38256' ) THEN
      RETURN 'Henry County';
    WHEN ( city = 'Bon Aqua' AND county = 'Hickman County' AND zip = '37025' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Bon Aqua' AND county = 'Hickman County' AND zip = '37098' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Centerville' AND county = 'Hickman County' AND zip = '37033' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Centerville' AND county = 'Hickman County' AND zip = '37137' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Duck River' AND county = 'Hickman County' AND zip = '38454' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Hohenwald' AND county = 'Hickman County' AND zip = '37033' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Lyles' AND county = 'Hickman County' AND zip = '37098' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Lyles' AND county = 'Hickman County' AND zip = '37137' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Mcewen' AND county = 'Hickman County' AND zip = '37101' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Nunnelly' AND county = 'Hickman County' AND zip = '37137' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Nunnely' AND county = 'Hickman County' AND zip = '37055' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Only' AND county = 'Hickman County' AND zip = '37140' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Pleasantville' AND county = 'Hickman County' AND zip = '37033' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Primm Springs' AND county = 'Hickman County' AND zip = '38476' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Primm Springs' AND county = 'Hickman County' AND zip = '38487' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Williamsport' AND county = 'Hickman County' AND zip = '38487' ) THEN
      RETURN 'Hickman County';
    WHEN ( city = 'Cumberland City' AND county = 'Houston County' AND zip = '37050' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Cumberland Furnace' AND county = 'Houston County' AND zip = '37051' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Erin' AND county = 'Houston County' AND zip = '37061' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Mcewen' AND county = 'Houston County' AND zip = '37101' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Stewart' AND county = 'Houston County' AND zip = '37175' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Tennessee Ridge' AND county = 'Houston County' AND zip = '37178' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Vanleer' AND county = 'Houston County' AND zip = '37181' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Waverly' AND county = 'Houston County' AND zip = '37185' ) THEN
      RETURN 'Houston County';
    WHEN ( city = 'Cuba Landing' AND county = 'Humphreys County' AND zip = '37101' ) THEN
      RETURN 'Humphreys County';
    WHEN ( city = 'Hurricane Mills' AND county = 'Humphreys County' AND zip = '37078' ) THEN
      RETURN 'Humphreys County';
    WHEN ( city = 'Mcewen' AND county = 'Humphreys County' AND zip = '37101' ) THEN
      RETURN 'Humphreys County';
    WHEN ( city = 'New Johnsonville' AND county = 'Humphreys County' AND zip = '37134' ) THEN
      RETURN 'Humphreys County';
    WHEN ( city = 'Waverly' AND county = 'Humphreys County' AND zip = '37185' ) THEN
      RETURN 'Humphreys County';
    WHEN ( city = 'Bloomington Springs' AND county = 'Jackson County' AND zip = '38545' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Cookeville' AND county = 'Jackson County' AND zip = '38501' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Gainesboro' AND county = 'Jackson County' AND zip = '38506' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Gainesboro' AND county = 'Jackson County' AND zip = '38562' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Granville' AND county = 'Jackson County' AND zip = '38564' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Hilham' AND county = 'Jackson County' AND zip = '38568' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Pleasant Shade' AND county = 'Jackson County' AND zip = '37145' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Red Boiling Springs' AND county = 'Jackson County' AND zip = '37150' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Whitleyville' AND county = 'Jackson County' AND zip = '38588' ) THEN
      RETURN 'Jackson County';
    WHEN ( city = 'Ethridge' AND county = 'Lawrence County' AND zip = '38456' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Five Points' AND county = 'Lawrence County' AND zip = '38457' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Iron City' AND county = 'Lawrence County' AND zip = '38463' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Lawrenceburg' AND county = 'Lawrence County' AND zip = '38464' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Leoma' AND county = 'Lawrence County' AND zip = '38468' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Loretto' AND county = 'Lawrence County' AND zip = '38469' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Mount Pleasant' AND county = 'Lawrence County' AND zip = '38474' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Saint Joseph' AND county = 'Lawrence County' AND zip = '38481' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Summertown' AND county = 'Lawrence County' AND zip = '38483' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Westpoint' AND county = 'Lawrence County' AND zip = '38486' ) THEN
      RETURN 'Lawrence County';
    WHEN ( city = 'Hampshire' AND county = 'Lewis County' AND zip = '38461' ) THEN
      RETURN 'Lewis County';
    WHEN ( city = 'Hohenwald' AND county = 'Lewis County' AND zip = '38462' ) THEN
      RETURN 'Lewis County';
    WHEN ( city = 'Linden' AND county = 'Lewis County' AND zip = '37096' ) THEN
      RETURN 'Lewis County';
    WHEN ( city = 'Mount Pleasant' AND county = 'Lewis County' AND zip = '38474' ) THEN
      RETURN 'Lewis County';
    WHEN ( city = 'Summertown' AND county = 'Lewis County' AND zip = '38483' ) THEN
      RETURN 'Lewis County';
    WHEN ( city = 'Waynesboro' AND county = 'Lewis County' AND zip = '38485' ) THEN
      RETURN 'Lewis County';
    WHEN ( city = 'Ardmore' AND county = 'Lincoln County' AND zip = '38449' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Dellrose' AND county = 'Lincoln County' AND zip = '38453' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Elora' AND county = 'Lincoln County' AND zip = '37328' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Elora' AND county = 'Lincoln County' AND zip = '37348' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Fayetteville' AND county = 'Lincoln County' AND zip = '37334' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Flintville' AND county = 'Lincoln County' AND zip = '37335' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Frankewing' AND county = 'Lincoln County' AND zip = '38459' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Kelso' AND county = 'Lincoln County' AND zip = '37348' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Mulberry' AND county = 'Lincoln County' AND zip = '37359' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Petersburg' AND county = 'Lincoln County' AND zip = '37144' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Taft' AND county = 'Lincoln County' AND zip = '38488' ) THEN
      RETURN 'Lincoln County';
    WHEN ( city = 'Bethpage' AND county = 'Macon County' AND zip = '37022' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Dixon Springs' AND county = 'Macon County' AND zip = '37057' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Hartsville' AND county = 'Macon County' AND zip = '37074' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Lafayette' AND county = 'Macon County' AND zip = '37022' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Lafayette' AND county = 'Macon County' AND zip = '37083' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Pleasant Shade' AND county = 'Macon County' AND zip = '37145' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Red Boiling Springs' AND county = 'Macon County' AND zip = '37150' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Westmoreland' AND county = 'Macon County' AND zip = '37186' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Whitleyville' AND county = 'Macon County' AND zip = '38588' ) THEN
      RETURN 'Macon County';
    WHEN ( city = 'Monteagle' AND county = 'Marion County' AND zip = '37356' ) THEN
      RETURN 'Marion County';
    WHEN ( city = 'Monteagle' AND county = 'Marion County' AND zip = '37365' ) THEN
      RETURN 'Marion County';
    WHEN ( city = 'Sequatchie' AND county = 'Marion County' AND zip = '37374' ) THEN
      RETURN 'Marion County';
    WHEN ( city = 'Sewanee' AND county = 'Marion County' AND zip = '37375' ) THEN
      RETURN 'Marion County';
    WHEN ( city = 'South Pittsburg' AND county = 'Marion County' AND zip = '37375' ) THEN
      RETURN 'Marion County';
    WHEN ( city = 'South Pittsburg' AND county = 'Marion County' AND zip = '37380' ) THEN
      RETURN 'Marion County';
    WHEN ( city = 'Tracy City' AND county = 'Marion County' AND zip = '37387' ) THEN
      RETURN 'Marion County';
    WHEN ( city = 'Belfast' AND county = 'Marshall County' AND zip = '37019' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Chapel Hill' AND county = 'Marshall County' AND zip = '37034' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Chapel Hill' AND county = 'Marshall County' AND zip = '37091' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'College Grove' AND county = 'Marshall County' AND zip = '37046' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Columbia' AND county = 'Marshall County' AND zip = '38401' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Cornersville' AND county = 'Marshall County' AND zip = '37047' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Culleoka' AND county = 'Marshall County' AND zip = '38451' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Eagleville' AND county = 'Marshall County' AND zip = '37060' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Lewisburg' AND county = 'Marshall County' AND zip = '37019' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Lewisburg' AND county = 'Marshall County' AND zip = '37091' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Petersburg' AND county = 'Marshall County' AND zip = '37144' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Spring Hill' AND county = 'Marshall County' AND zip = '37174' ) THEN
      RETURN 'Marshall County';
    WHEN ( city = 'Columbia' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Culleoka' AND county = 'Maury County' AND zip = '37174' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Culleoka' AND county = 'Maury County' AND zip = '38451' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Hampshire' AND county = 'Maury County' AND zip = '38451' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Hampshire' AND county = 'Maury County' AND zip = '38461' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Lewisburg' AND county = 'Maury County' AND zip = '37091' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Lynnville' AND county = 'Maury County' AND zip = '38472' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Mount Pleasant' AND county = 'Maury County' AND zip = '38474' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Mt Pleasant' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Mt Pleasant' AND county = 'Maury County' AND zip = '38474' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Primm Springs' AND county = 'Maury County' AND zip = '38476' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Santa Fe' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Santa Fe' AND county = 'Maury County' AND zip = '38482' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Spring Hill' AND county = 'Maury County' AND zip = '37174' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Summertown' AND county = 'Maury County' AND zip = '38483' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Williamsport' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Williamsport' AND county = 'Maury County' AND zip = '38487' ) THEN
      RETURN 'Maury County';
    WHEN ( city = 'Adams' AND county = 'Montgomery County' AND zip = '37010' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Ashland City' AND county = 'Montgomery County' AND zip = '37015' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Chapmansboro' AND county = 'Montgomery County' AND zip = '37035' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37010' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37032' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37040' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37041' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37042' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37043' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37044' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville (Adams)' AND county = 'Montgomery County' AND zip = '37010' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Clarksville (Adams)' AND county = 'Montgomery County' AND zip = '37043' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Cumberland City' AND county = 'Montgomery County' AND zip = '37050' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Cumberland Furnace' AND county = 'Montgomery County' AND zip = '37051' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Cunningham' AND county = 'Montgomery County' AND zip = '37052' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Erin' AND county = 'Montgomery County' AND zip = '37061' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Indian Mound' AND county = 'Montgomery County' AND zip = '37079' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Palmyra' AND county = 'Montgomery County' AND zip = '37142' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Southside' AND county = 'Montgomery County' AND zip = '37171' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Woodlawn' AND county = 'Montgomery County' AND zip = '37191' ) THEN
      RETURN 'Montgomery County';
    WHEN ( city = 'Belvidere' AND county = 'Moore County' AND zip = '37306' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Fayetteville' AND county = 'Moore County' AND zip = '37334' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Fayetteville' AND county = 'Moore County' AND zip = '37352' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Lynchburg' AND county = 'Moore County' AND zip = '37352' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Lynchburg' AND county = 'Moore County' AND zip = '37359' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Normandy' AND county = 'Moore County' AND zip = '37352' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Petersburg' AND county = 'Moore County' AND zip = '37144' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Shelbyville' AND county = 'Moore County' AND zip = '37160' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Tullahoma' AND county = 'Moore County' AND zip = '37388' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Winchester' AND county = 'Moore County' AND zip = '37398' ) THEN
      RETURN 'Moore County';
    WHEN ( city = 'Alpine' AND county = 'Overton County' AND zip = '38543' ) THEN
      RETURN 'Overton County';
    WHEN ( city = 'Cookeville' AND county = 'Overton County' AND zip = '38506' ) THEN
      RETURN 'Overton County';
    WHEN ( city = 'Crawford' AND county = 'Overton County' AND zip = '38554' ) THEN
      RETURN 'Overton County';
    WHEN ( city = 'Hilham' AND county = 'Overton County' AND zip = '38568' ) THEN
      RETURN 'Overton County';
    WHEN ( city = 'Livingston' AND county = 'Overton County' AND zip = '38570' ) THEN
      RETURN 'Overton County';
    WHEN ( city = 'Monroe' AND county = 'Overton County' AND zip = '38573' ) THEN
      RETURN 'Overton County';
    WHEN ( city = 'Wilder' AND county = 'Overton County' AND zip = '38589' ) THEN
      RETURN 'Overton County';
    WHEN ( city = 'Centerville' AND county = 'Perry County' AND zip = '37033' ) THEN
      RETURN 'Perry County';
    WHEN ( city = 'Clifton' AND county = 'Perry County' AND zip = '38425' ) THEN
      RETURN 'Perry County';
    WHEN ( city = 'Flatwoods' AND county = 'Perry County' AND zip = '37096' ) THEN
      RETURN 'Perry County';
    WHEN ( city = 'Linden' AND county = 'Perry County' AND zip = '37096' ) THEN
      RETURN 'Perry County';
    WHEN ( city = 'Lobelville' AND county = 'Perry County' AND zip = '37097' ) THEN
      RETURN 'Perry County';
    WHEN ( city = 'Byrdstown' AND county = 'Pickett County' AND zip = '38549' ) THEN
      RETURN 'Pickett County';
    WHEN ( city = 'Monroe' AND county = 'Pickett County' AND zip = '38573' ) THEN
      RETURN 'Pickett County';
    WHEN ( city = 'Baxter' AND county = 'Putnam County' AND zip = '38544' ) THEN
      RETURN 'Putnam County';
    WHEN ( city = 'Bloomington Springs' AND county = 'Putnam County' AND zip = '38545' ) THEN
      RETURN 'Putnam County';
    WHEN ( city = 'Buffalo Valley' AND county = 'Putnam County' AND zip = '38548' ) THEN
      RETURN 'Putnam County';
    WHEN ( city = 'Cookeville' AND county = 'Putnam County' AND zip = '38501' ) THEN
      RETURN 'Putnam County';
    WHEN ( city = 'Cookeville' AND county = 'Putnam County' AND zip = '38506' ) THEN
      RETURN 'Putnam County';
    WHEN ( city = 'Monterey' AND county = 'Putnam County' AND zip = '38574' ) THEN
      RETURN 'Putnam County';
    WHEN ( city = 'Silver Point' AND county = 'Putnam County' AND zip = '38582' ) THEN
      RETURN 'Putnam County';
    WHEN ( city = 'Adams' AND county = 'Robertson County' AND zip = '37010' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Cedar Hill' AND county = 'Robertson County' AND zip = '37032' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Cottontown' AND county = 'Robertson County' AND zip = '37048' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Cross Plains' AND county = 'Robertson County' AND zip = '37049' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Goodlettsville' AND county = 'Robertson County' AND zip = '37072' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Greenbrier' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Greenbrier /Ridgetop' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Greenbrier/Ridgetop' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Orlinda' AND county = 'Robertson County' AND zip = '37141' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Pleasant View' AND county = 'Robertson County' AND zip = '37146' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Portland' AND county = 'Robertson County' AND zip = '37148' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Ridgetop' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Ridgetop' AND county = 'Robertson County' AND zip = '37152' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Springfield' AND county = 'Robertson County' AND zip = '37172' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Springfield/Cross Pl' AND county = 'Robertson County' AND zip = '37172' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'White House' AND county = 'Robertson County' AND zip = '37048' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'White House' AND county = 'Robertson County' AND zip = '37172' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'White House' AND county = 'Robertson County' AND zip = '37188' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'White House, Springf' AND county = 'Robertson County' AND zip = '37188' ) THEN
      RETURN 'Robertson County';
    WHEN ( city = 'Arrington' AND county = 'Rutherford County' AND zip = '37014' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Bell Buckle' AND county = 'Rutherford County' AND zip = '37020' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Christiana' AND county = 'Rutherford County' AND zip = '37020' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Christiana' AND county = 'Rutherford County' AND zip = '37037' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'College Grove' AND county = 'Rutherford County' AND zip = '37046' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Eagleville' AND county = 'Rutherford County' AND zip = '37060' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Eagleville' AND county = 'Rutherford County' AND zip = '37160' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Lascassas' AND county = 'Rutherford County' AND zip = '37085' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Lavergne' AND county = 'Rutherford County' AND zip = '37086' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Milton' AND county = 'Rutherford County' AND zip = '37118' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Mount Juliet' AND county = 'Rutherford County' AND zip = '37122' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37127' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37128' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37129' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37130' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37131' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37149' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Nolensville' AND county = 'Rutherford County' AND zip = '37086' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Nolensville' AND county = 'Rutherford County' AND zip = '37135' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Readyville' AND county = 'Rutherford County' AND zip = '37149' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Rockvale' AND county = 'Rutherford County' AND zip = '37153' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Shelbyville' AND county = 'Rutherford County' AND zip = '37160' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Smyrna' AND county = 'Rutherford County' AND zip = '37086' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Smyrna' AND county = 'Rutherford County' AND zip = '37167' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Unionville' AND county = 'Rutherford County' AND zip = '37180' ) THEN
      RETURN 'Rutherford County';
    WHEN ( city = 'Dunlap' AND county = 'Sequatchie County' AND zip = '37327' ) THEN
      RETURN 'Sequatchie County';
    WHEN ( city = 'Alexandria' AND county = 'Smith County' AND zip = '37012' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Brush Creek' AND county = 'Smith County' AND zip = '38547' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Buffalo Valley' AND county = 'Smith County' AND zip = '38548' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Carthage' AND county = 'Smith County' AND zip = '37012' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Carthage' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Carthage/Rome' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Carthage/Tanglewood' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Chestnut Mound' AND county = 'Smith County' AND zip = '38552' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Dixon Springs' AND county = 'Smith County' AND zip = '37057' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Elmwood' AND county = 'Smith County' AND zip = '38560' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Gordonsville' AND county = 'Smith County' AND zip = '38563' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Hickman' AND county = 'Smith County' AND zip = '38567' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Lancaster' AND county = 'Smith County' AND zip = '38569' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Lebanon' AND county = 'Smith County' AND zip = '37087' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Lebanon' AND county = 'Smith County' AND zip = '37090' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Pleasant Shade' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Pleasant Shade' AND county = 'Smith County' AND zip = '37145' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Pleasant Shade' AND county = 'Smith County' AND zip = '38547' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Riddleton' AND county = 'Smith County' AND zip = '37145' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Riddleton' AND county = 'Smith County' AND zip = '37151' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Watertown' AND county = 'Smith County' AND zip = '37184' ) THEN
      RETURN 'Smith County';
    WHEN ( city = 'Big Rock' AND county = 'Stewart County' AND zip = '37023' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Bumpus Mills' AND county = 'Stewart County' AND zip = '37028' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Bumpus Mills' AND county = 'Stewart County' AND zip = '37050' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Cumberland City' AND county = 'Stewart County' AND zip = '37050' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Dover' AND county = 'Stewart County' AND zip = '37023' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Dover' AND county = 'Stewart County' AND zip = '37058' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Indian Mound' AND county = 'Stewart County' AND zip = '37079' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Stewart' AND county = 'Stewart County' AND zip = '37175' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Tennessee Ridge' AND county = 'Stewart County' AND zip = '37178' ) THEN
      RETURN 'Stewart County';
    WHEN ( city = 'Bethpage' AND county = 'Sumner County' AND zip = '37022' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Bethpage' AND county = 'Sumner County' AND zip = '37031' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Castalian Springs' AND county = 'Sumner County' AND zip = '37031' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Cottontown' AND county = 'Sumner County' AND zip = '37048' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Gallatin' AND county = 'Sumner County' AND zip = '37022' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Gallatin' AND county = 'Sumner County' AND zip = '37066' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Gallatin' AND county = 'Sumner County' AND zip = '37075' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Goodlettsville' AND county = 'Sumner County' AND zip = '37072' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Goodlettsville Mille' AND county = 'Sumner County' AND zip = '37072' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Hendersonville' AND county = 'Sumner County' AND zip = '37066' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Hendersonville' AND county = 'Sumner County' AND zip = '37075' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Hendersonville' AND county = 'Sumner County' AND zip = '37119' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Millersville' AND county = 'Sumner County' AND zip = '37072' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Portland' AND county = 'Sumner County' AND zip = '37075' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Portland' AND county = 'Sumner County' AND zip = '37148' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Westmoreland' AND county = 'Sumner County' AND zip = '37022' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Westmoreland' AND county = 'Sumner County' AND zip = '37186' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'White House' AND county = 'Sumner County' AND zip = '37048' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'White House' AND county = 'Sumner County' AND zip = '37188' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'White House Cottonto' AND county = 'Sumner County' AND zip = '37048' ) THEN
      RETURN 'Sumner County';
    WHEN ( city = 'Bethpage' AND county = 'Trousdale County' AND zip = '37022' ) THEN
      RETURN 'Trousdale County';
    WHEN ( city = 'Castalian Springs' AND county = 'Trousdale County' AND zip = '37031' ) THEN
      RETURN 'Trousdale County';
    WHEN ( city = 'Dixon Springs' AND county = 'Trousdale County' AND zip = '37057' ) THEN
      RETURN 'Trousdale County';
    WHEN ( city = 'Hartsville' AND county = 'Trousdale County' AND zip = '37057' ) THEN
      RETURN 'Trousdale County';
    WHEN ( city = 'Hartsville' AND county = 'Trousdale County' AND zip = '37074' ) THEN
      RETURN 'Trousdale County';
    WHEN ( city = 'Lebanon' AND county = 'Trousdale County' AND zip = '37087' ) THEN
      RETURN 'Trousdale County';
    WHEN ( city = 'Doyle' AND county = 'Van Buren County' AND zip = '38559' ) THEN
      RETURN 'Van Buren County';
    WHEN ( city = 'Mcminnville' AND county = 'Van Buren County' AND zip = '37110' ) THEN
      RETURN 'Van Buren County';
    WHEN ( city = 'Rock Island' AND county = 'Van Buren County' AND zip = '38581' ) THEN
      RETURN 'Van Buren County';
    WHEN ( city = 'Sparta' AND county = 'Van Buren County' AND zip = '38583' ) THEN
      RETURN 'Van Buren County';
    WHEN ( city = 'Spencer' AND county = 'Van Buren County' AND zip = '38583' ) THEN
      RETURN 'Van Buren County';
    WHEN ( city = 'Spencer' AND county = 'Van Buren County' AND zip = '38585' ) THEN
      RETURN 'Van Buren County';
    WHEN ( city = 'Mcminnville' AND county = 'Warren County' AND zip = '37110' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Mcminnville' AND county = 'Warren County' AND zip = '37378' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Morrison' AND county = 'Warren County' AND zip = '37357' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Rock Island' AND county = 'Warren County' AND zip = '38581' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Smartt' AND county = 'Warren County' AND zip = '37378' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Smithville' AND county = 'Warren County' AND zip = '37166' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Viola' AND county = 'Warren County' AND zip = '37394' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Woodbury' AND county = 'Warren County' AND zip = '37190' ) THEN
      RETURN 'Warren County';
    WHEN ( city = 'Clifton' AND county = 'Wayne County' AND zip = '38425' ) THEN
      RETURN 'Wayne County';
    WHEN ( city = 'Collinwood' AND county = 'Wayne County' AND zip = '38450' ) THEN
      RETURN 'Wayne County';
    WHEN ( city = 'Cypress Inn' AND county = 'Wayne County' AND zip = '38452' ) THEN
      RETURN 'Wayne County';
    WHEN ( city = 'Iron City' AND county = 'Wayne County' AND zip = '38463' ) THEN
      RETURN 'Wayne County';
    WHEN ( city = 'Lawrenceburg' AND county = 'Wayne County' AND zip = '38464' ) THEN
      RETURN 'Wayne County';
    WHEN ( city = 'Olivehill' AND county = 'Wayne County' AND zip = '38475' ) THEN
      RETURN 'Wayne County';
    WHEN ( city = 'Waynesboro' AND county = 'Wayne County' AND zip = '38485' ) THEN
      RETURN 'Wayne County';
    WHEN ( city = 'Cookeville' AND county = 'White County' AND zip = '38506' ) THEN
      RETURN 'White County';
    WHEN ( city = 'Sparta' AND county = 'White County' AND zip = '38583' ) THEN
      RETURN 'White County';
    WHEN ( city = 'Walling' AND county = 'White County' AND zip = '38587' ) THEN
      RETURN 'White County';
    WHEN ( city = 'Arrington' AND county = 'Williamson County' AND zip = '37014' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Bon Aqua' AND county = 'Williamson County' AND zip = '37025' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Brentwood' AND county = 'Williamson County' AND zip = '37027' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'College Grove' AND county = 'Williamson County' AND zip = '37046' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'College Grove' AND county = 'Williamson County' AND zip = '37067' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Columbia' AND county = 'Williamson County' AND zip = '38401' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Eagleville' AND county = 'Williamson County' AND zip = '37060' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Fairview' AND county = 'Williamson County' AND zip = '37062' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37046' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37064' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37065' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37067' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37069' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '38401' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Nashville' AND county = 'Williamson County' AND zip = '37221' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Nolensville' AND county = 'Williamson County' AND zip = '37014' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Nolensville' AND county = 'Williamson County' AND zip = '37135' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Primm Springs' AND county = 'Williamson County' AND zip = '38476' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Rockvale' AND county = 'Williamson County' AND zip = '37046' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Spring Hill' AND county = 'Williamson County' AND zip = '37174' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Spring Hill' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Thompsons Station' AND county = 'Williamson County' AND zip = '37064' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Thompsons Station' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Thompson Station' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'West Brentwood' AND county = 'Williamson County' AND zip = '37027' ) THEN
      RETURN 'Williamson County';
    WHEN ( city = 'Alexandria' AND county = 'Wilson County' AND zip = '37012' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Auburntown' AND county = 'Wilson County' AND zip = '37016' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Hermitage' AND county = 'Wilson County' AND zip = '37076' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Lascassas' AND county = 'Wilson County' AND zip = '37012' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Lascassas' AND county = 'Wilson County' AND zip = '37085' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37087' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37088' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37090' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Milton' AND county = 'Wilson County' AND zip = '37118' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Mount Juliet' AND county = 'Wilson County' AND zip = '37076' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Mount Juliet' AND county = 'Wilson County' AND zip = '37121' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Mount Juliet' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Mt Juliet' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Mt. Juliet' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Mt. Juliet/Old Hicko' AND county = 'Wilson County' AND zip = '37138' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Old Hickory' AND county = 'Wilson County' AND zip = '37138' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Watertown' AND county = 'Wilson County' AND zip = '37085' ) THEN
      RETURN 'Wilson County';
    WHEN ( city = 'Watertown' AND county = 'Wilson County' AND zip = '37184' ) THEN
      RETURN 'Wilson County';
    ELSE
      RETURN 'Uncategorized';
  END CASE;
END
$$
LANGUAGE 'plpgsql' IMMUTABLE STRICT;
-- END __major_area
-- START __minor_area
DROP FUNCTION IF EXISTS mtrmls.fn_mtrmls_minor_area(text, text, text) CASCADE;
CREATE FUNCTION
  mtrmls.fn_mtrmls_minor_area(county text, city text, zip text)
  RETURNS text AS
$$
BEGIN
  CASE
    WHEN ( city = 'Beechgrove' AND county = 'Bedford County' AND zip = '37018' ) THEN
      RETURN 'Beechgrove';
    WHEN ( city = 'Bell Buckle' AND county = 'Bedford County' AND zip = '37020' ) THEN
      RETURN 'Bell Buckle';
    WHEN ( city = 'Chapel Hill' AND county = 'Bedford County' AND zip = '37034' ) THEN
      RETURN 'Chapel Hill';
    WHEN ( city = 'Christiana' AND county = 'Bedford County' AND zip = '37018' ) THEN
      RETURN 'Christiana';
    WHEN ( city = 'Christiana' AND county = 'Bedford County' AND zip = '37020' ) THEN
      RETURN 'Christiana';
    WHEN ( city = 'Eagleville' AND county = 'Bedford County' AND zip = '37060' ) THEN
      RETURN 'Eagleville';
    WHEN ( city = 'Lewisburg' AND county = 'Bedford County' AND zip = '37091' ) THEN
      RETURN 'Lewisburg';
    WHEN ( city = 'Lewisburg' AND county = 'Bedford County' AND zip = '37160' ) THEN
      RETURN 'Lewisburg';
    WHEN ( city = 'Normandy' AND county = 'Bedford County' AND zip = '37360' ) THEN
      RETURN 'Normandy';
    WHEN ( city = 'Petersburg' AND county = 'Bedford County' AND zip = '37144' ) THEN
      RETURN 'Petersburg';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37020' ) THEN
      RETURN 'Shelbyville';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37091' ) THEN
      RETURN 'Shelbyville';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37160' ) THEN
      RETURN 'Shelbyville';
    WHEN ( city = 'Shelbyville' AND county = 'Bedford County' AND zip = '37162' ) THEN
      RETURN 'Shelbyville';
    WHEN ( city = 'Tullahoma' AND county = 'Bedford County' AND zip = '37160' ) THEN
      RETURN 'Tullahoma';
    WHEN ( city = 'Tullahoma' AND county = 'Bedford County' AND zip = '37388' ) THEN
      RETURN 'Tullahoma';
    WHEN ( city = 'Unionville' AND county = 'Bedford County' AND zip = '37180' ) THEN
      RETURN 'Unionville';
    WHEN ( city = 'Wartrace' AND county = 'Bedford County' AND zip = '37183' ) THEN
      RETURN 'Wartrace';
    WHEN ( city = 'Big Sandy' AND county = 'Benton County' AND zip = '38221' ) THEN
      RETURN 'Big Sandy';
    WHEN ( city = 'Camden' AND county = 'Benton County' AND zip = '38320' ) THEN
      RETURN 'Camden';
    WHEN ( city = 'Holladay' AND county = 'Benton County' AND zip = '38341' ) THEN
      RETURN 'Holladay';
    WHEN ( city = 'Sugar Tree' AND county = 'Benton County' AND zip = '38380' ) THEN
      RETURN 'Sugar Tree';
    WHEN ( city = 'Graysville' AND county = 'Bledsoe County' AND zip = '37338' ) THEN
      RETURN 'Graysville';
    WHEN ( city = 'Spring City' AND county = 'Bledsoe County' AND zip = '37351' ) THEN
      RETURN 'Spring City';
    WHEN ( city = 'Auburntown' AND county = 'Cannon County' AND zip = '37016' ) THEN
      RETURN 'Auburntown';
    WHEN ( city = 'Bradyville' AND county = 'Cannon County' AND zip = '37026' ) THEN
      RETURN 'Bradyville';
    WHEN ( city = 'Gassaway' AND county = 'Cannon County' AND zip = '37095' ) THEN
      RETURN 'Gassaway';
    WHEN ( city = 'Liberty' AND county = 'Cannon County' AND zip = '37095' ) THEN
      RETURN 'Liberty';
    WHEN ( city = 'Mcminnville' AND county = 'Cannon County' AND zip = '37110' ) THEN
      RETURN 'Mcminnville';
    WHEN ( city = 'Morrison' AND county = 'Cannon County' AND zip = '37357' ) THEN
      RETURN 'Morrison';
    WHEN ( city = 'Readyville' AND county = 'Cannon County' AND zip = '37149' ) THEN
      RETURN 'Readyville';
    WHEN ( city = 'Smithville' AND county = 'Cannon County' AND zip = '37166' ) THEN
      RETURN 'Smithville';
    WHEN ( city = 'Woodbury' AND county = 'Cannon County' AND zip = '37166' ) THEN
      RETURN 'Woodbury';
    WHEN ( city = 'Woodbury' AND county = 'Cannon County' AND zip = '37190' ) THEN
      RETURN 'Woodbury';
    WHEN ( city = 'Bruceton' AND county = 'Carroll County' AND zip = '38317' ) THEN
      RETURN 'Bruceton';
    WHEN ( city = 'Buena Vista' AND county = 'Carroll County' AND zip = '38318' ) THEN
      RETURN 'Buena Vista';
    WHEN ( city = 'Clarksburg' AND county = 'Carroll County' AND zip = '38324' ) THEN
      RETURN 'Clarksburg';
    WHEN ( city = 'Holladay' AND county = 'Carroll County' AND zip = '38341' ) THEN
      RETURN 'Holladay';
    WHEN ( city = 'Mckenzie' AND county = 'Carroll County' AND zip = '38201' ) THEN
      RETURN 'Mckenzie';
    WHEN ( city = 'Ashland City' AND county = 'Cheatham County' AND zip = '37015' ) THEN
      RETURN 'Ashland City';
    WHEN ( city = 'Ashland City' AND county = 'Cheatham County' AND zip = '37043' ) THEN
      RETURN 'Ashland City';
    WHEN ( city = 'Cedar Hill' AND county = 'Cheatham County' AND zip = '37032' ) THEN
      RETURN 'Cedar Hill';
    WHEN ( city = 'Chapmansboro' AND county = 'Cheatham County' AND zip = '37035' ) THEN
      RETURN 'Chapmansboro';
    WHEN ( city = 'Charlotte' AND county = 'Cheatham County' AND zip = '37036' ) THEN
      RETURN 'Charlotte';
    WHEN ( city = 'Clarksville' AND county = 'Cheatham County' AND zip = '37043' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Joelton' AND county = 'Cheatham County' AND zip = '37080' ) THEN
      RETURN 'Joelton';
    WHEN ( city = 'Kingston Springs' AND county = 'Cheatham County' AND zip = '37082' ) THEN
      RETURN 'Kingston Springs';
    WHEN ( city = 'Pegram' AND county = 'Cheatham County' AND zip = '37143' ) THEN
      RETURN 'Pegram';
    WHEN ( city = 'Pleasantview' AND county = 'Cheatham County' AND zip = '37143' ) THEN
      RETURN 'Pleasantview';
    WHEN ( city = 'Pleasant View' AND county = 'Cheatham County' AND zip = '37146' ) THEN
      RETURN 'Pleasant View';
    WHEN ( city = 'White Bluff' AND county = 'Cheatham County' AND zip = '37187' ) THEN
      RETURN 'White Bluff';
    WHEN ( city = 'Allons' AND county = 'Clay County' AND zip = '38541' ) THEN
      RETURN 'Allons';
    WHEN ( city = 'Celina' AND county = 'Clay County' AND zip = '38551' ) THEN
      RETURN 'Celina';
    WHEN ( city = 'Hilham' AND county = 'Clay County' AND zip = '38568' ) THEN
      RETURN 'Hilham';
    WHEN ( city = 'Monroe' AND county = 'Clay County' AND zip = '38573' ) THEN
      RETURN 'Monroe';
    WHEN ( city = 'Moss' AND county = 'Clay County' AND zip = '38575' ) THEN
      RETURN 'Moss';
    WHEN ( city = 'Red Boiling Springs' AND county = 'Clay County' AND zip = '37150' ) THEN
      RETURN 'Red Boiling Springs';
    WHEN ( city = 'Beechgrove' AND county = 'Coffee County' AND zip = '37018' ) THEN
      RETURN 'Beechgrove';
    WHEN ( city = 'Beech Grove' AND county = 'Coffee County' AND zip = '37018' ) THEN
      RETURN 'Beech Grove';
    WHEN ( city = 'Bradyville' AND county = 'Coffee County' AND zip = '37026' ) THEN
      RETURN 'Bradyville';
    WHEN ( city = 'Christiana' AND county = 'Coffee County' AND zip = '37037' ) THEN
      RETURN 'Christiana';
    WHEN ( city = 'Estill Springs' AND county = 'Coffee County' AND zip = '37330' ) THEN
      RETURN 'Estill Springs';
    WHEN ( city = 'Hillsboro' AND county = 'Coffee County' AND zip = '37342' ) THEN
      RETURN 'Hillsboro';
    WHEN ( city = 'Manchester' AND county = 'Coffee County' AND zip = '37349' ) THEN
      RETURN 'Manchester';
    WHEN ( city = 'Manchester' AND county = 'Coffee County' AND zip = '37355' ) THEN
      RETURN 'Manchester';
    WHEN ( city = 'Morrison' AND county = 'Coffee County' AND zip = '37355' ) THEN
      RETURN 'Morrison';
    WHEN ( city = 'Morrison' AND county = 'Coffee County' AND zip = '37357' ) THEN
      RETURN 'Morrison';
    WHEN ( city = 'Normandy' AND county = 'Coffee County' AND zip = '37360' ) THEN
      RETURN 'Normandy';
    WHEN ( city = 'Tullahoma' AND county = 'Coffee County' AND zip = '37360' ) THEN
      RETURN 'Tullahoma';
    WHEN ( city = 'Tullahoma' AND county = 'Coffee County' AND zip = '37388' ) THEN
      RETURN 'Tullahoma';
    WHEN ( city = 'Wartrace' AND county = 'Coffee County' AND zip = '37183' ) THEN
      RETURN 'Wartrace';
    WHEN ( city = 'Crossville' AND county = 'Cumberland County' AND zip = '38555' ) THEN
      RETURN 'Crossville';
    WHEN ( city = 'Crossville' AND county = 'Cumberland County' AND zip = '38558' ) THEN
      RETURN 'Crossville';
    WHEN ( city = 'Crossville' AND county = 'Cumberland County' AND zip = '38572' ) THEN
      RETURN 'Crossville';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37011' ) THEN
      RETURN 'Antioch';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37013' ) THEN
      RETURN 'Antioch';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37211' ) THEN
      RETURN 'Antioch';
    WHEN ( city = 'Antioch' AND county = 'Davidson County' AND zip = '37213' ) THEN
      RETURN 'Antioch';
    WHEN ( city = 'Ashland City' AND county = 'Davidson County' AND zip = '37015' ) THEN
      RETURN 'Ashland City';
    WHEN ( city = 'Brentwood' AND county = 'Davidson County' AND zip = '37027' ) THEN
      RETURN 'Brentwood';
    WHEN ( city = 'Cane Ridge' AND county = 'Davidson County' AND zip = '37011' ) THEN
      RETURN 'Cane Ridge';
    WHEN ( city = 'Cane Ridge' AND county = 'Davidson County' AND zip = '37013' ) THEN
      RETURN 'Cane Ridge';
    WHEN ( city = 'Franklin' AND county = 'Davidson County' AND zip = '37064' ) THEN
      RETURN 'Franklin';
    WHEN ( city = 'Goodlettsville' AND county = 'Davidson County' AND zip = '37072' ) THEN
      RETURN 'Goodlettsville';
    WHEN ( city = 'Goodlettsville' AND county = 'Davidson County' AND zip = '37076' ) THEN
      RETURN 'Goodlettsville';
    WHEN ( city = 'Hermitage' AND county = 'Davidson County' AND zip = '37076' ) THEN
      RETURN 'Hermitage';
    WHEN ( city = 'Joelton' AND county = 'Davidson County' AND zip = '37080' ) THEN
      RETURN 'Joelton';
    WHEN ( city = 'Madison' AND county = 'Davidson County' AND zip = '37115' ) THEN
      RETURN 'Madison';
    WHEN ( city = 'Madison' AND county = 'Davidson County' AND zip = '37116' ) THEN
      RETURN 'Madison';
    WHEN ( city = 'Madison' AND county = 'Davidson County' AND zip = '37138' ) THEN
      RETURN 'Madison';
    WHEN ( city = 'Mount Juliet' AND county = 'Davidson County' AND zip = '37122' ) THEN
      RETURN 'Mount Juliet';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37011' ) THEN
      RETURN 'Antioch';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37013' ) THEN
      RETURN 'Antioch';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37027' ) THEN
      RETURN 'Brentwood';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37116' ) THEN
      RETURN 'Madison';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37122' ) THEN
      RETURN 'Mt. Juliet';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37201' ) THEN
      RETURN 'Downtown Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37202' ) THEN
      RETURN 'Cleveland Park';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37203' ) THEN
      RETURN 'Downtown Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37204' ) THEN
      RETURN '12th South';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37205' ) THEN
      RETURN 'Belle Meade';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37206' ) THEN
      RETURN 'East Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37207' ) THEN
      RETURN 'Bordeaux ';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37208' ) THEN
      RETURN 'North Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37209' ) THEN
      RETURN 'West Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37210' ) THEN
      RETURN 'Downtown Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37211' ) THEN
      RETURN 'Crieve Hall';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37212' ) THEN
      RETURN 'Midtown ';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37213' ) THEN
      RETURN 'Downtown Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37214' ) THEN
      RETURN 'Donelson';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37215' ) THEN
      RETURN 'Green Hills';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37216' ) THEN
      RETURN 'Inglewood';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37217' ) THEN
      RETURN 'South Nashville';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37218' ) THEN
      RETURN 'Whites Creek';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37219' ) THEN
      RETURN 'Germantown';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37220' ) THEN
      RETURN 'Oak Hill';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37221' ) THEN
      RETURN 'Bellevue';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37222' ) THEN
      RETURN 'Whispering Hills';
    WHEN ( city = 'Nashville' AND county = 'Davidson County' AND zip = '37224' ) THEN
      RETURN 'Downtown Nashville';
    WHEN ( city = 'Nolensville' AND county = 'Davidson County' AND zip = '37135' ) THEN
      RETURN 'Nolensville';
    WHEN ( city = 'Oak Hill' AND county = 'Davidson County' AND zip = '37027' ) THEN
      RETURN 'Oak Hill';
    WHEN ( city = 'Old Hickory' AND county = 'Davidson County' AND zip = '37138' ) THEN
      RETURN 'Old Hickory';
    WHEN ( city = 'Pegram' AND county = 'Davidson County' AND zip = '37143' ) THEN
      RETURN 'Pegram';
    WHEN ( city = 'Whites Creek' AND county = 'Davidson County' AND zip = '37189' ) THEN
      RETURN 'Whites Creek';
    WHEN ( city = 'Bath Springs' AND county = 'Decatur County' AND zip = '38311' ) THEN
      RETURN 'Bath Springs';
    WHEN ( city = 'Decaturville' AND county = 'Decatur County' AND zip = '38329' ) THEN
      RETURN 'Decaturville';
    WHEN ( city = 'Parsons' AND county = 'Decatur County' AND zip = '38363' ) THEN
      RETURN 'Parsons';
    WHEN ( city = 'Scotts Hill' AND county = 'Decatur County' AND zip = '38374' ) THEN
      RETURN 'Scotts Hill';
    WHEN ( city = 'Sugar Tree' AND county = 'Decatur County' AND zip = '38380' ) THEN
      RETURN 'Sugar Tree';
    WHEN ( city = 'Alexandria' AND county = 'Dekalb County' AND zip = '37012' ) THEN
      RETURN 'Alexandria';
    WHEN ( city = 'Baxter' AND county = 'Dekalb County' AND zip = '37012' ) THEN
      RETURN 'Baxter';
    WHEN ( city = 'Baxter' AND county = 'Dekalb County' AND zip = '38544' ) THEN
      RETURN 'Baxter';
    WHEN ( city = 'Buffalo Valley' AND county = 'Dekalb County' AND zip = '38548' ) THEN
      RETURN 'Buffalo Valley';
    WHEN ( city = 'Dowelltown' AND county = 'Dekalb County' AND zip = '37059' ) THEN
      RETURN 'Dowelltown';
    WHEN ( city = 'Doweltown' AND county = 'Dekalb County' AND zip = '37059' ) THEN
      RETURN 'Doweltown';
    WHEN ( city = 'Hickman' AND county = 'Dekalb County' AND zip = '38567' ) THEN
      RETURN 'Hickman';
    WHEN ( city = 'Lancaster' AND county = 'Dekalb County' AND zip = '38569' ) THEN
      RETURN 'Lancaster';
    WHEN ( city = 'Liberty' AND county = 'Dekalb County' AND zip = '37095' ) THEN
      RETURN 'Liberty';
    WHEN ( city = 'Riverwatch' AND county = 'Dekalb County' AND zip = '38583' ) THEN
      RETURN 'Riverwatch';
    WHEN ( city = 'Silver Point' AND county = 'Dekalb County' AND zip = '38582' ) THEN
      RETURN 'Silver Point';
    WHEN ( city = 'Smithville' AND county = 'Dekalb County' AND zip = '37166' ) THEN
      RETURN 'Smithville';
    WHEN ( city = 'Sparta' AND county = 'Dekalb County' AND zip = '37166' ) THEN
      RETURN 'Sparta';
    WHEN ( city = 'Sparta' AND county = 'Dekalb County' AND zip = '38583' ) THEN
      RETURN 'Sparta';
    WHEN ( city = 'Bon Aqua' AND county = 'Dickson County' AND zip = '37025' ) THEN
      RETURN 'Bon Aqua';
    WHEN ( city = 'Burns' AND county = 'Dickson County' AND zip = '37029' ) THEN
      RETURN 'Burns';
    WHEN ( city = 'Burns' AND county = 'Dickson County' AND zip = '37055' ) THEN
      RETURN 'Burns';
    WHEN ( city = 'Burns / Bon Aqua' AND county = 'Dickson County' AND zip = '37025' ) THEN
      RETURN 'Burns / Bon Aqua';
    WHEN ( city = 'Charlotte' AND county = 'Dickson County' AND zip = '37029' ) THEN
      RETURN 'Charlotte';
    WHEN ( city = 'Charlotte' AND county = 'Dickson County' AND zip = '37036' ) THEN
      RETURN 'Charlotte';
    WHEN ( city = 'Charlotte' AND county = 'Dickson County' AND zip = '37055' ) THEN
      RETURN 'Charlotte';
    WHEN ( city = 'Cumberland Furnace' AND county = 'Dickson County' AND zip = '37051' ) THEN
      RETURN 'Cumberland Furnace';
    WHEN ( city = 'Cunningham' AND county = 'Dickson County' AND zip = '37052' ) THEN
      RETURN 'Cunningham';
    WHEN ( city = 'Dickson' AND county = 'Dickson County' AND zip = '37052' ) THEN
      RETURN 'Dickson';
    WHEN ( city = 'Dickson' AND county = 'Dickson County' AND zip = '37055' ) THEN
      RETURN 'Dickson';
    WHEN ( city = 'Fairview' AND county = 'Dickson County' AND zip = '37062' ) THEN
      RETURN 'Fairview';
    WHEN ( city = 'Fairview-Burns' AND county = 'Dickson County' AND zip = '37062' ) THEN
      RETURN 'Fairview-Burns';
    WHEN ( city = 'Mcewen' AND county = 'Dickson County' AND zip = '37101' ) THEN
      RETURN 'Mcewen';
    WHEN ( city = 'Slayden' AND county = 'Dickson County' AND zip = '37165' ) THEN
      RETURN 'Slayden';
    WHEN ( city = 'Vanleer' AND county = 'Dickson County' AND zip = '37181' ) THEN
      RETURN 'Vanleer';
    WHEN ( city = 'White Bluff' AND county = 'Dickson County' AND zip = '37187' ) THEN
      RETURN 'White Bluff';
    WHEN ( city = 'Jamestown' AND county = 'Fentress County' AND zip = '38556' ) THEN
      RETURN 'Jamestown';
    WHEN ( city = 'Wilder' AND county = 'Fentress County' AND zip = '38589' ) THEN
      RETURN 'Wilder';
    WHEN ( city = 'Belvidere' AND county = 'Franklin County' AND zip = '37306' ) THEN
      RETURN 'Belvidere';
    WHEN ( city = 'Cowan' AND county = 'Franklin County' AND zip = '37318' ) THEN
      RETURN 'Cowan';
    WHEN ( city = 'Decherd' AND county = 'Franklin County' AND zip = '37324' ) THEN
      RETURN 'Decherd';
    WHEN ( city = 'Estill Springs' AND county = 'Franklin County' AND zip = '37330' ) THEN
      RETURN 'Estill Springs';
    WHEN ( city = 'Huntland' AND county = 'Franklin County' AND zip = '37345' ) THEN
      RETURN 'Huntland';
    WHEN ( city = 'Sewanee' AND county = 'Franklin County' AND zip = '37375' ) THEN
      RETURN 'Sewanee';
    WHEN ( city = 'Tullahoma' AND county = 'Franklin County' AND zip = '37388' ) THEN
      RETURN 'Tullahoma';
    WHEN ( city = 'Winchester' AND county = 'Franklin County' AND zip = '37330' ) THEN
      RETURN 'Winchester';
    WHEN ( city = 'Winchester' AND county = 'Franklin County' AND zip = '37352' ) THEN
      RETURN 'Winchester';
    WHEN ( city = 'Winchester' AND county = 'Franklin County' AND zip = '37398' ) THEN
      RETURN 'Winchester';
    WHEN ( city = 'Ardmore' AND county = 'Giles County' AND zip = '38449' ) THEN
      RETURN 'Ardmore';
    WHEN ( city = 'Cornersville' AND county = 'Giles County' AND zip = '37047' ) THEN
      RETURN 'Cornersville';
    WHEN ( city = 'Dellrose' AND county = 'Giles County' AND zip = '38455' ) THEN
      RETURN 'Dellrose';
    WHEN ( city = 'Elkton' AND county = 'Giles County' AND zip = '38455' ) THEN
      RETURN 'Elkton';
    WHEN ( city = 'Ethridge' AND county = 'Giles County' AND zip = '38456' ) THEN
      RETURN 'Ethridge';
    WHEN ( city = 'Frankewing' AND county = 'Giles County' AND zip = '38459' ) THEN
      RETURN 'Frankewing';
    WHEN ( city = 'Goodspring' AND county = 'Giles County' AND zip = '38460' ) THEN
      RETURN 'Goodspring';
    WHEN ( city = 'Lawrenceburg' AND county = 'Giles County' AND zip = '38464' ) THEN
      RETURN 'Lawrenceburg';
    WHEN ( city = 'Leoma' AND county = 'Giles County' AND zip = '38468' ) THEN
      RETURN 'Leoma';
    WHEN ( city = 'Lynnville' AND county = 'Giles County' AND zip = '38472' ) THEN
      RETURN 'Lynnville';
    WHEN ( city = 'Minor Hill' AND county = 'Giles County' AND zip = '37047' ) THEN
      RETURN 'Minor Hill';
    WHEN ( city = 'Minor Hill' AND county = 'Giles County' AND zip = '38455' ) THEN
      RETURN 'Minor Hill';
    WHEN ( city = 'Minor Hill' AND county = 'Giles County' AND zip = '38473' ) THEN
      RETURN 'Minor Hill';
    WHEN ( city = 'Petersburg' AND county = 'Giles County' AND zip = '37144' ) THEN
      RETURN 'Petersburg';
    WHEN ( city = 'Prospect' AND county = 'Giles County' AND zip = '38456' ) THEN
      RETURN 'Prospect';
    WHEN ( city = 'Prospect' AND county = 'Giles County' AND zip = '38477' ) THEN
      RETURN 'Prospect';
    WHEN ( city = 'Prospect' AND county = 'Giles County' AND zip = '38478' ) THEN
      RETURN 'Prospect';
    WHEN ( city = 'Pulaski' AND county = 'Giles County' AND zip = '38478' ) THEN
      RETURN 'Pulaski';
    WHEN ( city = 'Altamont' AND county = 'Grundy County' AND zip = '37301' ) THEN
      RETURN 'Altamont';
    WHEN ( city = 'Beersheba Springs' AND county = 'Grundy County' AND zip = '37305' ) THEN
      RETURN 'Beersheba Springs';
    WHEN ( city = 'Coalmont' AND county = 'Grundy County' AND zip = '37313' ) THEN
      RETURN 'Coalmont';
    WHEN ( city = 'Gruetli Laager' AND county = 'Grundy County' AND zip = '37339' ) THEN
      RETURN 'Gruetli Laager';
    WHEN ( city = 'Monteagle' AND county = 'Grundy County' AND zip = '37356' ) THEN
      RETURN 'Monteagle';
    WHEN ( city = 'Morrison' AND county = 'Grundy County' AND zip = '37357' ) THEN
      RETURN 'Morrison';
    WHEN ( city = 'Palmer' AND county = 'Grundy County' AND zip = '37365' ) THEN
      RETURN 'Palmer';
    WHEN ( city = 'Pelham' AND county = 'Grundy County' AND zip = '37366' ) THEN
      RETURN 'Pelham';
    WHEN ( city = 'Tracy City' AND county = 'Grundy County' AND zip = '37387' ) THEN
      RETURN 'Tracy City';
    WHEN ( city = 'Lexington' AND county = 'Henderson County' AND zip = '38351' ) THEN
      RETURN 'Lexington';
    WHEN ( city = 'Reagan' AND county = 'Henderson County' AND zip = '38368' ) THEN
      RETURN 'Reagan';
    WHEN ( city = 'Buchanan' AND county = 'Henry County' AND zip = '38222' ) THEN
      RETURN 'Buchanan';
    WHEN ( city = 'Cottage Grove' AND county = 'Henry County' AND zip = '38224' ) THEN
      RETURN 'Cottage Grove';
    WHEN ( city = 'Paris' AND county = 'Henry County' AND zip = '38242' ) THEN
      RETURN 'Paris';
    WHEN ( city = 'Springville' AND county = 'Henry County' AND zip = '38256' ) THEN
      RETURN 'Springville';
    WHEN ( city = 'Bon Aqua' AND county = 'Hickman County' AND zip = '37025' ) THEN
      RETURN 'Bon Aqua';
    WHEN ( city = 'Bon Aqua' AND county = 'Hickman County' AND zip = '37098' ) THEN
      RETURN 'Bon Aqua';
    WHEN ( city = 'Centerville' AND county = 'Hickman County' AND zip = '37033' ) THEN
      RETURN 'Centerville';
    WHEN ( city = 'Centerville' AND county = 'Hickman County' AND zip = '37137' ) THEN
      RETURN 'Centerville';
    WHEN ( city = 'Duck River' AND county = 'Hickman County' AND zip = '38454' ) THEN
      RETURN 'Duck River';
    WHEN ( city = 'Hohenwald' AND county = 'Hickman County' AND zip = '37033' ) THEN
      RETURN 'Hohenwald';
    WHEN ( city = 'Lyles' AND county = 'Hickman County' AND zip = '37098' ) THEN
      RETURN 'Lyles';
    WHEN ( city = 'Lyles' AND county = 'Hickman County' AND zip = '37137' ) THEN
      RETURN 'Lyles';
    WHEN ( city = 'Mcewen' AND county = 'Hickman County' AND zip = '37101' ) THEN
      RETURN 'Mcewen';
    WHEN ( city = 'Nunnelly' AND county = 'Hickman County' AND zip = '37137' ) THEN
      RETURN 'Nunnelly';
    WHEN ( city = 'Nunnely' AND county = 'Hickman County' AND zip = '37055' ) THEN
      RETURN 'Nunnely';
    WHEN ( city = 'Only' AND county = 'Hickman County' AND zip = '37140' ) THEN
      RETURN 'Only';
    WHEN ( city = 'Pleasantville' AND county = 'Hickman County' AND zip = '37033' ) THEN
      RETURN 'Pleasantville';
    WHEN ( city = 'Primm Springs' AND county = 'Hickman County' AND zip = '38476' ) THEN
      RETURN 'Primm Springs';
    WHEN ( city = 'Primm Springs' AND county = 'Hickman County' AND zip = '38487' ) THEN
      RETURN 'Primm Springs';
    WHEN ( city = 'Williamsport' AND county = 'Hickman County' AND zip = '38487' ) THEN
      RETURN 'Williamsport';
    WHEN ( city = 'Cumberland City' AND county = 'Houston County' AND zip = '37050' ) THEN
      RETURN 'Cumberland City';
    WHEN ( city = 'Cumberland Furnace' AND county = 'Houston County' AND zip = '37051' ) THEN
      RETURN 'Cumberland Furnace';
    WHEN ( city = 'Erin' AND county = 'Houston County' AND zip = '37061' ) THEN
      RETURN 'Erin';
    WHEN ( city = 'Mcewen' AND county = 'Houston County' AND zip = '37101' ) THEN
      RETURN 'Mcewen';
    WHEN ( city = 'Stewart' AND county = 'Houston County' AND zip = '37175' ) THEN
      RETURN 'Stewart';
    WHEN ( city = 'Tennessee Ridge' AND county = 'Houston County' AND zip = '37178' ) THEN
      RETURN 'Tennessee Ridge';
    WHEN ( city = 'Vanleer' AND county = 'Houston County' AND zip = '37181' ) THEN
      RETURN 'Vanleer';
    WHEN ( city = 'Waverly' AND county = 'Houston County' AND zip = '37185' ) THEN
      RETURN 'Waverly';
    WHEN ( city = 'Cuba Landing' AND county = 'Humphreys County' AND zip = '37101' ) THEN
      RETURN 'Cuba Landing';
    WHEN ( city = 'Hurricane Mills' AND county = 'Humphreys County' AND zip = '37078' ) THEN
      RETURN 'Hurricane Mills';
    WHEN ( city = 'Mcewen' AND county = 'Humphreys County' AND zip = '37101' ) THEN
      RETURN 'Mcewen';
    WHEN ( city = 'New Johnsonville' AND county = 'Humphreys County' AND zip = '37134' ) THEN
      RETURN 'New Johnsonville';
    WHEN ( city = 'Waverly' AND county = 'Humphreys County' AND zip = '37185' ) THEN
      RETURN 'Waverly';
    WHEN ( city = 'Bloomington Springs' AND county = 'Jackson County' AND zip = '38545' ) THEN
      RETURN 'Bloomington Springs';
    WHEN ( city = 'Cookeville' AND county = 'Jackson County' AND zip = '38501' ) THEN
      RETURN 'Cookeville';
    WHEN ( city = 'Gainesboro' AND county = 'Jackson County' AND zip = '38506' ) THEN
      RETURN 'Gainesboro';
    WHEN ( city = 'Gainesboro' AND county = 'Jackson County' AND zip = '38562' ) THEN
      RETURN 'Gainesboro';
    WHEN ( city = 'Granville' AND county = 'Jackson County' AND zip = '38564' ) THEN
      RETURN 'Granville';
    WHEN ( city = 'Hilham' AND county = 'Jackson County' AND zip = '38568' ) THEN
      RETURN 'Hilham';
    WHEN ( city = 'Pleasant Shade' AND county = 'Jackson County' AND zip = '37145' ) THEN
      RETURN 'Pleasant Shade';
    WHEN ( city = 'Red Boiling Springs' AND county = 'Jackson County' AND zip = '37150' ) THEN
      RETURN 'Red Boiling Springs';
    WHEN ( city = 'Whitleyville' AND county = 'Jackson County' AND zip = '38588' ) THEN
      RETURN 'Whitleyville';
    WHEN ( city = 'Ethridge' AND county = 'Lawrence County' AND zip = '38456' ) THEN
      RETURN 'Ethridge';
    WHEN ( city = 'Five Points' AND county = 'Lawrence County' AND zip = '38457' ) THEN
      RETURN 'Five Points';
    WHEN ( city = 'Iron City' AND county = 'Lawrence County' AND zip = '38463' ) THEN
      RETURN 'Iron City';
    WHEN ( city = 'Lawrenceburg' AND county = 'Lawrence County' AND zip = '38464' ) THEN
      RETURN 'Lawrenceburg';
    WHEN ( city = 'Leoma' AND county = 'Lawrence County' AND zip = '38468' ) THEN
      RETURN 'Leoma';
    WHEN ( city = 'Loretto' AND county = 'Lawrence County' AND zip = '38469' ) THEN
      RETURN 'Loretto';
    WHEN ( city = 'Mount Pleasant' AND county = 'Lawrence County' AND zip = '38474' ) THEN
      RETURN 'Mount Pleasant';
    WHEN ( city = 'Saint Joseph' AND county = 'Lawrence County' AND zip = '38481' ) THEN
      RETURN 'Saint Joseph';
    WHEN ( city = 'Summertown' AND county = 'Lawrence County' AND zip = '38483' ) THEN
      RETURN 'Summertown';
    WHEN ( city = 'Westpoint' AND county = 'Lawrence County' AND zip = '38486' ) THEN
      RETURN 'Westpoint';
    WHEN ( city = 'Hampshire' AND county = 'Lewis County' AND zip = '38461' ) THEN
      RETURN 'Hampshire';
    WHEN ( city = 'Hohenwald' AND county = 'Lewis County' AND zip = '38462' ) THEN
      RETURN 'Hohenwald';
    WHEN ( city = 'Linden' AND county = 'Lewis County' AND zip = '37096' ) THEN
      RETURN 'Linden';
    WHEN ( city = 'Mount Pleasant' AND county = 'Lewis County' AND zip = '38474' ) THEN
      RETURN 'Mount Pleasant';
    WHEN ( city = 'Summertown' AND county = 'Lewis County' AND zip = '38483' ) THEN
      RETURN 'Summertown';
    WHEN ( city = 'Waynesboro' AND county = 'Lewis County' AND zip = '38485' ) THEN
      RETURN 'Waynesboro';
    WHEN ( city = 'Ardmore' AND county = 'Lincoln County' AND zip = '38449' ) THEN
      RETURN 'Ardmore';
    WHEN ( city = 'Dellrose' AND county = 'Lincoln County' AND zip = '38453' ) THEN
      RETURN 'Dellrose';
    WHEN ( city = 'Elora' AND county = 'Lincoln County' AND zip = '37328' ) THEN
      RETURN 'Elora';
    WHEN ( city = 'Elora' AND county = 'Lincoln County' AND zip = '37348' ) THEN
      RETURN 'Elora';
    WHEN ( city = 'Fayetteville' AND county = 'Lincoln County' AND zip = '37334' ) THEN
      RETURN 'Fayetteville';
    WHEN ( city = 'Flintville' AND county = 'Lincoln County' AND zip = '37335' ) THEN
      RETURN 'Flintville';
    WHEN ( city = 'Frankewing' AND county = 'Lincoln County' AND zip = '38459' ) THEN
      RETURN 'Frankewing';
    WHEN ( city = 'Kelso' AND county = 'Lincoln County' AND zip = '37348' ) THEN
      RETURN 'Kelso';
    WHEN ( city = 'Mulberry' AND county = 'Lincoln County' AND zip = '37359' ) THEN
      RETURN 'Mulberry';
    WHEN ( city = 'Petersburg' AND county = 'Lincoln County' AND zip = '37144' ) THEN
      RETURN 'Petersburg';
    WHEN ( city = 'Taft' AND county = 'Lincoln County' AND zip = '38488' ) THEN
      RETURN 'Taft';
    WHEN ( city = 'Bethpage' AND county = 'Macon County' AND zip = '37022' ) THEN
      RETURN 'Bethpage';
    WHEN ( city = 'Dixon Springs' AND county = 'Macon County' AND zip = '37057' ) THEN
      RETURN 'Dixon Springs';
    WHEN ( city = 'Hartsville' AND county = 'Macon County' AND zip = '37074' ) THEN
      RETURN 'Hartsville';
    WHEN ( city = 'Lafayette' AND county = 'Macon County' AND zip = '37022' ) THEN
      RETURN 'Lafayette';
    WHEN ( city = 'Lafayette' AND county = 'Macon County' AND zip = '37083' ) THEN
      RETURN 'Lafayette';
    WHEN ( city = 'Pleasant Shade' AND county = 'Macon County' AND zip = '37145' ) THEN
      RETURN 'Pleasant Shade';
    WHEN ( city = 'Red Boiling Springs' AND county = 'Macon County' AND zip = '37150' ) THEN
      RETURN 'Red Boiling Springs';
    WHEN ( city = 'Westmoreland' AND county = 'Macon County' AND zip = '37186' ) THEN
      RETURN 'Westmoreland';
    WHEN ( city = 'Whitleyville' AND county = 'Macon County' AND zip = '38588' ) THEN
      RETURN 'Whitleyville';
    WHEN ( city = 'Monteagle' AND county = 'Marion County' AND zip = '37356' ) THEN
      RETURN 'Monteagle';
    WHEN ( city = 'Monteagle' AND county = 'Marion County' AND zip = '37365' ) THEN
      RETURN 'Monteagle';
    WHEN ( city = 'Sequatchie' AND county = 'Marion County' AND zip = '37374' ) THEN
      RETURN 'Sequatchie';
    WHEN ( city = 'Sewanee' AND county = 'Marion County' AND zip = '37375' ) THEN
      RETURN 'Sewanee';
    WHEN ( city = 'South Pittsburg' AND county = 'Marion County' AND zip = '37375' ) THEN
      RETURN 'South Pittsburg';
    WHEN ( city = 'South Pittsburg' AND county = 'Marion County' AND zip = '37380' ) THEN
      RETURN 'South Pittsburg';
    WHEN ( city = 'Tracy City' AND county = 'Marion County' AND zip = '37387' ) THEN
      RETURN 'Tracy City';
    WHEN ( city = 'Belfast' AND county = 'Marshall County' AND zip = '37019' ) THEN
      RETURN 'Belfast';
    WHEN ( city = 'Chapel Hill' AND county = 'Marshall County' AND zip = '37034' ) THEN
      RETURN 'Chapel Hill';
    WHEN ( city = 'Chapel Hill' AND county = 'Marshall County' AND zip = '37091' ) THEN
      RETURN 'Chapel Hill';
    WHEN ( city = 'College Grove' AND county = 'Marshall County' AND zip = '37046' ) THEN
      RETURN 'College Grove';
    WHEN ( city = 'Columbia' AND county = 'Marshall County' AND zip = '38401' ) THEN
      RETURN 'Columbia';
    WHEN ( city = 'Cornersville' AND county = 'Marshall County' AND zip = '37047' ) THEN
      RETURN 'Cornersville';
    WHEN ( city = 'Culleoka' AND county = 'Marshall County' AND zip = '38451' ) THEN
      RETURN 'Culleoka';
    WHEN ( city = 'Eagleville' AND county = 'Marshall County' AND zip = '37060' ) THEN
      RETURN 'Eagleville';
    WHEN ( city = 'Lewisburg' AND county = 'Marshall County' AND zip = '37019' ) THEN
      RETURN 'Lewisburg';
    WHEN ( city = 'Lewisburg' AND county = 'Marshall County' AND zip = '37091' ) THEN
      RETURN 'Lewisburg';
    WHEN ( city = 'Petersburg' AND county = 'Marshall County' AND zip = '37144' ) THEN
      RETURN 'Petersburg';
    WHEN ( city = 'Spring Hill' AND county = 'Marshall County' AND zip = '37174' ) THEN
      RETURN 'Spring Hill';
    WHEN ( city = 'Columbia' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Columbia';
    WHEN ( city = 'Culleoka' AND county = 'Maury County' AND zip = '37174' ) THEN
      RETURN 'Culleoka';
    WHEN ( city = 'Culleoka' AND county = 'Maury County' AND zip = '38451' ) THEN
      RETURN 'Culleoka';
    WHEN ( city = 'Hampshire' AND county = 'Maury County' AND zip = '38451' ) THEN
      RETURN 'Hampshire';
    WHEN ( city = 'Hampshire' AND county = 'Maury County' AND zip = '38461' ) THEN
      RETURN 'Hampshire';
    WHEN ( city = 'Lewisburg' AND county = 'Maury County' AND zip = '37091' ) THEN
      RETURN 'Lewisburg';
    WHEN ( city = 'Lynnville' AND county = 'Maury County' AND zip = '38472' ) THEN
      RETURN 'Lynnville';
    WHEN ( city = 'Mount Pleasant' AND county = 'Maury County' AND zip = '38474' ) THEN
      RETURN 'Mount Pleasant';
    WHEN ( city = 'Mt Pleasant' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Mt Pleasant';
    WHEN ( city = 'Mt Pleasant' AND county = 'Maury County' AND zip = '38474' ) THEN
      RETURN 'Mt Pleasant';
    WHEN ( city = 'Primm Springs' AND county = 'Maury County' AND zip = '38476' ) THEN
      RETURN 'Primm Springs';
    WHEN ( city = 'Santa Fe' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Santa Fe';
    WHEN ( city = 'Santa Fe' AND county = 'Maury County' AND zip = '38482' ) THEN
      RETURN 'Santa Fe';
    WHEN ( city = 'Spring Hill' AND county = 'Maury County' AND zip = '37174' ) THEN
      RETURN 'Spring Hill';
    WHEN ( city = 'Summertown' AND county = 'Maury County' AND zip = '38483' ) THEN
      RETURN 'Summertown';
    WHEN ( city = 'Williamsport' AND county = 'Maury County' AND zip = '38401' ) THEN
      RETURN 'Williamsport';
    WHEN ( city = 'Williamsport' AND county = 'Maury County' AND zip = '38487' ) THEN
      RETURN 'Williamsport';
    WHEN ( city = 'Adams' AND county = 'Montgomery County' AND zip = '37010' ) THEN
      RETURN 'Adams';
    WHEN ( city = 'Ashland City' AND county = 'Montgomery County' AND zip = '37015' ) THEN
      RETURN 'Ashland City';
    WHEN ( city = 'Chapmansboro' AND county = 'Montgomery County' AND zip = '37035' ) THEN
      RETURN 'Chapmansboro';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37010' ) THEN
      RETURN 'Clarksville (Adams)';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37032' ) THEN
      RETURN 'Cedar Hill';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37040' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37041' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37042' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37043' ) THEN
      RETURN 'Clarksville';
    WHEN ( city = 'Clarksville' AND county = 'Montgomery County' AND zip = '37044' ) THEN
      RETURN 'Downtown Clarksville';
    WHEN ( city = 'Clarksville (Adams)' AND county = 'Montgomery County' AND zip = '37010' ) THEN
      RETURN 'Clarksville (Adams)';
    WHEN ( city = 'Clarksville (Adams)' AND county = 'Montgomery County' AND zip = '37043' ) THEN
      RETURN 'Clarksville (Adams)';
    WHEN ( city = 'Cumberland City' AND county = 'Montgomery County' AND zip = '37050' ) THEN
      RETURN 'Cumberland City';
    WHEN ( city = 'Cumberland Furnace' AND county = 'Montgomery County' AND zip = '37051' ) THEN
      RETURN 'Cumberland Furnace';
    WHEN ( city = 'Cunningham' AND county = 'Montgomery County' AND zip = '37052' ) THEN
      RETURN 'Cunningham';
    WHEN ( city = 'Erin' AND county = 'Montgomery County' AND zip = '37061' ) THEN
      RETURN 'Erin';
    WHEN ( city = 'Indian Mound' AND county = 'Montgomery County' AND zip = '37079' ) THEN
      RETURN 'Indian Mound';
    WHEN ( city = 'Palmyra' AND county = 'Montgomery County' AND zip = '37142' ) THEN
      RETURN 'Palmyra';
    WHEN ( city = 'Southside' AND county = 'Montgomery County' AND zip = '37171' ) THEN
      RETURN 'Southside';
    WHEN ( city = 'Woodlawn' AND county = 'Montgomery County' AND zip = '37191' ) THEN
      RETURN 'Woodlawn';
    WHEN ( city = 'Belvidere' AND county = 'Moore County' AND zip = '37306' ) THEN
      RETURN 'Belvidere';
    WHEN ( city = 'Fayetteville' AND county = 'Moore County' AND zip = '37334' ) THEN
      RETURN 'Fayetteville';
    WHEN ( city = 'Fayetteville' AND county = 'Moore County' AND zip = '37352' ) THEN
      RETURN 'Fayetteville';
    WHEN ( city = 'Lynchburg' AND county = 'Moore County' AND zip = '37352' ) THEN
      RETURN 'Lynchburg';
    WHEN ( city = 'Lynchburg' AND county = 'Moore County' AND zip = '37359' ) THEN
      RETURN 'Lynchburg';
    WHEN ( city = 'Normandy' AND county = 'Moore County' AND zip = '37352' ) THEN
      RETURN 'Normandy';
    WHEN ( city = 'Petersburg' AND county = 'Moore County' AND zip = '37144' ) THEN
      RETURN 'Petersburg';
    WHEN ( city = 'Shelbyville' AND county = 'Moore County' AND zip = '37160' ) THEN
      RETURN 'Shelbyville';
    WHEN ( city = 'Tullahoma' AND county = 'Moore County' AND zip = '37388' ) THEN
      RETURN 'Tullahoma';
    WHEN ( city = 'Winchester' AND county = 'Moore County' AND zip = '37398' ) THEN
      RETURN 'Winchester';
    WHEN ( city = 'Alpine' AND county = 'Overton County' AND zip = '38543' ) THEN
      RETURN 'Alpine';
    WHEN ( city = 'Cookeville' AND county = 'Overton County' AND zip = '38506' ) THEN
      RETURN 'Cookeville';
    WHEN ( city = 'Crawford' AND county = 'Overton County' AND zip = '38554' ) THEN
      RETURN 'Crawford';
    WHEN ( city = 'Hilham' AND county = 'Overton County' AND zip = '38568' ) THEN
      RETURN 'Hilham';
    WHEN ( city = 'Livingston' AND county = 'Overton County' AND zip = '38570' ) THEN
      RETURN 'Livingston';
    WHEN ( city = 'Monroe' AND county = 'Overton County' AND zip = '38573' ) THEN
      RETURN 'Monroe';
    WHEN ( city = 'Wilder' AND county = 'Overton County' AND zip = '38589' ) THEN
      RETURN 'Wilder';
    WHEN ( city = 'Centerville' AND county = 'Perry County' AND zip = '37033' ) THEN
      RETURN 'Centerville';
    WHEN ( city = 'Clifton' AND county = 'Perry County' AND zip = '38425' ) THEN
      RETURN 'Clifton';
    WHEN ( city = 'Flatwoods' AND county = 'Perry County' AND zip = '37096' ) THEN
      RETURN 'Flatwoods';
    WHEN ( city = 'Linden' AND county = 'Perry County' AND zip = '37096' ) THEN
      RETURN 'Linden';
    WHEN ( city = 'Lobelville' AND county = 'Perry County' AND zip = '37097' ) THEN
      RETURN 'Lobelville';
    WHEN ( city = 'Byrdstown' AND county = 'Pickett County' AND zip = '38549' ) THEN
      RETURN 'Byrdstown';
    WHEN ( city = 'Monroe' AND county = 'Pickett County' AND zip = '38573' ) THEN
      RETURN 'Monroe';
    WHEN ( city = 'Baxter' AND county = 'Putnam County' AND zip = '38544' ) THEN
      RETURN 'Baxter';
    WHEN ( city = 'Bloomington Springs' AND county = 'Putnam County' AND zip = '38545' ) THEN
      RETURN 'Bloomington Springs';
    WHEN ( city = 'Buffalo Valley' AND county = 'Putnam County' AND zip = '38548' ) THEN
      RETURN 'Buffalo Valley';
    WHEN ( city = 'Cookeville' AND county = 'Putnam County' AND zip = '38501' ) THEN
      RETURN 'Cookeville';
    WHEN ( city = 'Cookeville' AND county = 'Putnam County' AND zip = '38506' ) THEN
      RETURN 'Cookeville';
    WHEN ( city = 'Monterey' AND county = 'Putnam County' AND zip = '38574' ) THEN
      RETURN 'Monterey';
    WHEN ( city = 'Silver Point' AND county = 'Putnam County' AND zip = '38582' ) THEN
      RETURN 'Silver Point';
    WHEN ( city = 'Adams' AND county = 'Robertson County' AND zip = '37010' ) THEN
      RETURN 'Adams';
    WHEN ( city = 'Cedar Hill' AND county = 'Robertson County' AND zip = '37032' ) THEN
      RETURN 'Cedar Hill';
    WHEN ( city = 'Cottontown' AND county = 'Robertson County' AND zip = '37048' ) THEN
      RETURN 'Cottontown';
    WHEN ( city = 'Cross Plains' AND county = 'Robertson County' AND zip = '37049' ) THEN
      RETURN 'Cross Plains';
    WHEN ( city = 'Goodlettsville' AND county = 'Robertson County' AND zip = '37072' ) THEN
      RETURN 'Goodlettsville';
    WHEN ( city = 'Greenbrier' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Greenbrier';
    WHEN ( city = 'Greenbrier /Ridgetop' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Greenbrier /Ridgetop';
    WHEN ( city = 'Greenbrier/Ridgetop' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Greenbrier/Ridgetop';
    WHEN ( city = 'Orlinda' AND county = 'Robertson County' AND zip = '37141' ) THEN
      RETURN 'Orlinda';
    WHEN ( city = 'Pleasant View' AND county = 'Robertson County' AND zip = '37146' ) THEN
      RETURN 'Pleasant View';
    WHEN ( city = 'Portland' AND county = 'Robertson County' AND zip = '37148' ) THEN
      RETURN 'Portland';
    WHEN ( city = 'Ridgetop' AND county = 'Robertson County' AND zip = '37073' ) THEN
      RETURN 'Ridgetop';
    WHEN ( city = 'Ridgetop' AND county = 'Robertson County' AND zip = '37152' ) THEN
      RETURN 'Ridgetop';
    WHEN ( city = 'Springfield' AND county = 'Robertson County' AND zip = '37172' ) THEN
      RETURN 'Springfield';
    WHEN ( city = 'Springfield/Cross Pl' AND county = 'Robertson County' AND zip = '37172' ) THEN
      RETURN 'Springfield/Cross Pl';
    WHEN ( city = 'White House' AND county = 'Robertson County' AND zip = '37048' ) THEN
      RETURN 'White House';
    WHEN ( city = 'White House' AND county = 'Robertson County' AND zip = '37172' ) THEN
      RETURN 'White House';
    WHEN ( city = 'White House' AND county = 'Robertson County' AND zip = '37188' ) THEN
      RETURN 'White House';
    WHEN ( city = 'White House, Springf' AND county = 'Robertson County' AND zip = '37188' ) THEN
      RETURN 'White House, Springf';
    WHEN ( city = 'Arrington' AND county = 'Rutherford County' AND zip = '37014' ) THEN
      RETURN 'Arrington';
    WHEN ( city = 'Bell Buckle' AND county = 'Rutherford County' AND zip = '37020' ) THEN
      RETURN 'Bell Buckle';
    WHEN ( city = 'Christiana' AND county = 'Rutherford County' AND zip = '37020' ) THEN
      RETURN 'Christiana';
    WHEN ( city = 'Christiana' AND county = 'Rutherford County' AND zip = '37037' ) THEN
      RETURN 'Christiana';
    WHEN ( city = 'College Grove' AND county = 'Rutherford County' AND zip = '37046' ) THEN
      RETURN 'College Grove';
    WHEN ( city = 'Eagleville' AND county = 'Rutherford County' AND zip = '37060' ) THEN
      RETURN 'Eagleville';
    WHEN ( city = 'Eagleville' AND county = 'Rutherford County' AND zip = '37160' ) THEN
      RETURN 'Eagleville';
    WHEN ( city = 'Lascassas' AND county = 'Rutherford County' AND zip = '37085' ) THEN
      RETURN 'Lascassas';
    WHEN ( city = 'Lavergne' AND county = 'Rutherford County' AND zip = '37086' ) THEN
      RETURN 'Lavergne';
    WHEN ( city = 'Milton' AND county = 'Rutherford County' AND zip = '37118' ) THEN
      RETURN 'Milton';
    WHEN ( city = 'Mount Juliet' AND county = 'Rutherford County' AND zip = '37122' ) THEN
      RETURN 'Mount Juliet';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37127' ) THEN
      RETURN 'South Murfressboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37128' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37129' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37130' ) THEN
      RETURN 'Downtown Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37131' ) THEN
      RETURN 'Murfreesboro';
    WHEN ( city = 'Murfreesboro' AND county = 'Rutherford County' AND zip = '37149' ) THEN
      RETURN 'Readyville';
    WHEN ( city = 'Nolensville' AND county = 'Rutherford County' AND zip = '37086' ) THEN
      RETURN 'Nolensville';
    WHEN ( city = 'Nolensville' AND county = 'Rutherford County' AND zip = '37135' ) THEN
      RETURN 'Nolensville';
    WHEN ( city = 'Readyville' AND county = 'Rutherford County' AND zip = '37149' ) THEN
      RETURN 'Readyville';
    WHEN ( city = 'Rockvale' AND county = 'Rutherford County' AND zip = '37153' ) THEN
      RETURN 'Rockvale';
    WHEN ( city = 'Shelbyville' AND county = 'Rutherford County' AND zip = '37160' ) THEN
      RETURN 'Shelbyville';
    WHEN ( city = 'Smyrna' AND county = 'Rutherford County' AND zip = '37086' ) THEN
      RETURN 'Smyrna';
    WHEN ( city = 'Smyrna' AND county = 'Rutherford County' AND zip = '37167' ) THEN
      RETURN 'Smyrna';
    WHEN ( city = 'Unionville' AND county = 'Rutherford County' AND zip = '37180' ) THEN
      RETURN 'Unionville';
    WHEN ( city = 'Dunlap' AND county = 'Sequatchie County' AND zip = '37327' ) THEN
      RETURN 'Dunlap';
    WHEN ( city = 'Alexandria' AND county = 'Smith County' AND zip = '37012' ) THEN
      RETURN 'Alexandria';
    WHEN ( city = 'Brush Creek' AND county = 'Smith County' AND zip = '38547' ) THEN
      RETURN 'Brush Creek';
    WHEN ( city = 'Buffalo Valley' AND county = 'Smith County' AND zip = '38548' ) THEN
      RETURN 'Buffalo Valley';
    WHEN ( city = 'Carthage' AND county = 'Smith County' AND zip = '37012' ) THEN
      RETURN 'Carthage';
    WHEN ( city = 'Carthage' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Carthage';
    WHEN ( city = 'Carthage/Rome' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Carthage/Rome';
    WHEN ( city = 'Carthage/Tanglewood' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Carthage/Tanglewood';
    WHEN ( city = 'Chestnut Mound' AND county = 'Smith County' AND zip = '38552' ) THEN
      RETURN 'Chestnut Mound';
    WHEN ( city = 'Dixon Springs' AND county = 'Smith County' AND zip = '37057' ) THEN
      RETURN 'Dixon Springs';
    WHEN ( city = 'Elmwood' AND county = 'Smith County' AND zip = '38560' ) THEN
      RETURN 'Elmwood';
    WHEN ( city = 'Gordonsville' AND county = 'Smith County' AND zip = '38563' ) THEN
      RETURN 'Gordonsville';
    WHEN ( city = 'Hickman' AND county = 'Smith County' AND zip = '38567' ) THEN
      RETURN 'Hickman';
    WHEN ( city = 'Lancaster' AND county = 'Smith County' AND zip = '38569' ) THEN
      RETURN 'Lancaster';
    WHEN ( city = 'Lebanon' AND county = 'Smith County' AND zip = '37087' ) THEN
      RETURN 'Lebanon';
    WHEN ( city = 'Lebanon' AND county = 'Smith County' AND zip = '37090' ) THEN
      RETURN 'Lebanon';
    WHEN ( city = 'Pleasant Shade' AND county = 'Smith County' AND zip = '37030' ) THEN
      RETURN 'Pleasant Shade';
    WHEN ( city = 'Pleasant Shade' AND county = 'Smith County' AND zip = '37145' ) THEN
      RETURN 'Pleasant Shade';
    WHEN ( city = 'Pleasant Shade' AND county = 'Smith County' AND zip = '38547' ) THEN
      RETURN 'Pleasant Shade';
    WHEN ( city = 'Riddleton' AND county = 'Smith County' AND zip = '37145' ) THEN
      RETURN 'Riddleton';
    WHEN ( city = 'Riddleton' AND county = 'Smith County' AND zip = '37151' ) THEN
      RETURN 'Riddleton';
    WHEN ( city = 'Watertown' AND county = 'Smith County' AND zip = '37184' ) THEN
      RETURN 'Watertown';
    WHEN ( city = 'Big Rock' AND county = 'Stewart County' AND zip = '37023' ) THEN
      RETURN 'Big Rock';
    WHEN ( city = 'Bumpus Mills' AND county = 'Stewart County' AND zip = '37028' ) THEN
      RETURN 'Bumpus Mills';
    WHEN ( city = 'Bumpus Mills' AND county = 'Stewart County' AND zip = '37050' ) THEN
      RETURN 'Bumpus Mills';
    WHEN ( city = 'Cumberland City' AND county = 'Stewart County' AND zip = '37050' ) THEN
      RETURN 'Cumberland City';
    WHEN ( city = 'Dover' AND county = 'Stewart County' AND zip = '37023' ) THEN
      RETURN 'Dover';
    WHEN ( city = 'Dover' AND county = 'Stewart County' AND zip = '37058' ) THEN
      RETURN 'Dover';
    WHEN ( city = 'Indian Mound' AND county = 'Stewart County' AND zip = '37079' ) THEN
      RETURN 'Indian Mound';
    WHEN ( city = 'Stewart' AND county = 'Stewart County' AND zip = '37175' ) THEN
      RETURN 'Stewart';
    WHEN ( city = 'Tennessee Ridge' AND county = 'Stewart County' AND zip = '37178' ) THEN
      RETURN 'Tennessee Ridge';
    WHEN ( city = 'Bethpage' AND county = 'Sumner County' AND zip = '37022' ) THEN
      RETURN 'Bethpage';
    WHEN ( city = 'Bethpage' AND county = 'Sumner County' AND zip = '37031' ) THEN
      RETURN 'Bethpage';
    WHEN ( city = 'Castalian Springs' AND county = 'Sumner County' AND zip = '37031' ) THEN
      RETURN 'Castalian Springs';
    WHEN ( city = 'Cottontown' AND county = 'Sumner County' AND zip = '37048' ) THEN
      RETURN 'Cottontown';
    WHEN ( city = 'Gallatin' AND county = 'Sumner County' AND zip = '37022' ) THEN
      RETURN 'Gallatin';
    WHEN ( city = 'Gallatin' AND county = 'Sumner County' AND zip = '37066' ) THEN
      RETURN 'Gallatin';
    WHEN ( city = 'Gallatin' AND county = 'Sumner County' AND zip = '37075' ) THEN
      RETURN 'Gallatin';
    WHEN ( city = 'Goodlettsville' AND county = 'Sumner County' AND zip = '37072' ) THEN
      RETURN 'Goodlettsville';
    WHEN ( city = 'Goodlettsville Mille' AND county = 'Sumner County' AND zip = '37072' ) THEN
      RETURN 'Goodlettsville Mille';
    WHEN ( city = 'Hendersonville' AND county = 'Sumner County' AND zip = '37066' ) THEN
      RETURN 'Hendersonville';
    WHEN ( city = 'Hendersonville' AND county = 'Sumner County' AND zip = '37075' ) THEN
      RETURN 'Hendersonville';
    WHEN ( city = 'Hendersonville' AND county = 'Sumner County' AND zip = '37119' ) THEN
      RETURN 'Hendersonville';
    WHEN ( city = 'Millersville' AND county = 'Sumner County' AND zip = '37072' ) THEN
      RETURN 'Millersville';
    WHEN ( city = 'Portland' AND county = 'Sumner County' AND zip = '37075' ) THEN
      RETURN 'Portland';
    WHEN ( city = 'Portland' AND county = 'Sumner County' AND zip = '37148' ) THEN
      RETURN 'Portland';
    WHEN ( city = 'Westmoreland' AND county = 'Sumner County' AND zip = '37022' ) THEN
      RETURN 'Westmoreland';
    WHEN ( city = 'Westmoreland' AND county = 'Sumner County' AND zip = '37186' ) THEN
      RETURN 'Westmoreland';
    WHEN ( city = 'White House' AND county = 'Sumner County' AND zip = '37048' ) THEN
      RETURN 'White House';
    WHEN ( city = 'White House' AND county = 'Sumner County' AND zip = '37188' ) THEN
      RETURN 'White House';
    WHEN ( city = 'White House Cottonto' AND county = 'Sumner County' AND zip = '37048' ) THEN
      RETURN 'White House Cottonto';
    WHEN ( city = 'Bethpage' AND county = 'Trousdale County' AND zip = '37022' ) THEN
      RETURN 'Bethpage';
    WHEN ( city = 'Castalian Springs' AND county = 'Trousdale County' AND zip = '37031' ) THEN
      RETURN 'Castalian Springs';
    WHEN ( city = 'Dixon Springs' AND county = 'Trousdale County' AND zip = '37057' ) THEN
      RETURN 'Dixon Springs';
    WHEN ( city = 'Hartsville' AND county = 'Trousdale County' AND zip = '37057' ) THEN
      RETURN 'Hartsville';
    WHEN ( city = 'Hartsville' AND county = 'Trousdale County' AND zip = '37074' ) THEN
      RETURN 'Hartsville';
    WHEN ( city = 'Lebanon' AND county = 'Trousdale County' AND zip = '37087' ) THEN
      RETURN 'Lebanon';
    WHEN ( city = 'Doyle' AND county = 'Van Buren County' AND zip = '38559' ) THEN
      RETURN 'Doyle';
    WHEN ( city = 'Mcminnville' AND county = 'Van Buren County' AND zip = '37110' ) THEN
      RETURN 'Mcminnville';
    WHEN ( city = 'Rock Island' AND county = 'Van Buren County' AND zip = '38581' ) THEN
      RETURN 'Rock Island';
    WHEN ( city = 'Sparta' AND county = 'Van Buren County' AND zip = '38583' ) THEN
      RETURN 'Sparta';
    WHEN ( city = 'Spencer' AND county = 'Van Buren County' AND zip = '38583' ) THEN
      RETURN 'Spencer';
    WHEN ( city = 'Spencer' AND county = 'Van Buren County' AND zip = '38585' ) THEN
      RETURN 'Spencer';
    WHEN ( city = 'Mcminnville' AND county = 'Warren County' AND zip = '37110' ) THEN
      RETURN 'Mcminnville';
    WHEN ( city = 'Mcminnville' AND county = 'Warren County' AND zip = '37378' ) THEN
      RETURN 'Mcminnville';
    WHEN ( city = 'Morrison' AND county = 'Warren County' AND zip = '37357' ) THEN
      RETURN 'Morrison';
    WHEN ( city = 'Rock Island' AND county = 'Warren County' AND zip = '38581' ) THEN
      RETURN 'Rock Island';
    WHEN ( city = 'Smartt' AND county = 'Warren County' AND zip = '37378' ) THEN
      RETURN 'Smartt';
    WHEN ( city = 'Smithville' AND county = 'Warren County' AND zip = '37166' ) THEN
      RETURN 'Smithville';
    WHEN ( city = 'Viola' AND county = 'Warren County' AND zip = '37394' ) THEN
      RETURN 'Viola';
    WHEN ( city = 'Woodbury' AND county = 'Warren County' AND zip = '37190' ) THEN
      RETURN 'Woodbury';
    WHEN ( city = 'Clifton' AND county = 'Wayne County' AND zip = '38425' ) THEN
      RETURN 'Clifton';
    WHEN ( city = 'Collinwood' AND county = 'Wayne County' AND zip = '38450' ) THEN
      RETURN 'Collinwood';
    WHEN ( city = 'Cypress Inn' AND county = 'Wayne County' AND zip = '38452' ) THEN
      RETURN 'Cypress Inn';
    WHEN ( city = 'Iron City' AND county = 'Wayne County' AND zip = '38463' ) THEN
      RETURN 'Iron City';
    WHEN ( city = 'Lawrenceburg' AND county = 'Wayne County' AND zip = '38464' ) THEN
      RETURN 'Lawrenceburg';
    WHEN ( city = 'Olivehill' AND county = 'Wayne County' AND zip = '38475' ) THEN
      RETURN 'Olivehill';
    WHEN ( city = 'Waynesboro' AND county = 'Wayne County' AND zip = '38485' ) THEN
      RETURN 'Waynesboro';
    WHEN ( city = 'Cookeville' AND county = 'White County' AND zip = '38506' ) THEN
      RETURN 'Cookeville';
    WHEN ( city = 'Sparta' AND county = 'White County' AND zip = '38583' ) THEN
      RETURN 'Sparta';
    WHEN ( city = 'Walling' AND county = 'White County' AND zip = '38587' ) THEN
      RETURN 'Walling';
    WHEN ( city = 'Arrington' AND county = 'Williamson County' AND zip = '37014' ) THEN
      RETURN 'Arrington';
    WHEN ( city = 'Bon Aqua' AND county = 'Williamson County' AND zip = '37025' ) THEN
      RETURN 'Bon Aqua';
    WHEN ( city = 'Brentwood' AND county = 'Williamson County' AND zip = '37027' ) THEN
      RETURN 'Brentwood';
    WHEN ( city = 'College Grove' AND county = 'Williamson County' AND zip = '37046' ) THEN
      RETURN 'College Grove';
    WHEN ( city = 'College Grove' AND county = 'Williamson County' AND zip = '37067' ) THEN
      RETURN 'College Grove';
    WHEN ( city = 'Columbia' AND county = 'Williamson County' AND zip = '38401' ) THEN
      RETURN 'Columbia';
    WHEN ( city = 'Eagleville' AND county = 'Williamson County' AND zip = '37060' ) THEN
      RETURN 'Eagleville';
    WHEN ( city = 'Fairview' AND county = 'Williamson County' AND zip = '37062' ) THEN
      RETURN 'Fairview';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37046' ) THEN
      RETURN 'College Grove';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37064' ) THEN
      RETURN 'Franklin';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37065' ) THEN
      RETURN 'Downtown Franklin';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37067' ) THEN
      RETURN 'Cool Springs';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37069' ) THEN
      RETURN 'Franklin';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Thompson Station';
    WHEN ( city = 'Franklin' AND county = 'Williamson County' AND zip = '38401' ) THEN
      RETURN 'Columbia ';
    WHEN ( city = 'Nashville' AND county = 'Williamson County' AND zip = '37221' ) THEN
      RETURN 'Bellevue';
    WHEN ( city = 'Nolensville' AND county = 'Williamson County' AND zip = '37014' ) THEN
      RETURN 'Nolensville';
    WHEN ( city = 'Nolensville' AND county = 'Williamson County' AND zip = '37135' ) THEN
      RETURN 'Nolensville';
    WHEN ( city = 'Primm Springs' AND county = 'Williamson County' AND zip = '38476' ) THEN
      RETURN 'Primm Springs';
    WHEN ( city = 'Rockvale' AND county = 'Williamson County' AND zip = '37046' ) THEN
      RETURN 'Rockvale';
    WHEN ( city = 'Spring Hill' AND county = 'Williamson County' AND zip = '37174' ) THEN
      RETURN 'Spring Hill';
    WHEN ( city = 'Spring Hill' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Spring Hill';
    WHEN ( city = 'Thompsons Station' AND county = 'Williamson County' AND zip = '37064' ) THEN
      RETURN 'Thompsons Station';
    WHEN ( city = 'Thompsons Station' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Thompsons Station';
    WHEN ( city = 'Thompson Station' AND county = 'Williamson County' AND zip = '37179' ) THEN
      RETURN 'Thompson Station';
    WHEN ( city = 'West Brentwood' AND county = 'Williamson County' AND zip = '37027' ) THEN
      RETURN 'West Brentwood';
    WHEN ( city = 'Alexandria' AND county = 'Wilson County' AND zip = '37012' ) THEN
      RETURN 'Alexandria';
    WHEN ( city = 'Auburntown' AND county = 'Wilson County' AND zip = '37016' ) THEN
      RETURN 'Auburntown';
    WHEN ( city = 'Hermitage' AND county = 'Wilson County' AND zip = '37076' ) THEN
      RETURN 'Hermitage';
    WHEN ( city = 'Lascassas' AND county = 'Wilson County' AND zip = '37012' ) THEN
      RETURN 'Lascassas';
    WHEN ( city = 'Lascassas' AND county = 'Wilson County' AND zip = '37085' ) THEN
      RETURN 'Lascassas';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37087' ) THEN
      RETURN 'Lebanon';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37088' ) THEN
      RETURN 'Lebanon';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37090' ) THEN
      RETURN 'Lebanon';
    WHEN ( city = 'Lebanon' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Mt. Juliet';
    WHEN ( city = 'Milton' AND county = 'Wilson County' AND zip = '37118' ) THEN
      RETURN 'Milton';
    WHEN ( city = 'Mount Juliet' AND county = 'Wilson County' AND zip = '37076' ) THEN
      RETURN 'Mount Juliet';
    WHEN ( city = 'Mount Juliet' AND county = 'Wilson County' AND zip = '37121' ) THEN
      RETURN 'Mount Juliet';
    WHEN ( city = 'Mount Juliet' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Mount Juliet';
    WHEN ( city = 'Mt Juliet' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Mt Juliet';
    WHEN ( city = 'Mt. Juliet' AND county = 'Wilson County' AND zip = '37122' ) THEN
      RETURN 'Mt. Juliet';
    WHEN ( city = 'Mt. Juliet/Old Hicko' AND county = 'Wilson County' AND zip = '37138' ) THEN
      RETURN 'Mt. Juliet/Old Hicko';
    WHEN ( city = 'Old Hickory' AND county = 'Wilson County' AND zip = '37138' ) THEN
      RETURN 'Old Hickory';
    WHEN ( city = 'Watertown' AND county = 'Wilson County' AND zip = '37085' ) THEN
      RETURN 'Watertown';
    WHEN ( city = 'Watertown' AND county = 'Wilson County' AND zip = '37184' ) THEN
      RETURN 'Watertown';
    ELSE
      RETURN 'Uncategorized';
  END CASE;
END
$$
LANGUAGE 'plpgsql' IMMUTABLE STRICT;
-- END __minor_area
