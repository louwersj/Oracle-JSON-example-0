


 INSERT INTO T_OOPIMS_MANUFACT 
   (
    MANUFAC_NAME, 
    MANUFAC_STATUS,
    MANUFAC_DETAILS
   ) 
    VALUES 
   (
    'Apple inc',
    1,
    '{"manufacturer"   :    "Apple inc",
      "description"    :    "Apple Inc",
      "website"         :    "www.apple.com",
      "email"          :    "noreply@apple.com",
      "country"        :    "US",
      "street"         :    "Infinite Loop",
      "Housenumber"    :    "1",
      "city"           :    "Cupertino",
      "zipcode"        :    "95014",
      "state"          :    "CA",
      "phone"          :    "+1.408.996.1010"
     }'
   );
   
   
 INSERT INTO T_OOPIMS_MANUFACT 
   (
    MANUFAC_NAME, 
    MANUFAC_STATUS,
    MANUFAC_DETAILS
   ) 
    VALUES 
   (
    'Acer',
    1,
    '{"manufacturer"   :    "Acer",
      "description"    :    "Acer America",
      "website"         :    "www.acer.com",
      "email"          :    "noreply@acer.com",
      "country"        :    "US",
      "street"         :    "West San Carlos Street",
      "Housenumber"    :    "333",
      "city"           :    "San Jose",
      "zipcode"        :    "95110",
      "state"          :    "CA",
      "phone"          :    "+1.408.533.7700"
     }'
   );
   
    INSERT INTO T_OOPIMS_MANUFACT 
   (
    MANUFAC_NAME, 
    MANUFAC_STATUS,
    MANUFAC_DETAILS
   ) 
    VALUES 
   (
    'ASUS',
    1,
    '{"manufacturer"   :    "ASUS",
      "description"    :    "ASUS COMPUTER INTERNATIONAL",
      "website"         :    "www.asus.com",
      "email"          :    "noreply@asus.com",
      "country"        :    "US",
      "street"         :    "Corporate Way",
      "Housenumber"    :    "800",
      "city"           :    "Fremont",
      "zipcode"        :    "94539",
      "state"          :    "CA",
      "phone"          :    "+1.510-739-3777"
     }'
   );
   
    INSERT INTO T_OOPIMS_MANUFACT 
   (
    MANUFAC_NAME, 
    MANUFAC_STATUS,
    MANUFAC_DETAILS
   ) 
    VALUES 
   (
    'Lenovo',
    1,
    '{"manufacturer"   :    "Lenovo",
      "description"    :    "Lenovo Principal Operations Morrisville",
      "website"         :    "www.lenovo.com",
      "email"          :    "noreply@lenovo.com",
      "country"        :    "US",
      "street"         :    "Think Place",
      "Housenumber"    :    "1009",
      "city"           :    "Morrisville",
      "zipcode"        :    "27560",
      "state"          :    "NC",
      "phone"          :    "+1.866-968-4465"
     }'
   );
   
   
   -- Note Housenumber is null as an example. 
    INSERT INTO T_OOPIMS_MANUFACT 
   (
    MANUFAC_NAME, 
    MANUFAC_STATUS,
    MANUFAC_DETAILS
   ) 
    VALUES 
   (
    'HP',
    1,
    '{"manufacturer"   :    "HP",
      "description"    :    "Hewlett-Packard Company",
      "website"         :    "www.hp.com",
      "email"          :    "noreply@hp.com",
      "country"        :    "US",
      "street"         :    "Hanover Street",
      "Housenumber"    :    "",
      "city"           :    "Palo Alto",
      "zipcode"        :    "94304",
      "state"          :    "CA",
      "phone"          :    "+1.650-857-1501"
     }'
   );
   
   
 -- note that rambus is missing information as an example. 
  INSERT INTO T_OOPIMS_MANUFACT 
   (
    MANUFAC_NAME, 
    MANUFAC_STATUS,
    MANUFAC_DETAILS
   ) 
    VALUES 
   (
    'Rambus',
    1,
    '{"manufacturer"   :    "Rambus",
      "description"    :    "Rambus Corporate Headquarters",
      "website"         :    "www.rambus.com",
      "email"          :    "noreply@rambus.com",
      "country"        :    "US",
      "city"           :    "Sunnyvale",
      "zipcode"        :    "94089",
      "state"          :    "CA",
      "phone"          :    "+1.408 462 8000"
     }'
   );
   
   
    -- note that Capgemini is using a nested JSON for multiple locations as an example
       INSERT INTO T_OOPIMS_MANUFACT 
   (
    MANUFAC_NAME, 
    MANUFAC_STATUS,
    MANUFAC_DETAILS
   ) 
    VALUES 
   (
    'Capgemini',
    1,
    '{"manufacturer"   :    "Capgemini",
      "description"    :    "Capgemini",
      "website"        :    "www.capgemini.com",
      "email"          :    "noreply@capgemini.com",
      "country"        :    "NL",
      "street"         :    "Reykjavikplein",
      "Housenumber"    :    "1",
      "city"           :    "Utrecht",
      "zipcode"        :    "3543 KA",
      "phone"          :    "+31(0)30 689 0000",
      "location"       :    [{ "location_desc"     :    "office",
                               "website"           :    "www.nl.capgemini.com/",
                               "email"             :    "noreply@capgemini.com",
                               "country"           :    "NL",
                               "street"            :    "Fauststraat",
                               "Housenumber"       :    "3",
                               "city"              :    "Apeldoorn",
                               "zipcode"           :    "7323 BA",
                               "phone"             :    "+31 (0)30-689 7730"
                             },
                             { "location_desc"     :    "office",
                               "website"           :    "www.nl.capgemini.com/",
                               "email"             :    "noreply@capgemini.com",
                               "country"           :    "NL",
                               "street"            :    "Rozenburglaan",
                               "Housenumber"       :    "1",
                               "city"              :    "Groningen",
                               "zipcode"           :    "9727 DL",
                               "phone"             :    " +31 (0)30 689 8989"
                             },   
                             { "location_desc"     :    "office",
                               "website"           :    "www.capgemini.com/",
                               "email"             :    "noreply@capgemini.com",
                               "country"           :    "US",
                               "street"            :    "Fifth Avenue",
                               "Housenumber"       :    "623",
                               "city"              :    "New York",
                               "zipcode"           :    "10022",
                               "state"             :    "NY",                              
                               "phone"             :    "+1-212-314-8000"
                             },  
                             { "location_desc"     :    "office",
                               "website"           :    "www.jp.capgemini.com/",
                               "email"             :    "noreply@capgemini.com",
                               "country"           :    "JP",
                               "street"            :    "Otemachi Chiyoda-ku",
                               "Housenumber"       :    "1-9-5",
                               "city"              :    "Tokyo",
                               "zipcode"           :    "100-0004",
                               "phone"             :    "+81 3 6202 2150"
                             }]                             
     }'
   );
   
   
   commit;
