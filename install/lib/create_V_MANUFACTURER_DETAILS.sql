/* NAME:
 * create_V_MANUFACTURER_DETAILS.sql
 *
 * DESC:
 * Create view V_MANUFACTURER_DETAILS which extracts data from the JSON
 * MANUFAC_DETAILS object in table T_OOPIMS_MANUFACT. This view provides
 * insight in the prime contact details of manufaturers that are stated 
 * to be active. 
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       05SEP2014   Johan Louwers    Initial upload to github.com
 * 0.2       08SEP2014   Johan Louwers    Small change to view def.
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


  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "V_MANUFACTURER_DETAILS" ("MAN_ID", "MAN_NAME", "MAN_DESCRIPTION", "MAN_WEBSITE", "MAN_EMAIL", "MAN_ADDRESS", "MAN_CITY", "MAN_COUNTRY", "MAN_ZIPCODE", "MAN_STATE", "MAN_PHONE") AS 
  SELECT
       MANU.ID                                                              AS man_id,
       lower(MANU.MANUFAC_NAME)                                             AS man_name,
       MANU.MANUFAC_DETAILS.description                                     AS man_description,
       MANU.MANUFAC_DETAILS.website                                         AS man_website,
       MANU.MANUFAC_DETAILS.email                                           AS man_email,
       MANU.MANUFAC_DETAILS.street ||' '|| MANU.MANUFAC_DETAILS.Housenumber AS man_address,
       MANU.MANUFAC_DETAILS.city                                            AS man_city,
       MANU.MANUFAC_DETAILS.country                                         AS man_country,
       MANU.MANUFAC_DETAILS.zipcode                                         AS man_zipcode,
       MANU.MANUFAC_DETAILS.state                                           AS man_state,
       MANU.MANUFAC_DETAILS.phone                                           AS man_phone
FROM 
    T_OOPIMS_MANUFACT MANU
WHERE
      MANU.MANUFAC_STATUS = 1
      AND MANU.MANUFAC_NAME NOT LIKE 'DEFAULT'
ORDER BY 
        MANU.MANUFAC_NAME;
/
