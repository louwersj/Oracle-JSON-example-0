/* NAME:
 * create_T_OOPIMS_PRODUCTDETAILS.sql
 *
 * DESC:
 * create table T_OOPIMS_PRODUCTDETAILS
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       04SEP2014   Johan Louwers    Initial upload to github.com
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
 
 CREATE TABLE T_OOPIMS_PRODUCTDETAILS
  (
    ID         INTEGER NOT NULL ,
    PRODUCT_ID INTEGER NOT NULL ,
    PRODUCT_DETAILS CLOB ,
    PRODUCT_STATUS INTEGER NOT NULL ,
    CREATED_BY     INTEGER NOT NULL ,
    UPDATED_BY     INTEGER NOT NULL ,
    DATE_CREATED   DATE ,
    DATE_UPDATED   DATE
  ) ;
  /
