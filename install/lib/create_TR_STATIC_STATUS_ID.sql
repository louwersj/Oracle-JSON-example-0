/* NAME:
 * create_TR_STATIC_STATUS_ID.sql
 *
 * DESC:
 * Create trigger TR_STATIC_STATUS_ID
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
 
 CREATE OR REPLACE TRIGGER TR_STATIC_STATUS_ID BEFORE
  INSERT ON T_STATIC_STATUS REFERENCING NEW AS NEW FOR EACH ROW BEGIN IF(:new.ID IS NULL) THEN
  SELECT S_STATIC_STATUS.nextval INTO :new.ID FROM dual;
END IF;
END TR_STATIC_STATUS_ID;
/
