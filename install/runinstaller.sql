/* NAME:
 * runinstaller.sql
 *
 * DESC:
 * main calling script for the installation of the OOPIMS example application.
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

-- tabel creation script(s)
@./lib/create_T_OOPIMS_ACCOUNTS.sql
@./lib/create_T_OOPIMS_CATALOG.sql
@./lib/create_T_OOPIMS_PRODUCTDETAILS.sql
@./lib/create_T_OOPIMS_PRODUCTS.sql
@./lib/create_T_OOPMIS_CATITEMS.sql
@./lib/create_T_STATIC_STATUS.sql
@./lib/create_T_OOPIMS_MANUFACT.sql

-- table constaints script(s)
@./lib/create_table_CONSTRAINTS.sql
@./lib/create_table_JSON_CONSTRAINTS.sql

-- Sequence create script(s)
@./lib/create_S_OOPIMS_ACCOUNTS.sql
@./lib/create_S_OOPIMS_CATALOG.sql
@./lib/create_S_OOPIMS_PRODUCTDETAILS.sql
@./lib/create_S_OOPIMS_PRODUCTS.sql
@./lib/create_S_OOPMIS_CATITEMS.sql
@./lib/create_S_STATIC_STATUS.sql
@./lib/create_S_OOPIMS_MANUFACT.sql

-- create triggers script(s)
@./lib/create_TR_OOPIMS_ACCOUNTS_ID.sql
@./lib/create_TR_OOPIMS_CATALOG_ID.sql
@./lib/create_TR_OOPIMS_PRODUCTDETAILS_ID.sql
@./lib/create_TR_OOPIMS_PRODUCTS_ID.sql
@./lib/create_TR_OOPMIS_CATITEMS_ID.sql
@./lib/create_TR_STATIC_STATUS_ID.sql
@./lib/create_TR_OOPMIS_MANUFACT_ID.sql

-- enable triggers script(s)
@./lib/enable_triggers.sql

-- Create views script(s)
@./lib/create_V_MANUFACTURER_DETAILS.sql

-- insert static data script(s)
@./lib/data/insert_static.sql
