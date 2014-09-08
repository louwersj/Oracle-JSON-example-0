/* NAME:
 * create_V_MANUFACTURER_SUBSLOC.sql
 *
 * DESC:
 * Create view V_MANUFACTURER_SUBSLOC to extract sub locations from JSON objects in
 * T_OOPIMS_MANUFACT.MANUFAC_DETAILS
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       08SEP2014   Johan Louwers    Initial upload to github.com
 *
 * LICENSE:
 * Copyright (C) 2014  Johan Louwers
 * 
 * This code is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This code is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this code; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 * 
 */


  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "V_MANUFACTURER_SUBSLOC" ("man_id", "man_name", "MAN_DESCRIPTION", "MAN_WEBSITE", "MAN_EMAIL", "man_address", "MAN_CITY", "MAN_COUNTRY", "MAN_ZIPCODE", "MAN_STATE", "MAN_PHONE") AS 
  SELECT 
      MANU.ID                  AS "man_id",
      LOWER(MANU.MANUFAC_NAME) AS "man_name",
      LOCS.man_description,
      LOCS.man_website,
      LOCS.man_email,
      LOCS.loc_street ||' '|| LOCS.loc_housenumber AS "man_address",
      LOCS.man_city,
      LOCS.man_country,
      LOCS.man_zipcode, 
      LOCS.man_state, 
      LOCS.man_phone 
FROM 
    T_OOPIMS_MANUFACT MANU,
    (json_table(
               MANUFAC_DETAILS, '$.location[*]'
               COLUMNS (
                        man_description VARCHAR2(200) PATH '$.location_desc',
                        man_website VARCHAR2(200) PATH '$.website',
                        man_email VARCHAR2(200) PATH '$.email',
                        loc_street VARCHAR2(200) PATH '$.street',
                        loc_housenumber VARCHAR2(200) PATH '$.Housenumber',
                        man_city VARCHAR2(200) PATH '$.city',
                        man_country VARCHAR2(200) PATH '$.country',               
                        man_zipcode VARCHAR2(200) PATH '$.zipcode',
                        man_state VARCHAR2(200) PATH '$.state',
                        man_phone VARCHAR2(200) PATH '$.phone'
                       )
               )) "LOCS";
/
