/* NAME:
 * create_table_JSON_CONSTRAINTS.sql
 *
 * DESC:
 * create constraints on tables to ensure the inserted data is JSON data
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       05SEP2014   Johan Louwers    Initial upload to github.com
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

-- Add a constraint to ensure that the data in T_OOPIMS_MANUFACT.MANUFAC_DETAILS is JSON data.
ALTER TABLE T_OOPIMS_MANUFACT ADD CONSTRAINT MANUFAC_DETAILS_JSON CHECK (MANUFAC_DETAILS IS JSON);

COMMIT;
