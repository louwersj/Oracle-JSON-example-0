/* NAME:
 * enable_triggers.sql
 *
 * DESC:
 * enable previously created triggers by executing an ALTER on the trigger to set it to ENABLE. 
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       05SEP2014   Johan Louwers    Initial upload to github.com
 * 0.2       05SEP2014   Johan Louwers    Added trigger TR_OOPMIS_MANUFACT_ID
 * 0.3       05SEP2014   Johan Louwers    changed TR_OOPMIS_MANUFACT_ID to TR_OOPIMS_MANUFACT_ID
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

ALTER TRIGGER "TR_OOPIMS_ACCOUNTS_ID" ENABLE;
ALTER TRIGGER "TR_OOPIMS_CATALOG_ID" ENABLE;
ALTER TRIGGER "TR_OOPIMS_PRODUCTDETAILS_ID" ENABLE;
ALTER TRIGGER "TR_OOPIMS_PRODUCTS_ID" ENABLE;
ALTER TRIGGER "TR_OOPMIS_CATITEMS_ID" ENABLE;
ALTER TRIGGER "TR_STATIC_STATUS_ID" ENABLE;
ALTER TRIGGER "TR_OOPIMS_MANUFACT_ID" ENABLE;

