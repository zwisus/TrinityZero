-- MySQL dump 10.11
--
-- Host: localhost    Database: world_clean
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_requirement`
--

DROP TABLE IF EXISTS `access_requirement`;
CREATE TABLE `access_requirement` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'Identifier',
  `level_min` tinyint(3) unsigned NOT NULL default '0',
  `level_max` tinyint(3) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `item2` mediumint(8) unsigned NOT NULL default '0',
  `quest_done` mediumint(8) unsigned NOT NULL default '0',
  `quest_failed_text` text,
  `comment` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Access Requirements';

--
-- Dumping data for table `access_requirement`
--

LOCK TABLES `access_requirement` WRITE;
/*!40000 ALTER TABLE `access_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatrigger_involvedrelation`
--

DROP TABLE IF EXISTS `areatrigger_involvedrelation`;
CREATE TABLE `areatrigger_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

--
-- Dumping data for table `areatrigger_involvedrelation`
--

LOCK TABLES `areatrigger_involvedrelation` WRITE;
/*!40000 ALTER TABLE `areatrigger_involvedrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_involvedrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatrigger_scripts`
--

DROP TABLE IF EXISTS `areatrigger_scripts`;
CREATE TABLE `areatrigger_scripts` (
  `entry` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areatrigger_scripts`
--

LOCK TABLES `areatrigger_scripts` WRITE;
/*!40000 ALTER TABLE `areatrigger_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatrigger_tavern`
--

DROP TABLE IF EXISTS `areatrigger_tavern`;
CREATE TABLE `areatrigger_tavern` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `name` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

--
-- Dumping data for table `areatrigger_tavern`
--

LOCK TABLES `areatrigger_tavern` WRITE;
/*!40000 ALTER TABLE `areatrigger_tavern` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_tavern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatrigger_teleport`
--

DROP TABLE IF EXISTS `areatrigger_teleport`;
CREATE TABLE `areatrigger_teleport` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `name` text,
  `access_id` bigint(20) unsigned NOT NULL default '0',
  `target_map` smallint(5) unsigned NOT NULL default '0',
  `target_position_x` float NOT NULL default '0',
  `target_position_y` float NOT NULL default '0',
  `target_position_z` float NOT NULL default '0',
  `target_orientation` float NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';

--
-- Dumping data for table `areatrigger_teleport`
--

LOCK TABLES `areatrigger_teleport` WRITE;
/*!40000 ALTER TABLE `areatrigger_teleport` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_teleport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battleground_template`
--

DROP TABLE IF EXISTS `battleground_template`;
CREATE TABLE `battleground_template` (
  `id` mediumint(8) unsigned NOT NULL,
  `MinPlayersPerTeam` smallint(5) unsigned NOT NULL default '0',
  `MaxPlayersPerTeam` smallint(5) unsigned NOT NULL default '0',
  `MinLvl` tinyint(3) unsigned NOT NULL default '0',
  `MaxLvl` tinyint(3) unsigned NOT NULL default '0',
  `AllianceStartLoc` mediumint(8) unsigned NOT NULL,
  `AllianceStartO` float NOT NULL,
  `HordeStartLoc` mediumint(8) unsigned NOT NULL,
  `HordeStartO` float NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `battleground_template`
--

LOCK TABLES `battleground_template` WRITE;
/*!40000 ALTER TABLE `battleground_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `battleground_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battlemaster_entry`
--

DROP TABLE IF EXISTS `battlemaster_entry`;
CREATE TABLE `battlemaster_entry` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Entry of a creature',
  `bg_template` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Battleground template id',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `battlemaster_entry`
--

LOCK TABLES `battlemaster_entry` WRITE;
/*!40000 ALTER TABLE `battlemaster_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlemaster_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE `command` (
  `name` varchar(50) NOT NULL default '',
  `security` tinyint(3) unsigned NOT NULL default '0',
  `help` longtext,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Chat System';

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
INSERT INTO `command` VALUES ('quest remove',3,'Syntax: .quest remove #quest_id\r\n\r\nSet quest #quest_id state to not completed and not active (and remove from active quest list) for selected player.'),('additem',3,'Syntax: .additem #itemid/[#itemname]/#shift-click-item-link #itemcount\r\n\r\nAdds the specified number of items of id #itemid (or exact (!) name $itemname in brackets, or link created by shift-click at item in inventory or recipe) to your or selected character inventory. If #itemcount is omitted, only one item will be added.\r\n.'),('additemset',3,'Syntax: .additemset #itemsetid\r\n\r\nAdd items from itemset of id #itemsetid to your or selected character inventory. Will add by one example each item from itemset.'),('addmove',2,'Syntax: .addmove #creature_guid [#waittime]\r\n\r\nAdd your current location as a waypoint for creature with guid #creature_guid. And optional add wait time.'),('quest add',3,'Syntax: .quest add #quest_id\r\n\r\nAdd to character quest log quest #quest_id. Quest started from item can\'t be added by this command but correct .additem call provided in command output.'),('npc textemote',3,'Syntax: .npc textemote #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.'),('npc whisper',1,'Syntax: .npc whisper #playerguid #text\r\nMake the selected npc whisper #text to  #playerguid.'),('npc spawntime',2,'Syntax: .npc spawntime #time \r\n\r\nAdjust spawntime of selected creature to time.'),('npc subname',2,'Syntax: .npc subname $Name\r\n\r\nChange the subname of the selected creature or player to $Name.\r\n\r\nCommand disabled.'),('npc allowmove',3,'Syntax: .npc allowmove\r\n\r\nEnable or disable movement for the selected creature.'),('npc changelevel',2,'Syntax: .npc changelevel #level\r\n\r\nChange the level of the selected creature to #level.\r\n\r\n#level may range from 1 to 63.'),('announce',1,'Syntax: .announce $MessageToBroadcast\r\n\r\nSend a global message to all players online in chat log.'),('notify',1,'Syntax: .notify $MessageToBroadcast\r\n\r\nSend a global message to all players online in screen.'),('aura',3,'Syntax: .aura #spellid\r\n\r\nAdd the aura from spell #spellid to the selected Unit.'),('baninfo ip',3,'Syntax is: baninfo ip\r\nWatch full information about a specific ban.'),('banlist account',3,'Syntax is: banlist account [$Name]\r\nSearches the banlist for a account name pattern or show full list account bans.'),('baninfo character',3,'Syntax is: baninfo character\r\nWatch full information about a specific ban.'),('bank',3,'Syntax: .bank\r\n\r\nShow your bank inventory.'),('commands',0,'Syntax: .commands\r\n\r\nDisplay a list of available commands for your account level.'),('cooldown',3,'Syntax: .cooldown [#spell_id]\r\n\r\nRemove all (if spell_id not provided) or #spel_id spell cooldown from selected character or you (if no selection).'),('guild create',2,'Syntax: .guild create $GuildLeaderName $GuildName\r\n\r\nCreate a guild named $GuildName with the player $GuildLeaderName as leader.'),('npc factionid',2,'Syntax: .npc factionid #factionid\r\n\r\nSet the faction of the selected creature to #factionid.'),('npc delitem',2,'Syntax: .npc delitem #itemId\r\n\r\nRemove item #itemid from item list of selected vendor.'),('npc delete',2,'Syntax: .npc delete [#guid]\r\n\r\nDelete creature with guid #guid (or the selected if no guid is provided)'),('ticket viewid',1,'Usage: .ticket viewid $ticketid.\r\nReturns details about specified ticket. Ticket must be open and not deleted.'),('demorph',2,'Syntax: .demorph\r\n\r\nDemorph the selected player.'),('die',3,'Syntax: .die\r\n\r\nKill the selected player. If no player is selected, it will kill you.'),('dismount',0,'Syntax: .dismount\r\n\r\nDismount you, if you are mounted.'),('go grid',1,'Syntax: .go grid #gridX #gridY [#mapId]\r\n\r\nTeleport the gm to center of grid with provided indexes at map #mapId (or current map if it not provided).'),('distance',3,'Syntax: .distance\r\n\r\nDisplay the distance from your character to the selected creature.'),('go xy',1,'Syntax: .go xy #x #y [#mapid]\r\n\r\nTeleport player to point with (#x,#y) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),('debug playsound',1,'Syntax: .debug playsound #soundid\r\n\r\nPlay sound with #soundid.\r\nSound will be play only for you. Other players do not hear this.\r\nWarning: client may have more 5000 sounds...'),('explorecheat',3,'Syntax: .explorecheat #flag\r\n\r\nReveal  or hide all maps for the selected player. If no player is selected, hide or reveal maps to you.\r\n\r\nUse a #flag of value 1 to reveal, use a #flag value of 0 to hide all maps.'),('npc additem',2,'Syntax: .npc additem #itemId <#maxcount><#incrtime><#extendedcost>r\r\n\r\nAdd item #itemid to item list of selected vendor. Also optionally set max count item in vendor item list and time to item count restoring and items ExtendedCost.'),('modify morph',2,'Syntax: .modify morph #displayid\r\n\r\nChange your current model id to #displayid.'),('npc add',2,'Syntax: .npc add #creatureid\r\n\r\nSpawn a creature by the given template id of #creatureid.'),('gm',1,'Syntax: .gm [on/off]\r\n\r\nEnable or Disable in game GM MODE or show current state of on/off not provided.'),('modify drunk',1,'Syntax: .modify drunk #value\r\n Set drunk level to #value (0..100). Value 0 remove drunk state, 100 is max drunked state.'),('goname',1,'Syntax: .goname $charactername\r\n\r\nTeleport to the given character. Either specify the character name or click on the character\'s portrait, e.g. when you are in a group.'),('list creature',3,'Syntax: .list creature #creature_id [#max_count]\r\n\r\nOutput creatures with creature id #creature_id found in world. Output creature guids and coordinates sorted by distance from character. Will be output maximum #max_count creatures. If #max_count not provided use 10 as default value.'),('gobject turn',2,'Syntax: .gobject turn #goguid \r\n\r\nSet for gameobject #goguid orientation same as current character orientation.'),('gps',1,'Syntax: .gps\r\n\r\nDisplay the position information for a selected character or creature. Position information includes X, Y, Z, and orientation, map Id and zone Id'),('groupgo',1,'Syntax: .groupgo $charactername\r\n\r\nTeleport the given character and his group to you.'),('guid',2,'Syntax: .guid\r\n\r\nDisplay the GUID for the selected character.'),('hidearea',3,'Syntax: .hidearea #areaid\r\n\r\nHide the area of #areaid to the selected character. If no character is selected, hide this area to you.'),('honor add',2,'Syntax: .honor add $amount\r\n\r\nAdd a certain amount of honor (gained in lifetime) to the selected player.'),('honor addkill',2,'Syntax: .honor addkikll\r\n\r\nAdd the targeted unit as one of your pvp kills today (you only get honor if it\'s a racial leader or a player)'),('honor update',2,'Syntax: .honor update\r\n\r\nForce honor to be update'),('hover',3,'Syntax: .hover #flag\r\n\r\nEnable or disable hover mode for your character.\r\n\r\nUse a #flag of value 1 to enable, use a #flag value of 0 to disable hover.'),('server exit',4,'Syntax: .server exit\r\n\r\nTerminate trinity-core NOW. Exit code 0.'),('server idleshutdown',3,'Syntax: .server idleshutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds if no active connections are present (no players). Use #exist_code or 0 as program exist code.'),('itemmove',2,'Syntax: .itemmove #sourceslotid #destinationslotid\r\n\r\nMove an item from slots #sourceslotid to #destinationslotid in your inventory\r\n\r\nNot yet implemented'),('kick',2,'Syntax: .kick [$charactername] [$reason]\r\n\r\nKick the given character name from the world with or without reason. If no character name is provided then the selected player (except for yourself) will be kicked. If no reason is provided, default is \"No Reason\".'),('learn',3,'Syntax: .learn #parameter\r\n\r\nSelected character learn a spell of id #parameter.'),('learn all',3,'Syntax: .learn all\r\n\r\nLearn all big set different spell maybe useful for Administaror.'),('learn all_crafts',2,'Syntax: .learn crafts\r\n\r\nLearn all professions and recipes.'),('learn all_gm',2,'Syntax: .learn all_gm\r\n\r\nLearn all default spells for Game Masters.'),('learn all_lang',1,'Syntax: .learn all_lang\r\n\r\nLearn all languages'),('learn all_myclass',3,'Syntax: .learn all_myclass\r\n\r\nLearn all spells and talents available for his class.'),('learn all_myspells',3,'Syntax: .learn all_myspells\r\n\r\nLearn all spells (except talents and spells with first rank learned as talent) available for his class.'),('learn all_mytalents',3,'Syntax: .learn all_mytalents\r\n\r\nLearn all talents (and spells with first rank learned as talent) available for his class.'),('setskill',3,'Syntax: .setskill #skill #level [#max]\r\n\r\nSet a skill of id #skill with a current skill value of #level and a maximum value of #max (or equal current maximum if not provide) for the selected character. If no character is selected, you learn the skill.'),('levelup',3,'Syntax: .levelup [$playername] [#numberoflevels]\r\n\r\nIncrease/decrease the level of character with $playername (or the selected if not name provided) by #numberoflevels Or +1 if no #numberoflevels provided). If #numberoflevels is omitted, the level will be increase by 1. If #numberoflevels is 0, the same level will be restarted. If no character is selected and name not provided, increase your level. Command can be used for offline character. All stats and dependent values recalculated. At level decrease talents can be reset if need. Also at level decrease equipped items with greater level requirement can be lost.'),('linkgrave',3,'Syntax: .linkgrave #graveyard_id [alliance|horde]\r\n\r\nLink current zone to graveyard for any (or alliance/horde faction ghosts). This let character ghost from zone teleport to graveyard after die if graveyard is nearest from linked to zone and accept ghost of this faction. Add only single graveyard at another map and only if no graveyards linked (or planned linked at same map).'),('gobject delete',2,'Syntax: .gobject delete #go_guid\r\nDelete gameobject with guid #go_guid.'),('gobject move',2,'Syntax: .gobject move #goguid [#x #y #z]\r\n\r\nMove gameobject #goguid to character coordinates (or to (#x,#y,#z) coordinates if its provide).'),('gobject add',2,'Syntax: .gobject add #id <spawntimeSecs>\r\n\r\nAdd a game object from game object templates to the world at your current location using the #id.\r\nspawntimesecs sets the spawntime, it is optional.\r\n\r\nNote: this is a copy of .gameobject.'),('go xyz',1,'Syntax: .go xyz #x #y #z [#mapid]\r\n\r\nTeleport player to point with (#x,#y,#z) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),('go zonexy',1,'Syntax: .go zonexy #x #y [#zone]\r\n\r\nTeleport player to point with (#x,#y) client coordinates at ground(water) level in zone #zoneid or current zone if #zoneid not provided. You can look up zone using .lookup area $namepart'),('loadscripts',3,'Syntax: .loadscripts $scriptlibraryname\r\n\r\nUnload current and load the script library $scriptlibraryname or reload current if $scriptlibraryname omitted, in case you changed it while the server was running.'),('lockaccount',0,'Syntax: .lockaccount [on|off]\r\n\r\nAllow login from account only from current used IP or remove this requirement.'),('lookup spell',3,'Syntax: .lookup spell $namepart\r\n\r\nLooks up a spell by $namepart, and returns all matches with their spell ID\'s.'),('lookup quest',3,'Syntax: .lookup quest $namepart\r\n\r\nLooks up a quest by $namepart, and returns all matches with their quest ID\'s.'),('lookup skill',3,'Syntax: .lookup skill $$namepart\r\n\r\nLooks up a skill by $namepart, and returns all matches with their skill ID\'s.'),('lookup object',3,'Syntax: .lookup object $objname\r\n\r\nLooks up an gameobject by $objname, and returns all matches with their Gameobject ID\'s.'),('lookup itemset',3,'Syntax: .lookup itemset $itemname\r\n\r\nLooks up an item set by $itemname, and returns all matches with their Item set ID\'s.'),('lookup item',3,'Syntax: .lookup item $itemname\r\n\r\nLooks up an item by $itemname, and returns all matches with their Item ID\'s.'),('lookup creature',3,'Syntax: .lookup creature $namepart\r\n\r\nLooks up a creature by $namepart, and returns all matches with their creature ID\'s.'),('maxskill',3,'Syntax: .maxskill\r\nSets all skills of the targeted player to their maximum values for its current level.'),('Mod32Value',3,'Syntax: .Mod32Value #field #value\r\n\r\nAdd #value to field #field of your character.'),('modify aspeed',1,'Syntax: .modify aspeed #rate\r\n\r\nModify all speeds -run,swim,run back,swim back- of the selected player to \"normalbase speed for this move type\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify bit',1,'Syntax: .modify bit #field #bit\r\n\r\nToggle the #bit bit of the #field field for the selected player. If no player is selected, modify your character.'),('modify bwalk',1,'Syntax: .modify bwalk #rate\r\n\r\nModify the speed of the selected player while running backwards to \"normal walk back speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify energy',1,'Syntax: .modify energy #energy\r\n\r\nModify the energy of the selected player. If no player is selected, modify your energy.'),('modify faction',1,'Syntax: .modify faction #factionid #flagid #npcflagid #dynamicflagid\r\n\r\nModify the faction and flags of the selected creature. Without arguments, display the faction and flags of the selected creature.'),('modify money',1,'Syntax:\r\n.modify money #money\r\n.money #money\r\n\r\nAdd or remove money to the selected player. If no player is selected, modify your money.\r\n\r\n #gold can be negative to remove money.'),('modify mount',1,'Syntax:\r\n.modify mount #id #speed\r\nDisplay selected player as mounted at #id creature and set speed to #speed value.'),('modify hp',1,'Syntax: .modify hp #newhp\r\n\r\nModify the hp of the selected player. If no player is selected, modify your hp.'),('modify mana',1,'Syntax: .modify mana #newmana\r\n\r\nModify the mana of the selected player. If no player is selected, modify your mana.'),('modify rage',1,'Syntax: .modify rage #newrage\r\n\r\nModify the rage of the selected player. If no player is selected, modify your rage.'),('modify scale',1,''),('modify speed',1,'Syntax:\r\n.modify speed #rate\r\n.speed #rate\r\n\r\nModify the running speed of the selected player to \"normal base run speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify spell',1,''),('modify swim',1,'Syntax: .modify swim #rate\r\n\r\nModify the swim speed of the selected player to \"normal swim speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify titles',1,'Syntax:\n.modify titles #mask\n.titles #mask\n\nAllows user to use all titles from #mask.\n\n #mask=0 disables the title-choose-field'),('honor show',1,'Syntax: .honor show\r\n\r\nDisplay the honor stats of the selected player'),('npc spawndist',2,'Syntax: .npc spawndist #dist\r\n\r\nAdjust spawndistance of selected creature to dist.'),('movegens',3,'Syntax: .movegens\r\n  Show movement generators stack for selected creature or player.'),('mute',1,'Syntax: .mute $playerName $timeInMinutes\r\n\r\nDisible chat messaging for any character from account of character $playerName at $timeInMinutes minutes.'),('unmute',1,'Syntax: .unmute $playerName\r\n\r\nRestore chat messaging for any character from account of character $playerName.'),('npc setmovetype',2,'Syntax: .npc setmovetype [#creature_guid] stay/random/way [NODEL]\r\n\r\nSet for creature pointed by #creature_guid (or selected if #creature_guid not provided) movement type and move it to respawn position (if creature alive). Any existing waypoints for creature will be removed from the database if you do not use NODEL. If the creature is dead then movement type will applied at creature respawn.\r\nMake sure you use NODEL, if you want to keep the waypoints.'),('namego',1,'Syntax: .namego $charactername\r\n\r\nTeleport the given character to you.'),('npc setmodel',2,'Syntax: .npc setmodel #displayid\r\n\r\nChange the model id of the selected creature to #displayid.'),('neargrave',3,'Syntax: .neargrave [alliance|horde]\r\n\r\nFind nearest graveyard linked to zone (or only nearest from accepts alliance or horde faction ghosts).'),('npc move',2,'Syntax: .npc move [#creature_guid]\r\n\r\nMove the targeted creature spawn point to your coordinates.'),('npc name',2,'Syntax: .npc name $name\r\n\r\nChange the name of the selected creature or character to $name.\r\n\r\nCommand disabled.'),('npc info',3,'Syntax: .npc info\r\n\r\nDisplay a list of details for the selected creature.\r\n\r\nThe list includes:\r\n- GUID, Faction, NPC flags, Entry ID, Model ID,\r\n- Level,\r\n- Health (current/maximum),\r\n\r\n- Field flags, dynamic flags, faction template, \r\n- Position information,\r\n- and the creature type, e.g. if the creature is a vendor.'),('password',0,'Syntax: .password $old_password $new_password $new_password\r\n\r\nChange your account password.'),('pinfo',2,'Syntax: .pinfo [$player_name] [rep]\r\n\r\nOutput account information for selected player or player find by $player_name. If \"rep\" parameter provided show reputation information for player.'),('plimit',3,'Syntax: .plimit [#num|-1|-2|-3|reset|player|moderator|gamemaster|administrator]\r\n\r\nWithout arg show current player amount and security level limitations for login to server, with arg set player linit ($num > 0) or securiti limitation ($num < 0 or security leme name. With `reset` sets player limit to the one in the config file'),('recall',1,'Syntax: .recall [$playername]\r\n\r\nTeleport $playername or selected player to the place where he has been before last use of a teleportation command. If no $playername is entered and no player is selected, it will teleport you.'),('reload',3,'Syntax: .reload table_name\r\n\r\nReload table `table_name` if reload support added for this table and this table can be _safe_ reloaded.'),('reload all',3,'Syntax: .reload all\r\n\r\nReload all tables with reload support added and that can be _safe_ reloaded.'),('reload all_area',3,'Syntax: .reload all_area\r\n\r\nReload all `areatrigger_*` tables if reload support added for this table and this table can be _safe_ reloaded.'),('reload all_loot',3,'Syntax: .reload all_loot\r\n\r\nReload all `*_loot_template` tables. This can be slow operation with lags for server run.'),('reload all_quest',3,'Syntax: .reload all_quest\r\n\r\nReload all quest related tables if reload support added for this table and this table can be _safe_ reloaded.'),('reload all_spell',3,'Syntax: .reload all\r\n\r\nReload all `spell_*` tables with reload support added and that can be _safe_ reloaded.'),('go object',1,'Syntax: .go object #object_guid\r\nTeleport your character to gameobject with guid #object_guid'),('go trigger',2,'Syntax: .go trigger #trigger_id\r\n\r\nTeleport your character to areatrigger with id #trigger_id. Character will be teleported to trigger target if selected areatrigger is telporting trigger.'),('reset honor',3,'Syntax:\r\n.reset honor [Playername]\r\n  Reset all honor data for targeted character.'),('reset level',3,'Syntax:\r\n.reset level [Playername]\r\n  Reset level to 1 including reset stats and talents.  Equipped items with greater level requirement can be lost.'),('reset spells',3,'Syntax:\r\n.reset spells [Playername]\r\n  Removes all non-original spells from spellbook.\r\n. Playername can be name of offline character.'),('reset stats',3,'Syntax:\r\n.reset stats [Playername]\r\n  Resets(recalculate) all stats of the targeted player to their original values at current level.'),('reset talents',3,'Syntax:\r\n.reset talents [Playername]\r\n  Removes all talents of the targeted player. Playername can be name of offline character.'),('respawn',3,'Syntax: .respawn\r\n\r\nRespawn all nearest creatures and GO without waiting respawn time expiration.'),('revive',3,'Syntax: .revive\r\n\r\nRevive the selected player. If no player is selected, it will revive you.'),('save',0,'Syntax: .save\r\n\r\nSaves your character.'),('saveall',1,'Syntax: .saveall\r\n\r\nSave all characters in game.'),('baninfo account',3,'Syntax is: baninfo account\r\nWatch full information about a specific ban.'),('sendmail',1,'Syntax: .sendmail #playername \"#subject\" \"#text\"\r\n\r\nSend a mail to a player. Subject and mail text must be in \"\".'),('go graveyard',2,'Syntax: .go graveyard #graveyardId\r\n Teleport to graveyard with the graveyardId specified.'),('gm visible',1,'Syntax: .gm visible on/off\r\n\r\nOutput current visibility state or make GM visible(on) and invisible(off) for other players.'),('go creature',2,'Syntax: .go creature #creature_guid\r\nTeleport your character to creature with guid #creature_guid.\r\n.gocreature #creature_name\r\nTeleport your character to creature with this name.\r\n.gocreature id #creature_id\r\nTeleport your character to a creature that was spawned from the template with this entry.\r\n*If* more than one creature is found, then you are teleported to the first that is found inside the database.'),('showarea',3,'Syntax: .showarea #areaid\r\n\r\nReveal the area of #areaid to the selected character. If no character is selected, reveal this area to you.'),('showhonor',0,'Syntax: .showhonor\r\n\r\nDisplay your honor ranking.'),('server info',0,'Syntax: .server info\r\n\r\nDisplay server version and the number of connected players.'),('debug update',3,'Syntax: .debug update #field #value\r\n\r\nUpdate the field #field of the selected character or creature with value #value.\r\n\r\nIf no #value is provided, display the content of field #field.'),('debug standstate',2,'Syntax: .debug standstate #emoteid\r\n\r\nChange the emote of your character while standing to #emoteid.'),('start',0,'Syntax: .start\r\n\r\nTeleport you to the starting area of your character.'),('debug setvalue',3,'Syntax: .debug setvalue #field #value #isInt\r\n\r\nSet the field #field of the selected creature with value #value. If no creature is selected, set the content of your field.\r\n\r\nUse a #isInt of value 1 if #value is an integer.'),('taxicheat',1,'Syntax: .taxicheat on/off\r\n\r\nTemporary grant access or remove to all taxi routes for the selected character. If no character is selected, hide or reveal all routes to you.\r\n\r\nVisited taxi nodes sill accessible after removing access.'),('ticket list',1,'Displays a list of open GM tickets.'),('ticket onlinelist',1,'Displays a list of open GM tickets whose owner is online.'),('ticket viewname',1,'Usage: .ticket viewname $creatorname. \r\nReturns details about specified ticket. Ticket must be open and not deleted.'),('debug getvalue',3,'Syntax: .debug getvalue #field #isInt\r\n\r\nGet the field #field of the selected creature. If no creature is selected, get the content of your field.\r\n\r\nUse a #isInt of value 1 if the expected field content is an integer.'),('unaura',3,'Syntax: .unaura #spellid\r\n\r\nRemove aura due to spell #spellid from the selected Unit.'),('ban ip',3,'Syntax is: ban ip $Ip $bantime $reason\r\nBan IP.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),('unlearn',3,'Syntax: .unlearn #startspell #endspell\r\n\r\nUnlearn for selected player the range of spells between id #startspell and #endspell. If no #endspell is provided, just unlearn spell of id #startspell.'),('cast',3,'Syntax: .cast #spellid [triggered]\r\n  Cast #spellid to selected target. If no target selected cast to self. If \'trigered\' or part provided then spell casted with triggered flag.'),('debug anim',2,'Syntax: .debug anim #emoteid\r\n\r\nPlay emote #emoteid for your character.'),('cast back',3,'Syntax: .cast back #spellid [triggered]\r\n  Selected target will cast #spellid to your character. If \'trigered\' or part provided then spell casted with triggered flag.'),('wchange',3,'Syntax: .wchange #weathertype #status\r\n\r\nSet current weather to #weathertype with an intensity of #status.\r\n\r\n#weathertype can be 1 for rain, 2 for snow, and 3 for sand. #status can be 0 for disabled, and 1 for enabled.'),('whispers',1,'Syntax: .whispers on|off\r\nEnable/disable accepting whispers by GM from players. By default use trinityd.conf setting.'),('ban character',3,'Syntax is: ban character $Name $bantime $reason\r\nBan account and kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),('wp',2,'Using WP Command:\r\nEach Waypoint Command has it\'s own description!'),('wp add',2,'Syntax: .wp add [#creature_guid or Select a Creature]'),('wp modify',2,'Syntax: .wp modify [#creature_guid or Select a Creature]\r\nadd - Add a waypoint after the selected visual\r\nwaittime $time\r\nemote ID\r\nspell ID\r\ntext1| text2| text3| text4| text5 <text>\r\nmodel1 ID\r\nmodel2 ID\r\nmove(moves wp to player pos)\r\ndel (deletes the wp)\r\n\r\nOnly one parameter per time!'),('wp show',2,'Syntax: .wp show [#creature_guid or Select a Creature]\r\non\r\nfirst\r\nlast\r\noff\r\ninfo\r\n\r\nFor using info you have to do first show on and than select a Visual-Waypoint and do the show info!'),('gm ingame',0,'Syntax: .gm ingame\r\n\r\nDisplay a list of available in game Game Masters.'),('ban account',3,'Syntax is: ban account $Name $bantime $reason\r\nBan account kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),('lookup tele',1,'Syntax: .lookup tele $substring\r\n\r\nSearch and output all .tele command locations with provide $substring in name.'),('lookup area',1,'Syntax: .lookup area $namepart\r\n\r\nLooks up an area by $namepart, and returns all matches with their area ID\'s.'),('gobject near ',3,'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.'),('tele',1,'Syntax: .tele #location\r\n\r\nTeleport player to a given location.'),('guild delete',2,'Syntax: .guild delete $GuildName\r\n\r\nDelete guild $GuildName.'),('guild invite',2,'Syntax: .guild invite $CharacterName $GuildName\r\n\r\nAdd $CharacterName into a guild $GuildName.'),('guild rank',2,'Syntax: .guild rank $CharacterName #Rank\r\n\r\nSet for $CharacterName rank #Rank in a guild.'),('guild uninvite',2,'Syntax: .guild uninvite $CharacterName\r\n\r\nRemove $CharacterName from a guild.'),('npc flag',2,'Syntax: .npc flag #npcflag\r\n\r\nSet the NPC flags of creature template of the selected creature and selected creature to #npcflag. NPC flags will applied to all creatures of selected creature template after server restart or grid unload/load.'),('learn all_default',1,'Syntax: .learn all_default [$playername]\r\n\r\nLearn for selected/$playername player all default spells for his race/class and spells rewarded by completed quests.'),('npc playemote',3,'Syntax: .npc playemote #emoteid\r\n\r\nMake the selected creature emote with an emote of id #emoteid.'),('modify rep',2,'Syntax: .modify rep #repId (#repvalue | $rankname [#delta])\r\nSets the selected players reputation with faction #repId to #repvalue or to $reprank.\r\nIf the reputation rank name is provided, the resulting reputation will be the lowest reputation for that rank plus the delta amount, if specified.\r\nYou can use \'.pinfo rep\' to list all known reputation ids, or use \'.lookup faction $name\' to locate a specific faction id.'),('modify honor',2,'Syntax: .modify honor $field $value\r\n\r\nAdd $value to an honor $field (it\'s just for debug , values won\'t be saved at player logout)\r\nField list: points / rank / todaykills / yesterdaykills / yesterdayhonor /\r\nthisweekkills / thisweekhonor / lastweekkills / lastweekhonor /\r\nlastweekstanding / lifetimedishonorablekills / lifetimehonorablekills '),('lookup faction',3,'Syntax: .lookup faction $name\r\nAttempts to find the ID of the faction with the provided $name.'),('npc addweapon',3,'Not yet implemented.'),('list object',3,'Syntax: .list object #gameobject_id [#max_count]\r\n\r\nOutput gameobjects with gameobject id #gameobject_id found in world. Output gameobject guids and coordinates sorted by distance from character. Will be output maximum #max_count gameobject. If #max_count not provided use 10 as default value.'),('reset all',3,'Syntax: .reset all spells\r\n\r\nSyntax: .reset all talents\r\n\r\nRequest reset spells or talents at next login each existed character.'),('gobject target',2,'Syntax: .gobject target [#go_id|#go_name_part]\r\n\r\nLocate and show position nearest gameobject. If #go_id or #go_name_part provide then locate and show position of nearest gameobject with gameobject template id #go_id or name included #go_name_part as part.'),('tele add',3,'Syntax: .tele add $name\r\n\r\nAdd current your position to .tele command target locations list with name $name.'),('tele del',3,'Syntax: .tele del $name\r\n\r\nRemove location with name $name for .tele command locations list.'),('tele group',1,'Syntax: .tele group#location\r\n\r\nTeleport a selected player and his group members to a given location.'),('tele name',1,'Syntax: .tele name #playername #location\r\n\r\nTeleport a player to a given location.'),('damage',3,'Syntax: .damage $damage_amount [$school [$spellid]]\r\n\r\nApply $damage to target. If not $school and $spellid provided then this flat clean melee damage without any modifiers. If $school provided then damage modified by armor reduction (if school physical), and target absorbing modifiers and result applied as melee damage to target. If spell provided then damage modified and applied as spell damage. $spellid can be shift-link.'),('wp import',3,'Syntax: .wp import $filename'),('wp export',3,'Syntax: .wp export [#creature_guid or Select a Creature] $filename'),('gm fly',3,'Syntax: .gm fly on/off\r\nEnable/disable gm fly mode.'),('lookup event',2,'Syntax: .lookup event $name\r\nAttempts to find the ID of the event with the provided $name.'),('event',2,'Syntax: .event #event_id\r\nShow details about event with #event_id.'),('event activelist',2,'Syntax: .event activelist\r\nShow list of currently active events.'),('event start',2,'Syntax: .event start #event_id\r\nStart event #event_id. Set start time for event to current moment (change not saved in DB).'),('event stop',2,'Syntax: .event stop #event_id\r\nStop event #event_id. Set start time for event to time in past that make current moment is event stop time (change not saved in DB).'),('combatstop',2,'Syntax: .combatstop [$playername]\r\nStop combat for selected character. If selected non-player then command applied to self. If $playername provided then attempt applied to online player $playername.'),('quest complete',3,'Syntax: .quest complete #questid\r\nMark all quest objectives as completed for target character active quest. After this target character can go and get quest reward.'),('cast self',3,'Syntax: .cast self #spellid [triggered]\r\nCast #spellid by target at target itself. If \'trigered\' or part provided then spell casted with triggered flag.'),('cast target',3,'Syntax: .cast target #spellid [triggered]\r\n  Selected target will cast #spellid to his victim. If \'trigered\' or part provided then spell casted with triggered flag.'),('instance unbind',3,'Syntax: .instance unbind all\r\n  All of the selected player\'s binds will be cleared.'),('instance listbinds',3,'Syntax: .instance listbinds\r\n  Lists the binds of the selected player.'),('instance stats',3,'Syntax: .instance stats\r\n  Shows statistics about instances.'),('instance savedata',3,'Syntax: .instance savedata\r\n  Save the InstanceData for the current player\'s map to the DB.'),('learn all_recipes',2,'Syntax: .learn all_recipes [$profession]\r\rLearns all recipes of specified profession and sets skill level to max.\rExample: .learn all_recipes enchanting'),('cast dist',3,'Syntax: .cast dist #spellid [#dist [triggered]]\r\n  You will cast spell to pint at distance #dist. If \'trigered\' or part provided then spell casted with triggered flag. Not all spells can be casted as area spells.'),('server idleshutdown cancel',3,'Syntax: .server idleshutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('server idlerestart',3,'Syntax: .server idlerestart #delay\r\n\r\nRestart the server after #delay seconds if no active connections are present (no players). Use #exist_code or 2 as program exist code.'),('server idlerestart cancel',3,'Syntax: .server idlerestart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('reload config',3,'Syntax: .reload config\r\n\r\nReload config settings (by default stored in trinityd.conf). Not all settings can be change at reload: some new setting values will be ignored until restart, some values will applied with delay or only to new objects/maps, some values will explicitly rejected to change at reload.'),('lookup player account',2,'Syntax : .lookup player account $account ($limit) \r\n\r\n Searchs players, which account username is $account with optional parametr $limit of results.'),('lookup player ip',2,'Syntax : .lookup player ip $ip ($limit) \r\n\r\n Searchs players, which account ast_ip is $ip with optional parametr $limit of results.'),('lookup player email',2,'Syntax : .lookup player email $email ($limit) \r\n\r\n Searchs players, which account email is $email with optional parametr $limit of results.'),('gm chat',1,'Syntax: .gm chat [on/off]\r\n\r\nEnable or disable chat GM MODE (show gm badge in messages) or show current state of on/off not provided.'),('reload all_locales',3,'Syntax: .reload all_locales\r\n\r\nReload all `locales_*` tables with reload support added and that can be _safe_ reloaded.'),('debug threatlist',3,'Syntax: .debug threatlist\n\n Prints out the current threatlist of the targetted creature.'),('debug hostilrefs',3,'Syntax: .debug hostilrefs\n\n Prints out the hostil refs of the targetted unit.'),('freeze',2,'Syntax: .freeze (#player)\r\n\"Freezes\" #player and disables his chat. When using this without #name it will freeze your target.'),('unfreeze',2,'Syntax: .unfreeze (#player)\r\n\"Unfreezes\" #player and enables his chat again. When using this without #name it will unfreeze your target.'),('listfreeze',1,'Syntax: .listfreeze\r\n\r\nSearch and output all frozen players.'),('banlist character',3,'Syntax is: banlist character $Name\r\nSearches the banlist for a character name pattern. Pattern required.'),('banlist ip',3,'Syntax is: banlist ip [$Ip]\r\nSearches the banlist for a IP pattern or show full list of IP bans.'),('unban account',3,'Syntax is: unban account $Name\r\nUnban accounts for account name pattern.'),('unban character',3,'Syntax is: unban character $Name\r\nUnban accounts for character name pattern.'),('unban ip',3,'Syntax is: unban ip $Ip\r\nUnban accounts for IP pattern.'),('pdump write',3,'Syntax is: pdump write $filename $playerNameOrGUID\r\nWrite character dump with name/guid $playerNameOrGUID to file $filename.'),('pdump load',3,'Syntax is: pdump load $filename $account [$newname] [$newguid]\r\nLoad character dump from dump file into character list of $account with saved or $newname, with saved (or first free) or $newguid guid.'),('list item',3,'Syntax: .list item #item_id [#max_count]\r\n\r\nOutput items with item id #item_id found in all character inventories, mails, auctions, and guild banks. Output item guids, item owner guid, owner account and owner name (guild name and guid in case guild bank). Will be output maximum #max_count items. If #max_count not provided use 10 as default value.'),('help',0,'Syntax: .help [$command]\r\n\r\nDisplay usage instructions for the given $command. If no $command provided show list available commands.'),('account',0,'Syntax: .account\r\n\r\nDisplay the access level of your account.'),('account create',4,'Syntax: .account create $account $password\r\n\r\nCreate account and set password to it.'),('account delete',4,'Syntax: .account delete $account\r\n\r\nDelete account with all characters.'),('account onlinelist',4,'Syntax: .account onlinelist\r\n\r\nShow list of online accounts.'),('account set addon',3,'Syntax: .account set addon [$account] #addon\r\n\r\nSet user (posible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),('account set gmlevel',4,'Syntax: .account set gmlevel [$account] #level\r\n\r\nSet the security level for targeted player (can\'t be used at self) or for account $name to a level of #level.\r\n\r\n#level may range from 0 to 3.'),('account set password',4,'Syntax: .account set password $account $password $password\r\n\r\nSet password for account.'),('chardelete',4,'Syntax: .chardelete $charactername\r\n\r\nDelete character.'),('gm list',3,'Syntax: .gm list\r\n\r\nDisplay a list of all Game Masters accounts and security levels.'),('gm online',0,'Syntax: .gm online\r\n\r\nDisplay a list of available Game Masters.'),('sendmessage',3,'Syntax: .sendmessage $playername $message\r\n\r\nSend screen message to player from ADMINISTRATOR.'),('server corpses',2,'Syntax: .server corpses\r\n\r\nTriggering corpses expire check in world.'),('server motd',0,'Syntax: .server motd\r\n\r\nShow server Message of the day.'),('server set loglevel',4,'Syntax: .server set loglevel #level\r\n\r\nSet server log level (0 - errors only, 1 - basic, 2 - detail, 3 - debug).'),('server set motd',3,'Syntax: .server set motd $MOTD\r\n\r\nSet server Message of the day.'),('repairitems',2,'Syntax: .repairitems\r\n\r\nRepair all selected player\'s items.'),('npc follow',2,'Syntax: .npc follow\r\n\r\nSelected creature start follow you until death/fight/etc.'),('npc unfollow',2,'Syntax: .npc unfollow\r\n\r\nSelected creature (non pet) stop follow you.'),('waterwalk',2,'Syntax: .waterwalk on/off\r\n\r\nSet on/off waterwalk state for selected player or self if no player selected.'),('pet create',2,'Syntax: .pet create\r\n\r\nCreates a pet of the selected creature.'),('pet learn',2,'Syntax: .pet learn\r\n\r\nLearn #spellid to pet.'),('pet unlearn',2,'Syntax: .pet unlean\r\n\r\nunLearn #spellid to pet.'),('pet tp',2,'Syntax: .pet tp #\r\n\r\nChange pet\'s amount of training points.'),('modify gender',2,'Syntax: .modify gender male/female\r\n\r\nChange gender of selected player.'),('gobject activate',2,'Syntax: .gobject activate #guid\r\n\r\nActivates an object like a door or a button.'),('playall',2,'Syntax: .playall #soundid\r\n\r\nPlayer a sound to whole server.'),('possess',3,'Syntax: .possess\r\n\r\nPossesses indefinitely the selected creature.'),('unpossess',3,'Syntax: .unpossess\r\n\r\nIf you are possessed, unpossesses yourself; otherwise unpossesses current possessed target.'),('senditems',3,'Syntax: .senditems #playername \"#subject\" \"#text\" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in \"\". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),('bindsight',3,'Syntax: .bindsight\r\n\r\nBinds vision to the selected unit indefinitely. Cannot be used while currently possessing a target.'),('unbindsight',3,'Syntax: .unbindsight\r\n\r\nRemoves bound vision. Cannot be used while currently possessing a target.'),('sendmoney',3,'Syntax: .sendmoney #playername \"#subject\" \"#text\" #money\r\n\r\nSend mail with money to a player. Subject and mail text must be in \"\".'),('server restart',3,'Syntax: .server restart #delay\r\n\r\nRestart the server after #delay seconds. Use #exist_code or 2 as program exist code.'),('server restart cancel',3,'Syntax: .server restart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('server shutdown',3,'Syntax: .server shutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds. Use #exist_code or 0 as program exist code.'),('server shutdown cancel',3,'Syntax: .server shutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('gmnotify',2,'Syntax: .gmnotify $notification\r\nDisplays a notification on the screen of all online GM\'s.'),('gmnameannounce',2,'Syntax: .gmnameannounce $announcement.\r\nSend an announcement to all online GM\'s, displaying the name of the sender.'),('gmannounce',4,'Syntax: .gmannounce $announcement\r\nSend an announcement to online Gamemasters.'),('ticket close',2,'Usage: .ticket close $ticketid.\r\nCloses the specified ticket. Does not delete permanently.'),('ticket delete',3,'Usage: .ticket delete $ticketid.\r\nDeletes the specified ticket permanently. Ticket must be closed first.'),('ticket assign',3,'Usage: .ticket assign $ticketid $gmname.\r\nAssigns the specified ticket to the specified Game Master.'),('ticket unassign',3,'Usage: .ticket unassign $ticketid.\r\nUnassigns the specified ticket from the current assigned Game Master.'),('ticket comment',2,'Usage: .ticket comment $ticketid $comment.\r\nAllows the adding or modifying of a comment to the specified ticket.'),('reload tickets',4,'Usage: .reload tickets.\r\nReloads GM Tickets from the database and re-caches them into memory.'),('npc addtemp',2,'Adds temporary NPC, not saved to database.'),('gobject addtemp',2,'Adds a temporary gameobject that is not saved to DB.'),('.ticket closedlist',1,'Displays a list of closed GM tickets.'),('reload spell_linked_spell',3,'Usage: .reload spell_linked_spell\r\nReloads the spell_linked_spell DB table.'),('go ticket',1,'Syntax: .go ticket #ticketid\r\nTeleports the user to the location where $ticketid was created.');
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature`
--

DROP TABLE IF EXISTS `creature`;
CREATE TABLE `creature` (
  `guid` int(10) unsigned NOT NULL auto_increment COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Creature Identifier',
  `map` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `modelid` mediumint(8) unsigned NOT NULL default '0',
  `equipment_id` mediumint(9) NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `spawntimesecs` int(10) unsigned NOT NULL default '120',
  `spawndist` float NOT NULL default '5',
  `currentwaypoint` mediumint(8) unsigned NOT NULL default '0',
  `curhealth` int(10) unsigned NOT NULL default '1',
  `curmana` int(10) unsigned NOT NULL default '0',
  `DeathState` tinyint(3) unsigned NOT NULL default '0',
  `MovementType` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  KEY `idx_map` (`map`),
  KEY `idx_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';

--
-- Dumping data for table `creature`
--

LOCK TABLES `creature` WRITE;
/*!40000 ALTER TABLE `creature` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_addon`
--

DROP TABLE IF EXISTS `creature_addon`;
CREATE TABLE `creature_addon` (
  `guid` int(10) unsigned NOT NULL default '0',
  `path_id` int(11) unsigned NOT NULL default '0',
  `mount` mediumint(8) unsigned NOT NULL default '0',
  `bytes0` int(10) unsigned NOT NULL default '0',
  `bytes1` int(10) unsigned NOT NULL default '0',
  `bytes2` int(10) unsigned NOT NULL default '0',
  `emote` int(10) unsigned NOT NULL default '0',
  `moveflags` int(10) unsigned NOT NULL default '0',
  `auras` text,
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creature_addon`
--

LOCK TABLES `creature_addon` WRITE;
/*!40000 ALTER TABLE `creature_addon` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_addon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_equip_template`
--

DROP TABLE IF EXISTS `creature_equip_template`;
CREATE TABLE `creature_equip_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Unique entry',
  `equipmodel1` mediumint(8) unsigned NOT NULL default '0',
  `equipmodel2` mediumint(8) unsigned NOT NULL default '0',
  `equipmodel3` mediumint(8) unsigned NOT NULL default '0',
  `equipinfo1` int(10) unsigned NOT NULL default '0',
  `equipinfo2` int(10) unsigned NOT NULL default '0',
  `equipinfo3` int(10) unsigned NOT NULL default '0',
  `equipslot1` int(11) NOT NULL default '0',
  `equipslot2` int(11) NOT NULL default '0',
  `equipslot3` int(11) NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Equipment)';

--
-- Dumping data for table `creature_equip_template`
--

LOCK TABLES `creature_equip_template` WRITE;
/*!40000 ALTER TABLE `creature_equip_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_equip_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_formations`
--

DROP TABLE IF EXISTS `creature_formations`;
CREATE TABLE `creature_formations` (
  `leaderGUID` int(11) unsigned NOT NULL,
  `memberGUID` int(11) unsigned NOT NULL,
  `dist` float unsigned NOT NULL,
  `angle` float unsigned NOT NULL,
  `groupAI` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`memberGUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creature_formations`
--

LOCK TABLES `creature_formations` WRITE;
/*!40000 ALTER TABLE `creature_formations` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_formations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_involvedrelation`
--

DROP TABLE IF EXISTS `creature_involvedrelation`;
CREATE TABLE `creature_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

--
-- Dumping data for table `creature_involvedrelation`
--

LOCK TABLES `creature_involvedrelation` WRITE;
/*!40000 ALTER TABLE `creature_involvedrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_involvedrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_loot_template`
--

DROP TABLE IF EXISTS `creature_loot_template`;
CREATE TABLE `creature_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

--
-- Dumping data for table `creature_loot_template`
--

LOCK TABLES `creature_loot_template` WRITE;
/*!40000 ALTER TABLE `creature_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_model_info`
--

DROP TABLE IF EXISTS `creature_model_info`;
CREATE TABLE `creature_model_info` (
  `modelid` mediumint(8) unsigned NOT NULL default '0',
  `bounding_radius` float NOT NULL default '0',
  `combat_reach` float NOT NULL default '0',
  `gender` tinyint(3) unsigned NOT NULL default '2',
  `modelid_other_gender` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Model related info)';

--
-- Dumping data for table `creature_model_info`
--

LOCK TABLES `creature_model_info` WRITE;
/*!40000 ALTER TABLE `creature_model_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_model_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_onkill_reputation`
--

DROP TABLE IF EXISTS `creature_onkill_reputation`;
CREATE TABLE `creature_onkill_reputation` (
  `creature_id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Creature Identifier',
  `RewOnKillRepFaction1` smallint(6) NOT NULL default '0',
  `RewOnKillRepFaction2` smallint(6) NOT NULL default '0',
  `MaxStanding1` tinyint(4) NOT NULL default '0',
  `IsTeamAward1` tinyint(4) NOT NULL default '0',
  `RewOnKillRepValue1` mediumint(9) NOT NULL default '0',
  `MaxStanding2` tinyint(4) NOT NULL default '0',
  `IsTeamAward2` tinyint(4) NOT NULL default '0',
  `RewOnKillRepValue2` mediumint(9) NOT NULL default '0',
  `TeamDependent` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature OnKill Reputation gain';

--
-- Dumping data for table `creature_onkill_reputation`
--

LOCK TABLES `creature_onkill_reputation` WRITE;
/*!40000 ALTER TABLE `creature_onkill_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_onkill_reputation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_questrelation`
--

DROP TABLE IF EXISTS `creature_questrelation`;
CREATE TABLE `creature_questrelation` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

--
-- Dumping data for table `creature_questrelation`
--

LOCK TABLES `creature_questrelation` WRITE;
/*!40000 ALTER TABLE `creature_questrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_questrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_respawn`
--

DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL default '0',
  `instance` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';

--
-- Dumping data for table `creature_respawn`
--

LOCK TABLES `creature_respawn` WRITE;
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_template`
--

DROP TABLE IF EXISTS `creature_template`;
CREATE TABLE `creature_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `modelid_A` mediumint(8) unsigned NOT NULL default '0',
  `modelid_A2` mediumint(8) unsigned NOT NULL default '0',
  `modelid_H` mediumint(8) unsigned NOT NULL default '0',
  `modelid_H2` mediumint(8) unsigned NOT NULL default '0',
  `name` char(100) NOT NULL default '0',
  `subname` char(100) default NULL,
  `IconName` char(100) default NULL,
  `minlevel` tinyint(3) unsigned NOT NULL default '1',
  `maxlevel` tinyint(3) unsigned NOT NULL default '1',
  `minhealth` int(10) unsigned NOT NULL default '0',
  `maxhealth` int(10) unsigned NOT NULL default '0',
  `minmana` int(10) unsigned NOT NULL default '0',
  `maxmana` int(10) unsigned NOT NULL default '0',
  `armor` mediumint(8) unsigned NOT NULL default '0',
  `faction_A` smallint(5) unsigned NOT NULL default '0',
  `faction_H` smallint(5) unsigned NOT NULL default '0',
  `npcflag` int(10) unsigned NOT NULL default '0',
  `speed` float default '1',
  `scale` float NOT NULL default '1',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  `mindmg` float NOT NULL default '0',
  `maxdmg` float NOT NULL default '0',
  `dmgschool` tinyint(4) NOT NULL default '0',
  `attackpower` int(10) unsigned NOT NULL default '0',
  `baseattacktime` int(10) unsigned NOT NULL default '0',
  `rangeattacktime` int(10) unsigned NOT NULL default '0',
  `flags` int(10) unsigned NOT NULL default '0',
  `dynamicflags` int(10) unsigned NOT NULL default '0',
  `family` tinyint(4) NOT NULL default '0',
  `trainer_type` tinyint(4) NOT NULL default '0',
  `trainer_spell` mediumint(8) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `race` tinyint(3) unsigned NOT NULL default '0',
  `minrangedmg` float NOT NULL default '0',
  `maxrangedmg` float NOT NULL default '0',
  `rangedattackpower` smallint(5) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `flag1` int(10) unsigned NOT NULL default '0',
  `lootid` mediumint(8) unsigned NOT NULL default '0',
  `pickpocketloot` mediumint(8) unsigned NOT NULL default '0',
  `skinloot` mediumint(8) unsigned NOT NULL default '0',
  `resistance1` smallint(5) NOT NULL default '0',
  `resistance2` smallint(5) NOT NULL default '0',
  `resistance3` smallint(5) NOT NULL default '0',
  `resistance4` smallint(5) NOT NULL default '0',
  `resistance5` smallint(5) NOT NULL default '0',
  `resistance6` smallint(5) NOT NULL default '0',
  `spell1` mediumint(8) unsigned NOT NULL default '0',
  `spell2` mediumint(8) unsigned NOT NULL default '0',
  `spell3` mediumint(8) unsigned NOT NULL default '0',
  `spell4` mediumint(8) unsigned NOT NULL default '0',
  `PetSpellDataId` mediumint(8) unsigned NOT NULL default '0',
  `mingold` mediumint(8) unsigned NOT NULL default '0',
  `maxgold` mediumint(8) unsigned NOT NULL default '0',
  `AIName` char(64) NOT NULL default '',
  `MovementType` tinyint(3) unsigned NOT NULL default '0',
  `InhabitType` tinyint(3) unsigned NOT NULL default '3',
  `RacialLeader` tinyint(3) unsigned NOT NULL default '0',
  `RegenHealth` tinyint(3) unsigned NOT NULL default '1',
  `equipment_id` mediumint(8) unsigned NOT NULL default '0',
  `mechanic_immune_mask` int(10) unsigned NOT NULL default '0',
  `flags_extra` int(10) unsigned NOT NULL default '0',
  `ScriptName` char(64) NOT NULL default '',
  PRIMARY KEY  (`entry`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

--
-- Dumping data for table `creature_template`
--

LOCK TABLES `creature_template` WRITE;
/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_template_addon`
--

DROP TABLE IF EXISTS `creature_template_addon`;
CREATE TABLE `creature_template_addon` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `path_id` int(11) unsigned NOT NULL default '0',
  `mount` mediumint(8) unsigned NOT NULL default '0',
  `bytes0` int(10) unsigned NOT NULL default '0',
  `bytes1` int(10) unsigned NOT NULL default '0',
  `bytes2` int(10) unsigned NOT NULL default '0',
  `emote` mediumint(8) unsigned NOT NULL default '0',
  `moveflags` int(10) unsigned NOT NULL default '0',
  `auras` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creature_template_addon`
--

LOCK TABLES `creature_template_addon` WRITE;
/*!40000 ALTER TABLE `creature_template_addon` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_template_addon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_texts`
--

DROP TABLE IF EXISTS `custom_texts`;
CREATE TABLE `custom_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `language` tinyint(3) unsigned NOT NULL default '0',
  `emote` smallint(5) unsigned NOT NULL default '0',
  `comment` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Custom Texts';

--
-- Dumping data for table `custom_texts`
--

LOCK TABLES `custom_texts` WRITE;
/*!40000 ALTER TABLE `custom_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disenchant_loot_template`
--

DROP TABLE IF EXISTS `disenchant_loot_template`;
CREATE TABLE `disenchant_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Recommended id selection: item_level*100 + item_quality',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

--
-- Dumping data for table `disenchant_loot_template`
--

LOCK TABLES `disenchant_loot_template` WRITE;
/*!40000 ALTER TABLE `disenchant_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `disenchant_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_scripts`
--

DROP TABLE IF EXISTS `event_scripts`;
CREATE TABLE `event_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datatext` text NOT NULL,
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_scripts`
--

LOCK TABLES `event_scripts` WRITE;
/*!40000 ALTER TABLE `event_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventai_localized_texts`
--

DROP TABLE IF EXISTS `eventai_localized_texts`;
CREATE TABLE `eventai_localized_texts` (
  `id` int(11) unsigned NOT NULL auto_increment COMMENT 'Identifier',
  `locale_1` varchar(255) NOT NULL default '',
  `locale_2` varchar(255) NOT NULL default '',
  `locale_3` varchar(255) NOT NULL default '',
  `locale_4` varchar(255) NOT NULL default '',
  `locale_5` varchar(255) NOT NULL default '',
  `locale_6` varchar(255) NOT NULL default '',
  `locale_7` varchar(255) NOT NULL default '',
  `locale_8` varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Text Comment',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Localized Text';

--
-- Dumping data for table `eventai_localized_texts`
--

LOCK TABLES `eventai_localized_texts` WRITE;
/*!40000 ALTER TABLE `eventai_localized_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventai_localized_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventai_scripts`
--

DROP TABLE IF EXISTS `eventai_scripts`;
CREATE TABLE `eventai_scripts` (
  `id` int(11) unsigned NOT NULL auto_increment COMMENT 'Identifier',
  `creature_id` int(11) unsigned NOT NULL default '0' COMMENT 'Creature Template Identifier',
  `event_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Event Type',
  `event_inverse_phase_mask` int(11) NOT NULL default '0' COMMENT 'Mask which phases this event will not trigger in',
  `event_chance` int(3) unsigned NOT NULL default '100',
  `event_flags` int(3) unsigned NOT NULL default '0',
  `event_param1` int(11) NOT NULL default '0',
  `event_param2` int(11) NOT NULL default '0',
  `event_param3` int(11) NOT NULL default '0',
  `event_param4` int(11) NOT NULL default '0',
  `action1_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action1_param1` int(11) NOT NULL default '0',
  `action1_param2` int(11) NOT NULL default '0',
  `action1_param3` int(11) NOT NULL default '0',
  `action2_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action2_param1` int(11) NOT NULL default '0',
  `action2_param2` int(11) NOT NULL default '0',
  `action2_param3` int(11) NOT NULL default '0',
  `action3_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action3_param1` int(11) NOT NULL default '0',
  `action3_param2` int(11) NOT NULL default '0',
  `action3_param3` int(11) NOT NULL default '0',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Event Comment',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Scripts';

--
-- Dumping data for table `eventai_scripts`
--

LOCK TABLES `eventai_scripts` WRITE;
/*!40000 ALTER TABLE `eventai_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventai_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventai_summons`
--

DROP TABLE IF EXISTS `eventai_summons`;
CREATE TABLE `eventai_summons` (
  `id` int(11) unsigned NOT NULL auto_increment COMMENT 'Location Identifier',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `spawntimesecs` int(11) unsigned NOT NULL default '120',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Summon Comment',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';

--
-- Dumping data for table `eventai_summons`
--

LOCK TABLES `eventai_summons` WRITE;
/*!40000 ALTER TABLE `eventai_summons` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventai_summons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventai_texts`
--

DROP TABLE IF EXISTS `eventai_texts`;
CREATE TABLE `eventai_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `language` tinyint(3) unsigned NOT NULL default '0',
  `comment` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';

--
-- Dumping data for table `eventai_texts`
--

LOCK TABLES `eventai_texts` WRITE;
/*!40000 ALTER TABLE `eventai_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventai_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exploration_basexp`
--

DROP TABLE IF EXISTS `exploration_basexp`;
CREATE TABLE `exploration_basexp` (
  `level` tinyint(4) NOT NULL default '0',
  `basexp` mediumint(9) NOT NULL default '0',
  PRIMARY KEY  (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Exploration System';

--
-- Dumping data for table `exploration_basexp`
--

LOCK TABLES `exploration_basexp` WRITE;
/*!40000 ALTER TABLE `exploration_basexp` DISABLE KEYS */;
/*!40000 ALTER TABLE `exploration_basexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fishing_loot_template`
--

DROP TABLE IF EXISTS `fishing_loot_template`;
CREATE TABLE `fishing_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

--
-- Dumping data for table `fishing_loot_template`
--

LOCK TABLES `fishing_loot_template` WRITE;
/*!40000 ALTER TABLE `fishing_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `fishing_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event`
--

DROP TABLE IF EXISTS `game_event`;
CREATE TABLE `game_event` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) unsigned NOT NULL default '5184000' COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL default '2592000' COMMENT 'Length in minutes of the event',
  `description` varchar(255) default NULL COMMENT 'Description of the event displayed in console',
  `world_event` tinyint(3) unsigned NOT NULL default '0' COMMENT '0 if normal event, 1 if world event',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event`
--

LOCK TABLES `game_event` WRITE;
/*!40000 ALTER TABLE `game_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_battleground_holiday`
--

DROP TABLE IF EXISTS `game_event_battleground_holiday`;
CREATE TABLE `game_event_battleground_holiday` (
  `event` int(10) unsigned NOT NULL,
  `bgflag` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_battleground_holiday`
--

LOCK TABLES `game_event_battleground_holiday` WRITE;
/*!40000 ALTER TABLE `game_event_battleground_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_battleground_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_condition`
--

DROP TABLE IF EXISTS `game_event_condition`;
CREATE TABLE `game_event_condition` (
  `event_id` mediumint(8) unsigned NOT NULL default '0',
  `condition_id` mediumint(8) unsigned NOT NULL default '0',
  `req_num` float default '0',
  `max_world_state_field` smallint(5) unsigned NOT NULL default '0',
  `done_world_state_field` smallint(5) unsigned NOT NULL default '0',
  `description` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`event_id`,`condition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_condition`
--

LOCK TABLES `game_event_condition` WRITE;
/*!40000 ALTER TABLE `game_event_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_creature`
--

DROP TABLE IF EXISTS `game_event_creature`;
CREATE TABLE `game_event_creature` (
  `guid` int(10) unsigned NOT NULL,
  `event` smallint(6) NOT NULL default '0' COMMENT 'Put negatives values to remove during event',
  PRIMARY KEY  (`guid`,`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_creature`
--

LOCK TABLES `game_event_creature` WRITE;
/*!40000 ALTER TABLE `game_event_creature` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_creature_quest`
--

DROP TABLE IF EXISTS `game_event_creature_quest`;
CREATE TABLE `game_event_creature_quest` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `quest` mediumint(8) unsigned NOT NULL default '0',
  `event` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`quest`,`event`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_creature_quest`
--

LOCK TABLES `game_event_creature_quest` WRITE;
/*!40000 ALTER TABLE `game_event_creature_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_creature_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_gameobject`
--

DROP TABLE IF EXISTS `game_event_gameobject`;
CREATE TABLE `game_event_gameobject` (
  `guid` int(10) unsigned NOT NULL,
  `event` smallint(6) NOT NULL default '0' COMMENT 'Put negatives values to remove during event',
  PRIMARY KEY  (`guid`,`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_gameobject`
--

LOCK TABLES `game_event_gameobject` WRITE;
/*!40000 ALTER TABLE `game_event_gameobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_gameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_gameobject_quest`
--

DROP TABLE IF EXISTS `game_event_gameobject_quest`;
CREATE TABLE `game_event_gameobject_quest` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `quest` mediumint(8) unsigned NOT NULL default '0',
  `event` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`quest`,`event`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_gameobject_quest`
--

LOCK TABLES `game_event_gameobject_quest` WRITE;
/*!40000 ALTER TABLE `game_event_gameobject_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_gameobject_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_model_equip`
--

DROP TABLE IF EXISTS `game_event_model_equip`;
CREATE TABLE `game_event_model_equip` (
  `guid` int(10) unsigned NOT NULL default '0',
  `modelid` mediumint(8) unsigned NOT NULL default '0',
  `equipment_id` mediumint(8) unsigned NOT NULL default '0',
  `event` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_model_equip`
--

LOCK TABLES `game_event_model_equip` WRITE;
/*!40000 ALTER TABLE `game_event_model_equip` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_model_equip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_npc_gossip`
--

DROP TABLE IF EXISTS `game_event_npc_gossip`;
CREATE TABLE `game_event_npc_gossip` (
  `guid` int(10) unsigned NOT NULL,
  `event_id` mediumint(8) unsigned NOT NULL default '0',
  `textid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_npc_gossip`
--

LOCK TABLES `game_event_npc_gossip` WRITE;
/*!40000 ALTER TABLE `game_event_npc_gossip` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_npc_gossip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_npc_vendor`
--

DROP TABLE IF EXISTS `game_event_npc_vendor`;
CREATE TABLE `game_event_npc_vendor` (
  `event` mediumint(8) unsigned NOT NULL default '0',
  `guid` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `maxcount` mediumint(8) unsigned NOT NULL default '0',
  `incrtime` mediumint(8) unsigned NOT NULL default '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_npc_vendor`
--

LOCK TABLES `game_event_npc_vendor` WRITE;
/*!40000 ALTER TABLE `game_event_npc_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_npc_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_npcflag`
--

DROP TABLE IF EXISTS `game_event_npcflag`;
CREATE TABLE `game_event_npcflag` (
  `guid` mediumint(8) unsigned NOT NULL default '0',
  `event_id` mediumint(8) unsigned NOT NULL default '0',
  `npcflag` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_npcflag`
--

LOCK TABLES `game_event_npcflag` WRITE;
/*!40000 ALTER TABLE `game_event_npcflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_npcflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_prerequisite`
--

DROP TABLE IF EXISTS `game_event_prerequisite`;
CREATE TABLE `game_event_prerequisite` (
  `event_id` mediumint(8) unsigned NOT NULL,
  `prerequisite_event` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY  (`event_id`,`prerequisite_event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_prerequisite`
--

LOCK TABLES `game_event_prerequisite` WRITE;
/*!40000 ALTER TABLE `game_event_prerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_quest_condition`
--

DROP TABLE IF EXISTS `game_event_quest_condition`;
CREATE TABLE `game_event_quest_condition` (
  `quest` mediumint(8) unsigned NOT NULL default '0',
  `event_id` mediumint(8) unsigned NOT NULL default '0',
  `condition_id` mediumint(8) unsigned NOT NULL default '0',
  `num` float default '0',
  PRIMARY KEY  (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_event_quest_condition`
--

LOCK TABLES `game_event_quest_condition` WRITE;
/*!40000 ALTER TABLE `game_event_quest_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_quest_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_graveyard_zone`
--

DROP TABLE IF EXISTS `game_graveyard_zone`;
CREATE TABLE `game_graveyard_zone` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `ghost_zone` mediumint(8) unsigned NOT NULL default '0',
  `faction` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`,`ghost_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trigger System';

--
-- Dumping data for table `game_graveyard_zone`
--

LOCK TABLES `game_graveyard_zone` WRITE;
/*!40000 ALTER TABLE `game_graveyard_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_graveyard_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_tele`
--

DROP TABLE IF EXISTS `game_tele`;
CREATE TABLE `game_tele` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `map` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tele Command';

--
-- Dumping data for table `game_tele`
--

LOCK TABLES `game_tele` WRITE;
/*!40000 ALTER TABLE `game_tele` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_tele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_weather`
--

DROP TABLE IF EXISTS `game_weather`;
CREATE TABLE `game_weather` (
  `zone` mediumint(8) unsigned NOT NULL default '0',
  `spring_rain_chance` tinyint(3) unsigned NOT NULL default '25',
  `spring_snow_chance` tinyint(3) unsigned NOT NULL default '25',
  `spring_storm_chance` tinyint(3) unsigned NOT NULL default '25',
  `summer_rain_chance` tinyint(3) unsigned NOT NULL default '25',
  `summer_snow_chance` tinyint(3) unsigned NOT NULL default '25',
  `summer_storm_chance` tinyint(3) unsigned NOT NULL default '25',
  `fall_rain_chance` tinyint(3) unsigned NOT NULL default '25',
  `fall_snow_chance` tinyint(3) unsigned NOT NULL default '25',
  `fall_storm_chance` tinyint(3) unsigned NOT NULL default '25',
  `winter_rain_chance` tinyint(3) unsigned NOT NULL default '25',
  `winter_snow_chance` tinyint(3) unsigned NOT NULL default '25',
  `winter_storm_chance` tinyint(3) unsigned NOT NULL default '25',
  PRIMARY KEY  (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Weather System';

--
-- Dumping data for table `game_weather`
--

LOCK TABLES `game_weather` WRITE;
/*!40000 ALTER TABLE `game_weather` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject`
--

DROP TABLE IF EXISTS `gameobject`;
CREATE TABLE `gameobject` (
  `guid` int(10) unsigned NOT NULL auto_increment COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Gameobject Identifier',
  `map` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `rotation0` float NOT NULL default '0',
  `rotation1` float NOT NULL default '0',
  `rotation2` float NOT NULL default '0',
  `rotation3` float NOT NULL default '0',
  `spawntimesecs` int(11) NOT NULL default '0',
  `animprogress` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';

--
-- Dumping data for table `gameobject`
--

LOCK TABLES `gameobject` WRITE;
/*!40000 ALTER TABLE `gameobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_involvedrelation`
--

DROP TABLE IF EXISTS `gameobject_involvedrelation`;
CREATE TABLE `gameobject_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `quest` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gameobject_involvedrelation`
--

LOCK TABLES `gameobject_involvedrelation` WRITE;
/*!40000 ALTER TABLE `gameobject_involvedrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_involvedrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_loot_template`
--

DROP TABLE IF EXISTS `gameobject_loot_template`;
CREATE TABLE `gameobject_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

--
-- Dumping data for table `gameobject_loot_template`
--

LOCK TABLES `gameobject_loot_template` WRITE;
/*!40000 ALTER TABLE `gameobject_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_questrelation`
--

DROP TABLE IF EXISTS `gameobject_questrelation`;
CREATE TABLE `gameobject_questrelation` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `quest` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gameobject_questrelation`
--

LOCK TABLES `gameobject_questrelation` WRITE;
/*!40000 ALTER TABLE `gameobject_questrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_questrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_respawn`
--

DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL default '0',
  `instance` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';

--
-- Dumping data for table `gameobject_respawn`
--

LOCK TABLES `gameobject_respawn` WRITE;
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_scripts`
--

DROP TABLE IF EXISTS `gameobject_scripts`;
CREATE TABLE `gameobject_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datatext` text NOT NULL,
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gameobject_scripts`
--

LOCK TABLES `gameobject_scripts` WRITE;
/*!40000 ALTER TABLE `gameobject_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_template`
--

DROP TABLE IF EXISTS `gameobject_template`;
CREATE TABLE `gameobject_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `displayId` mediumint(8) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `castBarCaption` varchar(100) NOT NULL default '',
  `faction` smallint(5) unsigned NOT NULL default '0',
  `flags` int(10) unsigned NOT NULL default '0',
  `size` float NOT NULL default '1',
  `data0` int(10) unsigned NOT NULL default '0',
  `data1` int(10) unsigned NOT NULL default '0',
  `data2` int(10) unsigned NOT NULL default '0',
  `data3` int(10) unsigned NOT NULL default '0',
  `data4` int(10) unsigned NOT NULL default '0',
  `data5` int(10) unsigned NOT NULL default '0',
  `data6` int(10) unsigned NOT NULL default '0',
  `data7` int(10) unsigned NOT NULL default '0',
  `data8` int(10) unsigned NOT NULL default '0',
  `data9` int(10) unsigned NOT NULL default '0',
  `data10` int(10) unsigned NOT NULL default '0',
  `data11` int(10) unsigned NOT NULL default '0',
  `data12` int(10) unsigned NOT NULL default '0',
  `data13` int(10) unsigned NOT NULL default '0',
  `data14` int(10) unsigned NOT NULL default '0',
  `data15` int(10) unsigned NOT NULL default '0',
  `data16` int(10) unsigned NOT NULL default '0',
  `data17` int(10) unsigned NOT NULL default '0',
  `data18` int(10) unsigned NOT NULL default '0',
  `data19` int(10) unsigned NOT NULL default '0',
  `data20` int(10) unsigned NOT NULL default '0',
  `data21` int(10) unsigned NOT NULL default '0',
  `data22` int(10) unsigned NOT NULL default '0',
  `data23` int(10) unsigned NOT NULL default '0',
  `ScriptName` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`entry`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';

--
-- Dumping data for table `gameobject_template`
--

LOCK TABLES `gameobject_template` WRITE;
/*!40000 ALTER TABLE `gameobject_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_template`
--

DROP TABLE IF EXISTS `instance_template`;
CREATE TABLE `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `maxPlayers` tinyint(3) unsigned NOT NULL default '0',
  `reset_delay` int(10) unsigned NOT NULL default '0',
  `access_id` bigint(20) unsigned NOT NULL default '0',
  `startLocX` float default NULL,
  `startLocY` float default NULL,
  `startLocZ` float default NULL,
  `startLocO` float default NULL,
  `script` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instance_template`
--

LOCK TABLES `instance_template` WRITE;
/*!40000 ALTER TABLE `instance_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_enchantment_template`
--

DROP TABLE IF EXISTS `item_enchantment_template`;
CREATE TABLE `item_enchantment_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `ench` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`ench`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item Random Enchantment System';

--
-- Dumping data for table `item_enchantment_template`
--

LOCK TABLES `item_enchantment_template` WRITE;
/*!40000 ALTER TABLE `item_enchantment_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_enchantment_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_loot_template`
--

DROP TABLE IF EXISTS `item_loot_template`;
CREATE TABLE `item_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` smallint(5) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

--
-- Dumping data for table `item_loot_template`
--

LOCK TABLES `item_loot_template` WRITE;
/*!40000 ALTER TABLE `item_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_random_proppoints`
--

DROP TABLE IF EXISTS `item_random_proppoints`;
CREATE TABLE `item_random_proppoints` (
  `itemlevel` int(11) default NULL,
  `EpicPropertiesPoints_1` int(11) default NULL,
  `EpicPropertiesPoints_2` int(11) default NULL,
  `EpicPropertiesPoints_3` int(11) default NULL,
  `EpicPropertiesPoints_4` int(11) default NULL,
  `EpicPropertiesPoints_5` int(11) default NULL,
  `RarePropertiesPoints_1` int(11) default NULL,
  `RarePropertiesPoints_2` int(11) default NULL,
  `RarePropertiesPoints_3` int(11) default NULL,
  `RarePropertiesPoints_4` int(11) default NULL,
  `RarePropertiesPoints_5` int(11) default NULL,
  `UncommonPropertiesPoints_1` int(11) default NULL,
  `UncommonPropertiesPoints_2` int(11) default NULL,
  `UncommonPropertiesPoints_3` int(11) default NULL,
  `UncommonPropertiesPoints_4` int(11) default NULL,
  `UncommonPropertiesPoints_5` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_random_proppoints`
--

LOCK TABLES `item_random_proppoints` WRITE;
/*!40000 ALTER TABLE `item_random_proppoints` DISABLE KEYS */;
INSERT INTO `item_random_proppoints` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,9,7,5,4,3,5,4,3,2,2,1,1,1,0,0),(11,10,8,6,4,3,5,4,3,2,2,2,1,1,1,0),(12,11,8,6,5,4,6,4,3,3,2,2,2,1,1,1),(13,12,9,7,5,4,7,5,4,3,2,3,2,1,1,1),(14,12,9,7,5,4,7,5,4,3,2,3,2,2,1,1),(15,13,10,7,5,4,8,6,4,3,2,4,3,2,1,1),(16,14,10,8,6,4,8,6,5,4,3,4,3,2,2,1),(17,14,11,8,6,5,9,7,5,4,3,5,3,3,2,1),(18,15,11,9,7,5,9,7,5,4,3,5,4,3,2,2),(19,16,12,9,7,5,10,8,6,4,3,6,4,3,2,2),(20,16,12,9,7,5,11,8,6,5,3,6,5,3,3,2),(21,17,13,9,7,5,11,8,6,5,4,7,5,4,3,2),(22,18,13,10,7,6,12,9,7,5,4,7,5,4,3,2),(23,18,14,11,8,6,12,9,7,5,4,8,6,4,3,2),(24,19,14,11,8,6,13,10,7,6,4,8,6,5,3,3),(25,20,15,11,9,7,14,10,8,6,4,9,6,5,4,3),(26,20,16,11,9,7,14,11,8,6,5,9,7,5,4,3),(27,21,16,12,9,7,15,11,8,6,5,10,7,5,4,3),(28,22,16,12,9,7,15,12,9,7,5,10,8,6,4,3),(29,23,17,13,9,7,16,12,9,7,5,11,8,6,4,3),(30,23,18,13,10,7,17,12,9,7,5,11,8,6,5,3),(31,24,18,14,10,7,17,13,10,7,5,12,9,6,5,4),(32,25,18,14,11,8,18,13,10,8,6,12,9,7,5,4),(33,25,19,14,11,8,18,14,10,8,6,13,9,7,5,4),(34,26,20,15,11,8,19,14,11,8,6,13,10,7,5,4),(35,27,20,15,11,9,20,15,11,8,6,14,10,8,6,4),(36,27,20,16,11,9,20,15,11,9,6,14,11,8,6,4),(37,28,21,16,12,9,21,16,12,9,7,15,11,8,6,5),(38,29,22,16,12,9,21,16,12,9,7,15,11,8,6,5),(39,29,22,16,12,9,22,16,12,9,7,16,12,9,7,5),(40,30,23,17,13,9,23,17,13,10,7,16,12,9,7,5),(41,31,23,18,13,10,23,17,13,10,7,17,12,9,7,5),(42,32,24,18,13,10,24,18,13,10,8,17,13,10,7,5),(43,32,24,18,14,10,24,18,14,10,8,18,13,10,7,6),(44,33,25,18,14,11,25,19,14,11,8,18,14,10,8,6),(45,34,25,19,14,11,26,19,14,11,8,19,14,10,8,6),(46,34,25,19,14,11,26,20,15,11,8,19,14,11,8,6),(47,35,26,20,15,11,27,20,15,11,8,20,15,11,8,6),(48,36,27,20,15,11,27,20,15,12,9,20,15,11,8,6),(49,36,27,20,16,11,28,21,16,12,9,21,15,12,9,6),(50,37,28,21,16,12,28,21,16,12,9,21,16,12,9,7),(51,38,28,21,16,12,29,22,16,12,9,22,16,12,9,7),(52,38,29,22,16,12,30,22,17,13,9,22,17,12,9,7),(53,39,29,22,16,12,30,23,17,13,10,23,17,13,9,7),(54,40,30,22,17,13,31,23,17,13,10,23,17,13,10,7),(55,41,30,23,17,13,31,24,18,13,10,24,18,13,10,7),(56,41,31,23,18,13,32,24,18,14,10,24,18,14,10,8),(57,42,32,23,18,13,33,24,18,14,10,25,18,14,10,8),(58,43,32,24,18,14,33,25,19,14,11,25,19,14,11,8),(59,43,32,25,18,14,34,25,19,14,11,26,19,14,11,8),(60,44,33,25,18,14,34,26,19,15,11,26,20,15,11,8),(61,45,34,25,19,14,35,26,20,15,11,27,20,15,11,8),(62,45,34,25,19,14,36,27,20,15,11,27,20,15,11,9),(63,46,34,26,19,14,36,27,20,15,11,28,21,15,12,9),(64,47,35,26,20,15,37,28,21,16,12,28,21,16,12,9),(65,47,36,27,20,15,37,28,21,16,12,29,21,16,12,9),(66,48,36,27,20,15,38,28,21,16,12,29,22,16,12,9),(67,49,36,27,20,16,39,29,22,16,12,30,22,17,12,9),(68,50,37,28,21,16,39,29,22,17,12,30,23,17,13,9),(69,50,38,28,21,16,40,30,22,17,13,31,23,17,13,10),(70,50,38,29,21,16,40,30,23,17,13,31,23,17,13,10),(71,52,39,29,22,16,41,31,23,17,13,32,24,18,13,10),(72,52,39,29,22,16,42,31,23,18,13,32,24,18,14,10),(73,52,39,30,22,17,42,32,24,18,13,33,24,18,14,10),(74,53,40,30,23,17,43,32,24,18,14,33,25,19,14,10),(75,54,41,30,23,17,43,32,24,18,14,34,25,19,14,11),(76,55,41,31,23,18,44,33,25,19,14,34,26,19,14,11),(77,55,41,31,23,18,45,33,25,19,14,35,26,19,15,11),(78,56,42,32,24,18,45,34,25,19,14,35,26,20,15,11),(79,57,43,32,24,18,46,34,26,19,14,36,27,20,15,11),(80,57,43,32,25,18,46,35,26,20,15,36,27,20,15,11),(81,58,43,33,25,18,47,35,26,20,15,37,27,21,15,12),(82,59,44,33,25,18,47,36,27,20,15,37,28,21,16,12),(83,59,45,34,25,19,48,36,27,20,15,38,28,21,16,12),(84,60,45,34,25,19,49,37,27,21,15,38,29,21,16,12),(85,61,46,34,26,19,49,37,28,21,16,39,29,22,16,12),(86,61,46,34,26,20,50,37,28,21,16,39,29,22,16,12),(87,62,47,35,26,20,50,38,28,21,16,40,30,22,17,12),(88,63,47,36,27,20,51,38,29,22,16,40,30,23,17,13),(89,64,48,36,27,20,52,39,29,22,16,41,30,23,17,13),(90,64,48,36,27,20,52,39,29,22,17,41,31,23,17,13),(91,65,49,36,27,21,53,40,30,22,17,42,31,23,18,13),(92,66,50,37,28,21,53,40,30,23,17,42,32,24,18,13),(93,66,50,37,28,21,54,41,30,23,17,43,32,24,18,13),(94,66,50,37,28,21,54,41,30,23,17,43,32,24,18,14),(95,67,50,37,28,21,54,41,31,23,17,44,33,24,18,14),(96,67,50,37,28,21,55,41,31,23,17,44,33,25,19,14),(97,67,51,38,28,21,55,42,31,24,18,45,33,25,19,14),(98,68,51,38,29,21,56,42,31,24,18,45,34,25,19,14),(99,68,51,38,29,22,56,42,32,24,18,46,34,26,19,14),(100,68,51,38,29,22,57,43,32,24,18,46,35,26,19,15),(101,69,52,38,29,22,57,43,32,24,18,47,35,26,20,15),(102,69,52,39,29,22,57,43,32,25,18,47,35,26,20,15),(103,69,52,39,29,22,58,44,33,25,18,48,36,27,20,15),(104,70,52,39,30,22,58,44,33,25,19,48,36,27,20,15),(105,70,52,39,30,22,59,44,33,25,19,49,36,27,20,15),(106,70,53,39,30,22,59,45,33,25,19,49,37,28,21,16),(107,71,53,40,30,23,60,45,34,26,19,50,37,28,21,16),(108,71,53,40,30,23,60,45,34,26,19,50,38,28,21,16),(109,71,53,40,30,23,60,46,34,26,19,51,38,28,21,16),(110,72,54,40,31,23,61,46,34,26,19,51,38,29,22,16),(111,72,54,40,31,23,61,46,34,26,20,52,39,29,22,16),(112,72,54,41,31,23,62,47,35,26,20,52,39,29,22,16),(113,73,54,41,31,23,62,47,35,27,20,53,39,30,22,17),(114,73,54,41,31,23,63,47,35,27,20,53,40,30,22,17),(115,73,55,41,31,24,63,48,35,27,20,54,40,30,23,17),(116,74,55,41,32,24,63,48,36,27,20,54,41,30,23,17),(117,74,55,42,32,24,64,48,36,27,20,55,41,31,23,17),(118,74,55,42,32,24,64,49,36,28,21,55,41,31,23,17),(119,75,56,42,32,24,65,49,36,28,21,56,42,31,23,18),(120,75,56,42,32,24,65,49,37,28,21,56,42,32,24,18),(121,75,56,42,32,24,66,50,37,28,21,57,42,32,24,18),(122,76,56,43,33,24,66,50,37,28,21,57,43,32,24,18),(123,76,57,43,33,25,67,50,37,29,21,58,43,32,24,18),(124,75,57,43,31,23,67,51,38,29,21,58,44,33,24,18),(125,77,57,43,33,25,68,51,38,29,22,59,44,33,25,19),(126,77,57,43,33,25,68,51,38,29,22,59,44,33,25,19),(127,78,59,43,33,25,69,52,38,29,22,60,45,33,25,19),(128,78,59,44,33,25,69,52,39,29,22,60,45,34,25,19),(129,79,59,44,34,25,70,52,39,30,22,61,45,34,26,19),(130,79,60,44,34,25,70,53,39,30,22,61,46,34,26,19),(131,81,60,46,34,25,71,53,40,30,22,62,46,35,26,19),(132,81,61,46,34,26,71,54,40,30,23,62,47,35,26,20),(133,82,61,46,34,26,72,54,40,30,23,63,47,35,26,20),(134,82,61,46,35,26,72,54,40,31,23,63,47,35,27,20),(135,83,62,47,35,26,74,55,41,31,23,64,48,36,27,20),(136,83,62,47,35,26,74,55,41,31,23,64,48,36,27,20),(137,85,62,47,35,26,75,55,41,31,23,65,48,36,27,20),(138,85,64,48,35,27,75,56,43,31,24,65,49,37,27,21),(139,86,64,48,36,27,76,56,43,32,24,66,49,37,28,21),(140,86,65,48,36,27,76,58,43,32,24,66,50,37,28,21),(141,87,65,48,36,27,77,58,43,32,24,67,50,37,28,21),(142,87,65,49,36,27,77,58,44,32,24,67,50,38,28,21),(143,88,66,49,36,27,78,59,44,32,24,68,51,38,28,21),(144,88,66,49,38,29,78,59,44,33,25,68,51,38,29,22),(145,90,66,51,38,29,79,59,45,33,25,69,51,39,29,22),(146,90,68,51,38,29,79,60,45,33,25,69,52,39,29,22),(147,91,68,51,38,29,81,60,45,33,25,70,52,39,29,22),(148,91,69,51,39,29,81,61,45,35,25,70,53,39,30,22),(149,92,69,52,39,29,82,61,46,35,25,71,53,40,30,22),(150,92,69,52,39,29,82,61,46,35,25,71,53,40,30,22),(151,94,70,52,39,30,83,62,46,35,26,72,54,40,30,23),(152,94,70,53,39,30,83,62,47,35,26,72,54,41,30,23),(153,95,70,53,40,30,84,62,47,36,26,73,54,41,31,23),(154,95,72,53,40,30,84,63,47,36,26,73,55,41,31,23),(155,96,72,53,40,30,85,63,47,36,26,74,55,41,31,23),(156,96,73,55,40,30,85,64,48,36,26,74,56,42,31,23),(157,98,73,55,40,31,86,64,48,36,28,75,56,42,31,24),(158,98,73,55,42,31,86,64,48,37,28,75,56,42,32,24),(159,99,74,55,42,31,87,66,48,37,28,76,57,42,32,24),(160,99,74,56,42,31,87,66,49,37,28,76,57,43,32,24),(161,100,74,56,42,31,89,66,49,37,28,77,57,43,32,24),(162,100,75,56,42,31,89,67,49,37,28,77,58,43,32,24),(163,101,75,57,43,33,90,67,51,38,29,78,58,44,33,25),(164,101,77,57,43,33,90,68,51,38,29,78,59,44,33,25),(165,103,77,57,43,33,91,68,51,38,29,79,59,44,33,25),(166,103,77,57,43,33,91,68,51,38,29,79,59,44,33,25),(167,104,78,59,44,33,92,69,52,39,29,80,60,45,34,25),(168,104,78,59,44,33,92,69,52,39,29,80,60,45,34,25),(169,105,78,59,44,33,93,69,52,39,29,81,60,45,34,25),(170,105,79,60,44,34,93,70,53,39,30,81,61,46,34,26),(171,107,79,60,44,34,94,70,53,39,30,82,61,46,34,26),(172,107,81,60,46,34,94,71,53,40,30,82,62,46,35,26),(173,108,81,60,46,34,95,71,53,40,30,83,62,46,35,26),(174,108,81,61,46,34,95,71,54,40,30,83,62,47,35,26),(175,109,82,61,46,34,97,72,54,40,30,84,63,47,35,26),(176,109,82,61,46,35,97,72,54,40,31,84,63,47,35,27),(177,111,82,62,47,35,98,72,55,41,31,85,63,48,36,27),(178,111,83,62,47,35,98,74,55,41,31,85,64,48,36,27),(179,112,83,62,47,35,99,74,55,41,31,86,64,48,36,27),(180,112,85,62,47,35,99,75,55,41,31,86,65,48,36,27),(181,113,85,64,47,35,100,75,56,41,31,87,65,49,36,27),(182,113,85,64,48,36,100,75,56,43,32,87,65,49,37,28),(183,114,86,64,48,36,101,76,56,43,32,88,66,49,37,28),(184,114,86,65,48,36,101,76,58,43,32,88,66,50,37,28),(185,116,86,65,48,36,102,76,58,43,32,89,66,50,37,28),(186,116,87,65,49,36,102,77,58,44,32,89,67,50,38,28),(187,117,87,65,49,36,104,77,58,44,32,90,67,50,38,28),(188,117,88,66,49,36,104,78,59,44,32,90,68,51,38,28),(189,118,88,66,49,38,105,78,59,44,33,91,68,51,38,29),(190,118,88,66,49,38,105,78,59,44,33,91,68,51,38,29),(191,120,90,66,51,38,106,79,59,45,33,92,69,51,39,29),(192,120,90,68,51,38,106,79,60,45,33,92,69,52,39,29),(193,121,90,68,51,38,107,79,60,45,33,93,69,52,39,29),(194,121,91,68,51,38,107,81,60,45,33,93,70,52,39,29),(195,122,91,69,51,39,108,81,61,45,35,94,70,53,39,30),(196,122,92,69,52,39,108,82,61,46,35,94,71,53,40,30),(197,124,92,69,52,39,109,82,61,46,35,95,71,53,40,30),(198,124,92,69,52,39,109,82,61,46,35,95,71,53,40,30),(199,125,94,70,52,39,110,83,62,46,35,96,72,54,40,30),(200,125,94,70,53,39,110,83,62,47,35,96,72,54,41,30),(201,126,94,70,53,40,112,83,62,47,36,97,72,54,41,31),(202,126,95,72,53,40,112,84,63,47,36,97,73,55,41,31),(203,127,95,72,53,40,113,84,63,47,36,98,73,55,41,31),(204,127,96,72,53,40,113,85,63,47,36,98,74,55,41,31),(205,129,96,72,55,40,114,85,63,48,36,99,74,55,42,31),(206,129,96,73,55,40,114,85,64,48,36,99,74,56,42,31),(207,130,98,73,55,40,115,86,64,48,36,100,75,56,42,31),(208,130,98,73,55,42,115,86,64,48,37,100,75,56,42,32),(209,131,98,74,55,42,116,86,66,48,37,101,75,57,42,32),(210,131,99,74,56,42,116,87,66,49,37,101,76,57,43,32),(211,133,99,74,56,42,117,87,66,49,37,102,76,57,43,32),(212,133,100,74,56,42,117,89,66,49,37,102,77,57,43,32),(213,134,100,75,56,42,118,89,67,49,37,103,77,58,43,32),(214,134,100,75,56,43,118,89,67,49,38,103,77,58,43,33),(215,135,101,75,57,43,120,90,67,51,38,104,78,58,44,33),(216,135,101,77,57,43,120,90,68,51,38,104,78,59,44,33),(217,137,101,77,57,43,121,90,68,51,38,105,78,59,44,33),(218,137,103,77,57,43,121,91,68,51,38,105,79,59,44,33),(219,138,103,77,59,43,122,91,68,52,38,106,79,59,45,33),(220,138,104,78,59,44,122,92,69,52,39,106,80,60,45,34),(221,139,104,78,59,44,123,92,69,52,39,107,80,60,45,34),(222,139,104,78,59,44,123,92,69,52,39,107,80,60,45,34),(223,140,105,78,59,44,124,93,69,52,39,108,81,60,45,34),(224,140,105,79,60,44,124,93,70,53,39,108,81,61,46,34),(225,142,105,79,60,44,125,93,70,53,39,109,81,61,46,34),(226,142,107,79,60,44,125,94,70,53,39,109,82,61,46,34),(227,143,107,81,60,46,127,94,71,53,40,110,82,62,46,35),(228,143,108,81,60,46,127,95,71,53,40,110,83,62,46,35),(229,144,108,81,61,46,128,95,71,54,40,111,83,62,47,35),(230,144,108,81,61,46,128,95,71,54,40,111,83,62,47,35),(231,146,109,82,61,46,129,97,72,54,40,112,84,63,47,35),(232,146,109,82,61,46,129,97,72,54,40,112,84,63,47,35),(233,147,109,82,61,47,130,97,72,54,41,113,84,63,47,36),(234,147,111,83,62,47,130,98,74,55,41,113,85,64,48,36),(235,148,111,83,62,47,131,98,74,55,41,114,85,64,48,36),(236,148,112,83,62,47,131,99,74,55,41,114,86,64,48,36),(237,150,112,83,62,47,132,99,74,55,41,115,86,64,48,36),(238,150,112,85,64,47,132,99,75,56,41,115,86,65,49,36),(239,151,113,85,64,48,133,100,75,56,43,116,87,65,49,37),(240,151,113,85,64,48,133,100,75,56,43,116,87,65,49,37),(241,152,113,86,64,48,135,100,76,56,43,117,87,66,49,37),(242,152,114,86,64,48,135,101,76,56,43,117,88,66,49,37),(243,153,114,86,65,48,136,101,76,58,43,118,88,66,50,37),(244,153,116,86,65,48,136,102,76,58,43,118,89,66,50,37),(245,155,116,87,65,48,137,102,77,58,43,119,89,67,50,37),(246,155,116,87,65,49,137,102,77,58,44,119,89,67,50,38),(247,156,117,87,65,49,138,104,77,58,44,120,90,67,50,38),(248,156,117,88,66,49,138,104,78,59,44,120,90,68,51,38),(249,157,117,88,66,49,139,104,78,59,44,121,90,68,51,38),(250,157,118,88,66,49,139,105,78,59,44,121,91,68,51,38),(251,159,118,88,66,49,140,105,78,59,44,122,91,68,51,38),(252,159,120,90,66,51,140,106,79,59,45,122,92,69,51,39),(253,160,120,90,68,51,141,106,79,60,45,123,92,69,52,39),(254,160,120,90,68,51,141,106,79,60,45,123,92,69,52,39),(255,161,121,90,68,51,143,107,79,60,45,124,93,69,52,39),(256,161,121,91,68,51,143,107,81,60,45,124,93,70,52,39),(257,163,121,91,69,51,144,107,81,61,45,125,93,70,53,39),(258,163,122,91,69,52,144,108,81,61,46,125,94,70,53,40),(259,164,122,92,69,52,145,108,82,61,46,126,94,71,53,40),(260,164,124,92,69,52,145,109,82,61,46,126,95,71,53,40),(261,165,124,92,69,52,146,109,82,61,46,127,95,71,53,40),(262,165,124,92,70,52,146,109,82,62,46,127,95,71,54,40),(263,166,125,94,70,52,147,110,83,62,46,128,96,72,54,40),(264,166,125,94,70,53,147,110,83,62,47,128,96,72,54,41),(265,168,125,94,70,53,148,110,83,62,47,129,96,72,54,41),(266,168,126,95,70,53,148,112,84,62,47,129,97,73,54,41),(267,169,126,95,72,53,150,112,84,63,47,130,97,73,55,41),(268,169,127,95,72,53,150,113,84,63,47,130,98,73,55,41),(269,170,127,95,72,53,151,113,84,63,47,131,98,73,55,41),(270,170,127,96,72,53,151,113,85,63,47,131,98,74,55,41),(271,172,129,96,72,55,152,114,85,63,48,132,99,74,55,42),(272,172,129,96,73,55,152,114,85,64,48,132,99,74,56,42),(273,173,129,98,73,55,153,114,86,64,48,133,99,75,56,42),(274,173,130,98,73,55,153,115,86,64,48,133,100,75,56,42),(275,174,130,98,73,55,154,115,86,64,48,134,100,75,56,42),(276,174,131,98,74,55,154,116,86,66,48,134,101,75,57,42),(277,176,131,99,74,56,155,116,87,66,49,135,101,76,57,43),(278,176,131,99,74,56,155,116,87,66,49,135,101,76,57,43),(279,177,133,99,74,56,156,117,87,66,49,136,102,76,57,43),(280,177,133,100,74,56,156,117,89,66,49,136,102,77,57,43),(281,178,133,100,75,56,158,117,89,67,49,137,102,77,58,43),(282,178,134,100,75,56,158,118,89,67,49,137,103,77,58,43),(283,179,134,100,75,57,159,118,89,67,51,138,103,77,58,44),(284,179,135,101,75,57,159,120,90,67,51,138,104,78,58,44),(285,181,135,101,75,57,160,120,90,67,51,139,104,78,58,44),(286,181,135,101,77,57,160,120,90,68,51,139,104,78,59,44),(287,182,137,101,77,57,161,121,90,68,51,140,105,78,59,44),(288,182,137,103,77,57,161,121,91,68,51,140,105,79,59,44),(289,183,137,103,77,57,162,121,91,68,51,141,105,79,59,44),(290,183,138,103,77,59,162,122,91,68,52,141,106,79,59,45),(291,185,138,104,78,59,163,122,92,69,52,142,106,80,60,45),(292,185,139,104,78,59,163,123,92,69,52,142,107,80,60,45),(293,186,139,104,78,59,164,123,92,69,52,143,107,80,60,45),(294,186,139,104,78,59,164,123,92,69,52,143,107,80,60,45),(295,187,140,105,79,59,166,124,93,70,52,144,108,81,61,45),(296,187,140,105,79,60,166,124,93,70,53,144,108,81,61,46),(297,189,140,105,79,60,167,124,93,70,53,145,108,81,61,46),(298,189,142,107,79,60,167,125,94,70,53,145,109,82,61,46),(299,190,142,107,79,60,168,125,94,70,53,146,109,82,61,46),(300,190,143,107,81,60,168,127,94,71,53,146,110,82,62,46);
/*!40000 ALTER TABLE `item_random_proppoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_template`
--

DROP TABLE IF EXISTS `item_template`;
CREATE TABLE `item_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `subclass` tinyint(3) unsigned NOT NULL default '0',
  `unk0` int(11) NOT NULL default '-1',
  `name` varchar(255) NOT NULL default '',
  `displayid` mediumint(8) unsigned NOT NULL default '0',
  `Quality` tinyint(3) unsigned NOT NULL default '0',
  `Flags` int(10) unsigned NOT NULL default '0',
  `BuyCount` tinyint(3) unsigned NOT NULL default '1',
  `BuyPrice` int(10) unsigned NOT NULL default '0',
  `SellPrice` int(10) unsigned NOT NULL default '0',
  `InventoryType` tinyint(3) unsigned NOT NULL default '0',
  `AllowableClass` mediumint(9) NOT NULL default '-1',
  `AllowableRace` mediumint(9) NOT NULL default '-1',
  `ItemLevel` tinyint(3) unsigned NOT NULL default '0',
  `RequiredLevel` tinyint(3) unsigned NOT NULL default '0',
  `RequiredSkill` smallint(5) unsigned NOT NULL default '0',
  `RequiredSkillRank` smallint(5) unsigned NOT NULL default '0',
  `requiredspell` mediumint(8) unsigned NOT NULL default '0',
  `requiredhonorrank` mediumint(8) unsigned NOT NULL default '0',
  `RequiredCityRank` mediumint(8) unsigned NOT NULL default '0',
  `RequiredReputationFaction` smallint(5) unsigned NOT NULL default '0',
  `RequiredReputationRank` smallint(5) unsigned NOT NULL default '0',
  `maxcount` smallint(5) unsigned NOT NULL default '0',
  `stackable` smallint(5) unsigned NOT NULL default '1',
  `ContainerSlots` tinyint(3) unsigned NOT NULL default '0',
  `stat_type1` tinyint(3) unsigned NOT NULL default '0',
  `stat_value1` smallint(6) NOT NULL default '0',
  `stat_type2` tinyint(3) unsigned NOT NULL default '0',
  `stat_value2` smallint(6) NOT NULL default '0',
  `stat_type3` tinyint(3) unsigned NOT NULL default '0',
  `stat_value3` smallint(6) NOT NULL default '0',
  `stat_type4` tinyint(3) unsigned NOT NULL default '0',
  `stat_value4` smallint(6) NOT NULL default '0',
  `stat_type5` tinyint(3) unsigned NOT NULL default '0',
  `stat_value5` smallint(6) NOT NULL default '0',
  `stat_type6` tinyint(3) unsigned NOT NULL default '0',
  `stat_value6` smallint(6) NOT NULL default '0',
  `stat_type7` tinyint(3) unsigned NOT NULL default '0',
  `stat_value7` smallint(6) NOT NULL default '0',
  `stat_type8` tinyint(3) unsigned NOT NULL default '0',
  `stat_value8` smallint(6) NOT NULL default '0',
  `stat_type9` tinyint(3) unsigned NOT NULL default '0',
  `stat_value9` smallint(6) NOT NULL default '0',
  `stat_type10` tinyint(3) unsigned NOT NULL default '0',
  `stat_value10` smallint(6) NOT NULL default '0',
  `dmg_min1` float NOT NULL default '0',
  `dmg_max1` float NOT NULL default '0',
  `dmg_type1` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min2` float NOT NULL default '0',
  `dmg_max2` float NOT NULL default '0',
  `dmg_type2` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min3` float NOT NULL default '0',
  `dmg_max3` float NOT NULL default '0',
  `dmg_type3` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min4` float NOT NULL default '0',
  `dmg_max4` float NOT NULL default '0',
  `dmg_type4` tinyint(3) unsigned NOT NULL default '0',
  `dmg_min5` float NOT NULL default '0',
  `dmg_max5` float NOT NULL default '0',
  `dmg_type5` tinyint(3) unsigned NOT NULL default '0',
  `armor` smallint(5) unsigned NOT NULL default '0',
  `holy_res` tinyint(3) unsigned NOT NULL default '0',
  `fire_res` tinyint(3) unsigned NOT NULL default '0',
  `nature_res` tinyint(3) unsigned NOT NULL default '0',
  `frost_res` tinyint(3) unsigned NOT NULL default '0',
  `shadow_res` tinyint(3) unsigned NOT NULL default '0',
  `arcane_res` tinyint(3) unsigned NOT NULL default '0',
  `delay` smallint(5) unsigned NOT NULL default '1000',
  `ammo_type` tinyint(3) unsigned NOT NULL default '0',
  `RangedModRange` float NOT NULL default '0',
  `spellid_1` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_1` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_1` tinyint(4) NOT NULL default '0',
  `spellppmRate_1` float NOT NULL default '0',
  `spellcooldown_1` int(11) NOT NULL default '-1',
  `spellcategory_1` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_1` int(11) NOT NULL default '-1',
  `spellid_2` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_2` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_2` tinyint(4) NOT NULL default '0',
  `spellppmRate_2` float NOT NULL default '0',
  `spellcooldown_2` int(11) NOT NULL default '-1',
  `spellcategory_2` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_2` int(11) NOT NULL default '-1',
  `spellid_3` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_3` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_3` tinyint(4) NOT NULL default '0',
  `spellppmRate_3` float NOT NULL default '0',
  `spellcooldown_3` int(11) NOT NULL default '-1',
  `spellcategory_3` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_3` int(11) NOT NULL default '-1',
  `spellid_4` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_4` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_4` tinyint(4) NOT NULL default '0',
  `spellppmRate_4` float NOT NULL default '0',
  `spellcooldown_4` int(11) NOT NULL default '-1',
  `spellcategory_4` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_4` int(11) NOT NULL default '-1',
  `spellid_5` mediumint(8) unsigned NOT NULL default '0',
  `spelltrigger_5` tinyint(3) unsigned NOT NULL default '0',
  `spellcharges_5` tinyint(4) NOT NULL default '0',
  `spellppmRate_5` float NOT NULL default '0',
  `spellcooldown_5` int(11) NOT NULL default '-1',
  `spellcategory_5` smallint(5) unsigned NOT NULL default '0',
  `spellcategorycooldown_5` int(11) NOT NULL default '-1',
  `bonding` tinyint(3) unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL default '',
  `PageText` mediumint(8) unsigned NOT NULL default '0',
  `LanguageID` tinyint(3) unsigned NOT NULL default '0',
  `PageMaterial` tinyint(3) unsigned NOT NULL default '0',
  `startquest` mediumint(8) unsigned NOT NULL default '0',
  `lockid` mediumint(8) unsigned NOT NULL default '0',
  `Material` tinyint(4) NOT NULL default '0',
  `sheath` tinyint(3) unsigned NOT NULL default '0',
  `RandomProperty` mediumint(8) unsigned NOT NULL default '0',
  `block` mediumint(8) unsigned NOT NULL default '0',
  `itemset` mediumint(8) unsigned NOT NULL default '0',
  `MaxDurability` smallint(5) unsigned NOT NULL default '0',
  `area` mediumint(8) unsigned NOT NULL default '0',
  `Map` smallint(6) NOT NULL default '0',
  `BagFamily` mediumint(9) NOT NULL default '0',
  `RequiredDisenchantSkill` smallint(6) NOT NULL default '-1',
  `ArmorDamageModifier` float NOT NULL default '0',
  `ScriptName` varchar(64) NOT NULL default '',
  `DisenchantID` mediumint(8) unsigned NOT NULL default '0',
  `FoodType` tinyint(3) unsigned NOT NULL default '0',
  `minMoneyLoot` int(10) unsigned NOT NULL default '0',
  `maxMoneyLoot` int(10) unsigned NOT NULL default '0',
  `Duration` int(11) NOT NULL default '0' COMMENT 'Duration in seconds. Negative value means realtime, postive value ingame time',
  PRIMARY KEY  (`entry`),
  KEY `idx_name` (`name`),
  KEY `items_index` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

--
-- Dumping data for table `item_template`
--

LOCK TABLES `item_template` WRITE;
/*!40000 ALTER TABLE `item_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_creature`
--

DROP TABLE IF EXISTS `locales_creature`;
CREATE TABLE `locales_creature` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `name_loc1` varchar(100) NOT NULL default '',
  `name_loc2` varchar(100) NOT NULL default '',
  `name_loc3` varchar(100) NOT NULL default '',
  `name_loc4` varchar(100) NOT NULL default '',
  `name_loc5` varchar(100) NOT NULL default '',
  `name_loc6` varchar(100) NOT NULL default '',
  `name_loc7` varchar(100) NOT NULL default '',
  `name_loc8` varchar(100) NOT NULL default '',
  `subname_loc1` varchar(100) default NULL,
  `subname_loc2` varchar(100) default NULL,
  `subname_loc3` varchar(100) default NULL,
  `subname_loc4` varchar(100) default NULL,
  `subname_loc5` varchar(100) default NULL,
  `subname_loc6` varchar(100) default NULL,
  `subname_loc7` varchar(100) default NULL,
  `subname_loc8` varchar(100) default NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locales_creature`
--

LOCK TABLES `locales_creature` WRITE;
/*!40000 ALTER TABLE `locales_creature` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_gameobject`
--

DROP TABLE IF EXISTS `locales_gameobject`;
CREATE TABLE `locales_gameobject` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `name_loc1` varchar(100) NOT NULL default '',
  `name_loc2` varchar(100) NOT NULL default '',
  `name_loc3` varchar(100) NOT NULL default '',
  `name_loc4` varchar(100) NOT NULL default '',
  `name_loc5` varchar(100) NOT NULL default '',
  `name_loc6` varchar(100) NOT NULL default '',
  `name_loc7` varchar(100) NOT NULL default '',
  `name_loc8` varchar(100) NOT NULL default '',
  `castbarcaption_loc1` varchar(100) NOT NULL default '',
  `castbarcaption_loc2` varchar(100) NOT NULL default '',
  `castbarcaption_loc3` varchar(100) NOT NULL default '',
  `castbarcaption_loc4` varchar(100) NOT NULL default '',
  `castbarcaption_loc5` varchar(100) NOT NULL default '',
  `castbarcaption_loc6` varchar(100) NOT NULL default '',
  `castbarcaption_loc7` varchar(100) NOT NULL default '',
  `castbarcaption_loc8` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locales_gameobject`
--

LOCK TABLES `locales_gameobject` WRITE;
/*!40000 ALTER TABLE `locales_gameobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_gameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_item`
--

DROP TABLE IF EXISTS `locales_item`;
CREATE TABLE `locales_item` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `name_loc1` varchar(100) NOT NULL default '',
  `name_loc2` varchar(100) NOT NULL default '',
  `name_loc3` varchar(100) NOT NULL default '',
  `name_loc4` varchar(100) NOT NULL default '',
  `name_loc5` varchar(100) NOT NULL default '',
  `name_loc6` varchar(100) NOT NULL default '',
  `name_loc7` varchar(100) NOT NULL default '',
  `name_loc8` varchar(100) NOT NULL default '',
  `description_loc1` varchar(255) default NULL,
  `description_loc2` varchar(255) default NULL,
  `description_loc3` varchar(255) default NULL,
  `description_loc4` varchar(255) default NULL,
  `description_loc5` varchar(255) default NULL,
  `description_loc6` varchar(255) default NULL,
  `description_loc7` varchar(255) default NULL,
  `description_loc8` varchar(255) default NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locales_item`
--

LOCK TABLES `locales_item` WRITE;
/*!40000 ALTER TABLE `locales_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_npc_option`
--

DROP TABLE IF EXISTS `locales_npc_option`;
CREATE TABLE `locales_npc_option` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `option_text_loc1` text,
  `option_text_loc2` text,
  `option_text_loc3` text,
  `option_text_loc4` text,
  `option_text_loc5` text,
  `option_text_loc6` text,
  `option_text_loc7` text,
  `option_text_loc8` text,
  `box_text_loc1` text,
  `box_text_loc2` text,
  `box_text_loc3` text,
  `box_text_loc4` text,
  `box_text_loc5` text,
  `box_text_loc6` text,
  `box_text_loc7` text,
  `box_text_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locales_npc_option`
--

LOCK TABLES `locales_npc_option` WRITE;
/*!40000 ALTER TABLE `locales_npc_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_npc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_npc_text`
--

DROP TABLE IF EXISTS `locales_npc_text`;
CREATE TABLE `locales_npc_text` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `Text0_0_loc1` longtext,
  `Text0_0_loc2` longtext,
  `Text0_0_loc3` longtext,
  `Text0_0_loc4` longtext,
  `Text0_0_loc5` longtext,
  `Text0_0_loc6` longtext,
  `Text0_0_loc7` longtext,
  `Text0_0_loc8` longtext,
  `Text0_1_loc1` longtext,
  `Text0_1_loc2` longtext,
  `Text0_1_loc3` longtext,
  `Text0_1_loc4` longtext,
  `Text0_1_loc5` longtext,
  `Text0_1_loc6` longtext,
  `Text0_1_loc7` longtext,
  `Text0_1_loc8` longtext,
  `Text1_0_loc1` longtext,
  `Text1_0_loc2` longtext,
  `Text1_0_loc3` longtext,
  `Text1_0_loc4` longtext,
  `Text1_0_loc5` longtext,
  `Text1_0_loc6` longtext,
  `Text1_0_loc7` longtext,
  `Text1_0_loc8` longtext,
  `Text1_1_loc1` longtext,
  `Text1_1_loc2` longtext,
  `Text1_1_loc3` longtext,
  `Text1_1_loc4` longtext,
  `Text1_1_loc5` longtext,
  `Text1_1_loc6` longtext,
  `Text1_1_loc7` longtext,
  `Text1_1_loc8` longtext,
  `Text2_0_loc1` longtext,
  `Text2_0_loc2` longtext,
  `Text2_0_loc3` longtext,
  `Text2_0_loc4` longtext,
  `Text2_0_loc5` longtext,
  `Text2_0_loc6` longtext,
  `Text2_0_loc7` longtext,
  `Text2_0_loc8` longtext,
  `Text2_1_loc1` longtext,
  `Text2_1_loc2` longtext,
  `Text2_1_loc3` longtext,
  `Text2_1_loc4` longtext,
  `Text2_1_loc5` longtext,
  `Text2_1_loc6` longtext,
  `Text2_1_loc7` longtext,
  `Text2_1_loc8` longtext,
  `Text3_0_loc1` longtext,
  `Text3_0_loc2` longtext,
  `Text3_0_loc3` longtext,
  `Text3_0_loc4` longtext,
  `Text3_0_loc5` longtext,
  `Text3_0_loc6` longtext,
  `Text3_0_loc7` longtext,
  `Text3_0_loc8` longtext,
  `Text3_1_loc1` longtext,
  `Text3_1_loc2` longtext,
  `Text3_1_loc3` longtext,
  `Text3_1_loc4` longtext,
  `Text3_1_loc5` longtext,
  `Text3_1_loc6` longtext,
  `Text3_1_loc7` longtext,
  `Text3_1_loc8` longtext,
  `Text4_0_loc1` longtext,
  `Text4_0_loc2` longtext,
  `Text4_0_loc3` longtext,
  `Text4_0_loc4` longtext,
  `Text4_0_loc5` longtext,
  `Text4_0_loc6` longtext,
  `Text4_0_loc7` longtext,
  `Text4_0_loc8` longtext,
  `Text4_1_loc1` longtext,
  `Text4_1_loc2` longtext,
  `Text4_1_loc3` longtext,
  `Text4_1_loc4` longtext,
  `Text4_1_loc5` longtext,
  `Text4_1_loc6` longtext,
  `Text4_1_loc7` longtext,
  `Text4_1_loc8` longtext,
  `Text5_0_loc1` longtext,
  `Text5_0_loc2` longtext,
  `Text5_0_loc3` longtext,
  `Text5_0_loc4` longtext,
  `Text5_0_loc5` longtext,
  `Text5_0_loc6` longtext,
  `Text5_0_loc7` longtext,
  `Text5_0_loc8` longtext,
  `Text5_1_loc1` longtext,
  `Text5_1_loc2` longtext,
  `Text5_1_loc3` longtext,
  `Text5_1_loc4` longtext,
  `Text5_1_loc5` longtext,
  `Text5_1_loc6` longtext,
  `Text5_1_loc7` longtext,
  `Text5_1_loc8` longtext,
  `Text6_0_loc1` longtext,
  `Text6_0_loc2` longtext,
  `Text6_0_loc3` longtext,
  `Text6_0_loc4` longtext,
  `Text6_0_loc5` longtext,
  `Text6_0_loc6` longtext,
  `Text6_0_loc7` longtext,
  `Text6_0_loc8` longtext,
  `Text6_1_loc1` longtext,
  `Text6_1_loc2` longtext,
  `Text6_1_loc3` longtext,
  `Text6_1_loc4` longtext,
  `Text6_1_loc5` longtext,
  `Text6_1_loc6` longtext,
  `Text6_1_loc7` longtext,
  `Text6_1_loc8` longtext,
  `Text7_0_loc1` longtext,
  `Text7_0_loc2` longtext,
  `Text7_0_loc3` longtext,
  `Text7_0_loc4` longtext,
  `Text7_0_loc5` longtext,
  `Text7_0_loc6` longtext,
  `Text7_0_loc7` longtext,
  `Text7_0_loc8` longtext,
  `Text7_1_loc1` longtext,
  `Text7_1_loc2` longtext,
  `Text7_1_loc3` longtext,
  `Text7_1_loc4` longtext,
  `Text7_1_loc5` longtext,
  `Text7_1_loc6` longtext,
  `Text7_1_loc7` longtext,
  `Text7_1_loc8` longtext,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locales_npc_text`
--

LOCK TABLES `locales_npc_text` WRITE;
/*!40000 ALTER TABLE `locales_npc_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_npc_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_page_text`
--

DROP TABLE IF EXISTS `locales_page_text`;
CREATE TABLE `locales_page_text` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `Text_loc1` longtext,
  `Text_loc2` longtext,
  `Text_loc3` longtext,
  `Text_loc4` longtext,
  `Text_loc5` longtext,
  `Text_loc6` longtext,
  `Text_loc7` longtext,
  `Text_loc8` longtext,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locales_page_text`
--

LOCK TABLES `locales_page_text` WRITE;
/*!40000 ALTER TABLE `locales_page_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_page_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_quest`
--

DROP TABLE IF EXISTS `locales_quest`;
CREATE TABLE `locales_quest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `Title_loc1` text,
  `Title_loc2` text,
  `Title_loc3` text,
  `Title_loc4` text,
  `Title_loc5` text,
  `Title_loc6` text,
  `Title_loc7` text,
  `Title_loc8` text,
  `Details_loc1` text,
  `Details_loc2` text,
  `Details_loc3` text,
  `Details_loc4` text,
  `Details_loc5` text,
  `Details_loc6` text,
  `Details_loc7` text,
  `Details_loc8` text,
  `Objectives_loc1` text,
  `Objectives_loc2` text,
  `Objectives_loc3` text,
  `Objectives_loc4` text,
  `Objectives_loc5` text,
  `Objectives_loc6` text,
  `Objectives_loc7` text,
  `Objectives_loc8` text,
  `OfferRewardText_loc1` text,
  `OfferRewardText_loc2` text,
  `OfferRewardText_loc3` text,
  `OfferRewardText_loc4` text,
  `OfferRewardText_loc5` text,
  `OfferRewardText_loc6` text,
  `OfferRewardText_loc7` text,
  `OfferRewardText_loc8` text,
  `RequestItemsText_loc1` text,
  `RequestItemsText_loc2` text,
  `RequestItemsText_loc3` text,
  `RequestItemsText_loc4` text,
  `RequestItemsText_loc5` text,
  `RequestItemsText_loc6` text,
  `RequestItemsText_loc7` text,
  `RequestItemsText_loc8` text,
  `EndText_loc1` text,
  `EndText_loc2` text,
  `EndText_loc3` text,
  `EndText_loc4` text,
  `EndText_loc5` text,
  `EndText_loc6` text,
  `EndText_loc7` text,
  `EndText_loc8` text,
  `ObjectiveText1_loc1` text,
  `ObjectiveText1_loc2` text,
  `ObjectiveText1_loc3` text,
  `ObjectiveText1_loc4` text,
  `ObjectiveText1_loc5` text,
  `ObjectiveText1_loc6` text,
  `ObjectiveText1_loc7` text,
  `ObjectiveText1_loc8` text,
  `ObjectiveText2_loc1` text,
  `ObjectiveText2_loc2` text,
  `ObjectiveText2_loc3` text,
  `ObjectiveText2_loc4` text,
  `ObjectiveText2_loc5` text,
  `ObjectiveText2_loc6` text,
  `ObjectiveText2_loc7` text,
  `ObjectiveText2_loc8` text,
  `ObjectiveText3_loc1` text,
  `ObjectiveText3_loc2` text,
  `ObjectiveText3_loc3` text,
  `ObjectiveText3_loc4` text,
  `ObjectiveText3_loc5` text,
  `ObjectiveText3_loc6` text,
  `ObjectiveText3_loc7` text,
  `ObjectiveText3_loc8` text,
  `ObjectiveText4_loc1` text,
  `ObjectiveText4_loc2` text,
  `ObjectiveText4_loc3` text,
  `ObjectiveText4_loc4` text,
  `ObjectiveText4_loc5` text,
  `ObjectiveText4_loc6` text,
  `ObjectiveText4_loc7` text,
  `ObjectiveText4_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locales_quest`
--

LOCK TABLES `locales_quest` WRITE;
/*!40000 ALTER TABLE `locales_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_gossip`
--

DROP TABLE IF EXISTS `npc_gossip`;
CREATE TABLE `npc_gossip` (
  `npc_guid` int(10) unsigned NOT NULL default '0',
  `textid` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`npc_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `npc_gossip`
--

LOCK TABLES `npc_gossip` WRITE;
/*!40000 ALTER TABLE `npc_gossip` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_gossip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_gossip_textid`
--

DROP TABLE IF EXISTS `npc_gossip_textid`;
CREATE TABLE `npc_gossip_textid` (
  `zoneid` smallint(5) unsigned NOT NULL default '0',
  `action` smallint(5) unsigned NOT NULL default '0',
  `textid` mediumint(8) unsigned NOT NULL default '0',
  KEY `zoneid` (`zoneid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `npc_gossip_textid`
--

LOCK TABLES `npc_gossip_textid` WRITE;
/*!40000 ALTER TABLE `npc_gossip_textid` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_gossip_textid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_option`
--

DROP TABLE IF EXISTS `npc_option`;
CREATE TABLE `npc_option` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `gossip_id` tinyint(3) unsigned NOT NULL default '0',
  `npcflag` int(10) unsigned NOT NULL default '0',
  `icon` tinyint(3) unsigned NOT NULL default '0',
  `action` tinyint(3) unsigned NOT NULL default '0',
  `box_money` int(10) unsigned NOT NULL default '0',
  `coded` tinyint(3) unsigned NOT NULL default '0',
  `option_text` text,
  `box_text` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `npc_option`
--

LOCK TABLES `npc_option` WRITE;
/*!40000 ALTER TABLE `npc_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_text`
--

DROP TABLE IF EXISTS `npc_text`;
CREATE TABLE `npc_text` (
  `ID` mediumint(8) unsigned NOT NULL default '0',
  `text0_0` longtext,
  `text0_1` longtext,
  `lang0` tinyint(3) unsigned NOT NULL default '0',
  `prob0` float NOT NULL default '0',
  `em0_0` smallint(5) unsigned NOT NULL default '0',
  `em0_1` smallint(5) unsigned NOT NULL default '0',
  `em0_2` smallint(5) unsigned NOT NULL default '0',
  `em0_3` smallint(5) unsigned NOT NULL default '0',
  `em0_4` smallint(5) unsigned NOT NULL default '0',
  `em0_5` smallint(5) unsigned NOT NULL default '0',
  `text1_0` longtext,
  `text1_1` longtext,
  `lang1` tinyint(3) unsigned NOT NULL default '0',
  `prob1` float NOT NULL default '0',
  `em1_0` smallint(5) unsigned NOT NULL default '0',
  `em1_1` smallint(5) unsigned NOT NULL default '0',
  `em1_2` smallint(5) unsigned NOT NULL default '0',
  `em1_3` smallint(5) unsigned NOT NULL default '0',
  `em1_4` smallint(5) unsigned NOT NULL default '0',
  `em1_5` smallint(5) unsigned NOT NULL default '0',
  `text2_0` longtext,
  `text2_1` longtext,
  `lang2` tinyint(3) unsigned NOT NULL default '0',
  `prob2` float NOT NULL default '0',
  `em2_0` smallint(5) unsigned NOT NULL default '0',
  `em2_1` smallint(5) unsigned NOT NULL default '0',
  `em2_2` smallint(5) unsigned NOT NULL default '0',
  `em2_3` smallint(5) unsigned NOT NULL default '0',
  `em2_4` smallint(5) unsigned NOT NULL default '0',
  `em2_5` smallint(5) unsigned NOT NULL default '0',
  `text3_0` longtext,
  `text3_1` longtext,
  `lang3` tinyint(3) unsigned NOT NULL default '0',
  `prob3` float NOT NULL default '0',
  `em3_0` smallint(5) unsigned NOT NULL default '0',
  `em3_1` smallint(5) unsigned NOT NULL default '0',
  `em3_2` smallint(5) unsigned NOT NULL default '0',
  `em3_3` smallint(5) unsigned NOT NULL default '0',
  `em3_4` smallint(5) unsigned NOT NULL default '0',
  `em3_5` smallint(5) unsigned NOT NULL default '0',
  `text4_0` longtext,
  `text4_1` longtext,
  `lang4` tinyint(3) unsigned NOT NULL default '0',
  `prob4` float NOT NULL default '0',
  `em4_0` smallint(5) unsigned NOT NULL default '0',
  `em4_1` smallint(5) unsigned NOT NULL default '0',
  `em4_2` smallint(5) unsigned NOT NULL default '0',
  `em4_3` smallint(5) unsigned NOT NULL default '0',
  `em4_4` smallint(5) unsigned NOT NULL default '0',
  `em4_5` smallint(5) unsigned NOT NULL default '0',
  `text5_0` longtext,
  `text5_1` longtext,
  `lang5` tinyint(3) unsigned NOT NULL default '0',
  `prob5` float NOT NULL default '0',
  `em5_0` smallint(5) unsigned NOT NULL default '0',
  `em5_1` smallint(5) unsigned NOT NULL default '0',
  `em5_2` smallint(5) unsigned NOT NULL default '0',
  `em5_3` smallint(5) unsigned NOT NULL default '0',
  `em5_4` smallint(5) unsigned NOT NULL default '0',
  `em5_5` smallint(5) unsigned NOT NULL default '0',
  `text6_0` longtext,
  `text6_1` longtext,
  `lang6` tinyint(3) unsigned NOT NULL default '0',
  `prob6` float NOT NULL default '0',
  `em6_0` smallint(5) unsigned NOT NULL default '0',
  `em6_1` smallint(5) unsigned NOT NULL default '0',
  `em6_2` smallint(5) unsigned NOT NULL default '0',
  `em6_3` smallint(5) unsigned NOT NULL default '0',
  `em6_4` smallint(5) unsigned NOT NULL default '0',
  `em6_5` smallint(5) unsigned NOT NULL default '0',
  `text7_0` longtext,
  `text7_1` longtext,
  `lang7` tinyint(3) unsigned NOT NULL default '0',
  `prob7` float NOT NULL default '0',
  `em7_0` smallint(5) unsigned NOT NULL default '0',
  `em7_1` smallint(5) unsigned NOT NULL default '0',
  `em7_2` smallint(5) unsigned NOT NULL default '0',
  `em7_3` smallint(5) unsigned NOT NULL default '0',
  `em7_4` smallint(5) unsigned NOT NULL default '0',
  `em7_5` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `npc_text`
--

LOCK TABLES `npc_text` WRITE;
/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_trainer`
--

DROP TABLE IF EXISTS `npc_trainer`;
CREATE TABLE `npc_trainer` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `spell` mediumint(8) unsigned NOT NULL default '0',
  `spellcost` int(10) unsigned NOT NULL default '0',
  `reqskill` smallint(5) unsigned NOT NULL default '0',
  `reqskillvalue` smallint(5) unsigned NOT NULL default '0',
  `reqlevel` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `npc_trainer`
--

LOCK TABLES `npc_trainer` WRITE;
/*!40000 ALTER TABLE `npc_trainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_vendor`
--

DROP TABLE IF EXISTS `npc_vendor`;
CREATE TABLE `npc_vendor` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `maxcount` tinyint(3) unsigned NOT NULL default '0',
  `incrtime` int(10) unsigned NOT NULL default '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';

--
-- Dumping data for table `npc_vendor`
--

LOCK TABLES `npc_vendor` WRITE;
/*!40000 ALTER TABLE `npc_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_text`
--

DROP TABLE IF EXISTS `page_text`;
CREATE TABLE `page_text` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `text` longtext NOT NULL,
  `next_page` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item System';

--
-- Dumping data for table `page_text`
--

LOCK TABLES `page_text` WRITE;
/*!40000 ALTER TABLE `page_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_levelstats`
--

DROP TABLE IF EXISTS `pet_levelstats`;
CREATE TABLE `pet_levelstats` (
  `creature_entry` mediumint(8) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `hp` smallint(5) unsigned NOT NULL,
  `mana` smallint(5) unsigned NOT NULL,
  `armor` int(10) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL,
  `agi` smallint(5) unsigned NOT NULL,
  `sta` smallint(5) unsigned NOT NULL,
  `inte` smallint(5) unsigned NOT NULL,
  `spi` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`creature_entry`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores pet levels stats.';

--
-- Dumping data for table `pet_levelstats`
--

LOCK TABLES `pet_levelstats` WRITE;
/*!40000 ALTER TABLE `pet_levelstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_levelstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_name_generation`
--

DROP TABLE IF EXISTS `pet_name_generation`;
CREATE TABLE `pet_name_generation` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `word` tinytext NOT NULL,
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `half` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pet_name_generation`
--

LOCK TABLES `pet_name_generation` WRITE;
/*!40000 ALTER TABLE `pet_name_generation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_name_generation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petcreateinfo_spell`
--

DROP TABLE IF EXISTS `petcreateinfo_spell`;
CREATE TABLE `petcreateinfo_spell` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `Spell1` mediumint(8) unsigned NOT NULL default '0',
  `Spell2` mediumint(8) unsigned NOT NULL default '0',
  `Spell3` mediumint(8) unsigned NOT NULL default '0',
  `Spell4` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet Create Spells';

--
-- Dumping data for table `petcreateinfo_spell`
--

LOCK TABLES `petcreateinfo_spell` WRITE;
/*!40000 ALTER TABLE `petcreateinfo_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `petcreateinfo_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickpocketing_loot_template`
--

DROP TABLE IF EXISTS `pickpocketing_loot_template`;
CREATE TABLE `pickpocketing_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

--
-- Dumping data for table `pickpocketing_loot_template`
--

LOCK TABLES `pickpocketing_loot_template` WRITE;
/*!40000 ALTER TABLE `pickpocketing_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickpocketing_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_classlevelstats`
--

DROP TABLE IF EXISTS `player_classlevelstats`;
CREATE TABLE `player_classlevelstats` (
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `basehp` smallint(5) unsigned NOT NULL,
  `basemana` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`class`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores levels stats.';

--
-- Dumping data for table `player_classlevelstats`
--

LOCK TABLES `player_classlevelstats` WRITE;
/*!40000 ALTER TABLE `player_classlevelstats` DISABLE KEYS */;
INSERT INTO `player_classlevelstats` VALUES (1,1,20,0),(1,2,29,0),(1,3,38,0),(1,4,47,0),(1,5,56,0),(1,6,65,0),(1,7,74,0),(1,8,83,0),(1,9,92,0),(1,10,101,0),(1,11,100,0),(1,12,109,0),(1,13,118,0),(1,14,128,0),(1,15,139,0),(1,16,151,0),(1,17,154,0),(1,18,168,0),(1,19,183,0),(1,20,199,0),(1,21,206,0),(1,22,224,0),(1,23,243,0),(1,24,253,0),(1,25,274,0),(1,26,296,0),(1,27,309,0),(1,28,333,0),(1,29,348,0),(1,30,374,0),(1,31,401,0),(1,32,419,0),(1,33,448,0),(1,34,468,0),(1,35,499,0),(1,36,521,0),(1,37,545,0),(1,38,581,0),(1,39,609,0),(1,40,649,0),(1,41,681,0),(1,42,715,0),(1,43,761,0),(1,44,799,0),(1,45,839,0),(1,46,881,0),(1,47,935,0),(1,48,981,0),(1,49,1029,0),(1,50,1079,0),(1,51,1131,0),(1,52,1185,0),(1,53,1241,0),(1,54,1299,0),(1,55,1359,0),(1,56,1421,0),(1,57,1485,0),(1,58,1551,0),(1,59,1619,0),(1,60,1689,0),(2,1,28,60),(2,2,36,78),(2,3,44,98),(2,4,52,104),(2,5,60,111),(2,6,68,134),(2,7,76,143),(2,8,84,153),(2,9,92,179),(2,10,100,192),(2,11,108,205),(2,12,116,219),(2,13,124,249),(2,14,132,265),(2,15,131,282),(2,16,141,315),(2,17,152,334),(2,18,164,354),(2,19,177,390),(2,20,191,412),(2,21,206,435),(2,22,222,459),(2,23,239,499),(2,24,247,525),(2,25,266,552),(2,26,286,579),(2,27,307,621),(2,28,329,648),(2,29,342,675),(2,30,366,702),(2,31,391,729),(2,32,407,756),(2,33,434,798),(2,34,462,825),(2,35,481,852),(2,36,511,879),(2,37,542,906),(2,38,564,933),(2,39,597,960),(2,40,621,987),(2,41,656,1014),(2,42,682,1041),(2,43,719,1068),(2,44,747,1110),(2,45,786,1137),(2,46,816,1164),(2,47,857,1176),(2,48,889,1203),(2,49,922,1230),(2,50,966,1257),(2,51,1001,1284),(2,52,1037,1311),(2,53,1084,1338),(2,54,1122,1365),(2,55,1161,1392),(2,56,1201,1419),(2,57,1252,1446),(2,58,1294,1458),(2,59,1337,1485),(2,60,1381,1512),(3,1,46,65),(3,2,53,70),(3,3,60,76),(3,4,67,98),(3,5,74,106),(3,6,81,130),(3,7,88,140),(3,8,95,166),(3,9,102,193),(3,10,109,206),(3,11,116,235),(3,12,123,250),(3,13,130,266),(3,14,138,298),(3,15,147,316),(3,16,157,350),(3,17,168,370),(3,18,180,391),(3,19,193,428),(3,20,207,451),(3,21,222,475),(3,22,238,515),(3,23,255,541),(3,24,273,568),(3,25,292,611),(3,26,312,640),(3,27,333,670),(3,28,355,715),(3,29,378,745),(3,30,402,775),(3,31,417,805),(3,32,443,850),(3,33,470,880),(3,34,498,910),(3,35,527,940),(3,36,547,970),(3,37,578,1015),(3,38,610,1045),(3,39,643,1075),(3,40,667,1105),(3,41,702,1135),(3,42,738,1180),(3,43,775,1210),(3,44,803,1240),(3,45,842,1270),(3,46,872,1300),(3,47,913,1330),(3,48,955,1360),(3,49,994,1390),(3,50,1047,1420),(3,51,1067,1450),(3,52,1113,1480),(3,53,1150,1510),(3,54,1198,1540),(3,55,1237,1570),(3,56,1287,1600),(3,57,1328,1630),(3,58,1370,1660),(3,59,1423,1690),(3,60,1467,1720),(4,1,25,0),(4,2,32,0),(4,3,49,0),(4,4,56,0),(4,5,63,0),(4,6,70,0),(4,7,87,0),(4,8,94,0),(4,9,101,0),(4,10,118,0),(4,11,125,0),(4,12,142,0),(4,13,149,0),(4,14,156,0),(4,15,173,0),(4,16,181,0),(4,17,190,0),(4,18,200,0),(4,19,221,0),(4,20,233,0),(4,21,246,0),(4,22,260,0),(4,23,275,0),(4,24,301,0),(4,25,318,0),(4,26,336,0),(4,27,355,0),(4,28,375,0),(4,29,396,0),(4,30,428,0),(4,31,451,0),(4,32,475,0),(4,33,500,0),(4,34,526,0),(4,35,553,0),(4,36,581,0),(4,37,610,0),(4,38,640,0),(4,39,671,0),(4,40,703,0),(4,41,736,0),(4,42,770,0),(4,43,805,0),(4,44,841,0),(4,45,878,0),(4,46,916,0),(4,47,955,0),(4,48,995,0),(4,49,1026,0),(4,50,1068,0),(4,51,1111,0),(4,52,1155,0),(4,53,1200,0),(4,54,1246,0),(4,55,1283,0),(4,56,1331,0),(4,57,1380,0),(4,58,1430,0),(4,59,1471,0),(4,60,1523,0),(5,1,52,73),(5,2,57,76),(5,3,72,95),(5,4,77,114),(5,5,92,133),(5,6,97,152),(5,7,112,171),(5,8,117,190),(5,9,132,209),(5,10,137,212),(5,11,142,215),(5,12,157,234),(5,13,172,254),(5,14,177,260),(5,15,192,282),(5,16,197,305),(5,17,212,329),(5,18,227,339),(5,19,232,365),(5,20,247,377),(5,21,252,405),(5,22,268,434),(5,23,275,449),(5,24,293,480),(5,25,302,497),(5,26,322,530),(5,27,343,549),(5,28,355,584),(5,29,378,605),(5,30,392,627),(5,31,417,665),(5,32,433,689),(5,33,460,728),(5,34,478,752),(5,35,507,776),(5,36,527,800),(5,37,548,839),(5,38,580,863),(5,39,603,887),(5,40,637,911),(5,41,662,950),(5,42,698,974),(5,43,725,998),(5,44,763,1022),(5,45,792,1046),(5,46,822,1070),(5,47,863,1094),(5,48,895,1118),(5,49,928,1142),(5,50,972,1166),(5,51,1007,1190),(5,52,1053,1214),(5,53,1090,1238),(5,54,1128,1262),(5,55,1177,1271),(5,56,1217,1295),(5,57,1258,1319),(5,58,1300,1343),(5,59,1353,1352),(5,60,1397,1376),(7,1,37,85),(7,2,44,91),(7,3,51,98),(7,4,58,106),(7,5,65,115),(7,6,72,125),(7,7,79,136),(7,8,86,148),(7,9,93,161),(7,10,100,175),(7,11,107,190),(7,12,114,206),(7,13,121,223),(7,14,128,241),(7,15,135,260),(7,16,142,280),(7,17,150,301),(7,18,159,323),(7,19,169,346),(7,20,180,370),(7,21,192,395),(7,22,205,421),(7,23,219,448),(7,24,234,476),(7,25,240,505),(7,26,257,535),(7,27,275,566),(7,28,294,598),(7,29,314,631),(7,30,335,665),(7,31,347,699),(7,32,370,733),(7,33,394,767),(7,34,419,786),(7,35,435,820),(7,36,462,854),(7,37,490,888),(7,38,509,922),(7,39,539,941),(7,40,570,975),(7,41,592,1009),(7,42,625,1028),(7,43,649,1062),(7,44,684,1096),(7,45,710,1115),(7,46,747,1149),(7,47,775,1183),(7,48,814,1202),(7,49,844,1236),(7,50,885,1255),(7,51,917,1289),(7,52,960,1323),(7,53,994,1342),(7,54,1029,1376),(7,55,1075,1395),(7,56,1112,1414),(7,57,1150,1448),(7,58,1199,1467),(7,59,1239,1501),(7,60,1330,1520),(8,1,32,100),(8,2,47,110),(8,3,52,106),(8,4,67,118),(8,5,82,131),(8,6,97,130),(8,7,102,145),(8,8,117,146),(8,9,132,163),(8,10,137,196),(8,11,152,215),(8,12,167,220),(8,13,172,241),(8,14,187,263),(8,15,202,271),(8,16,207,295),(8,17,222,305),(8,18,237,331),(8,19,242,343),(8,20,257,371),(8,21,272,385),(8,22,277,415),(8,23,292,431),(8,24,298,463),(8,25,315,481),(8,26,333,515),(8,27,342,535),(8,28,362,556),(8,29,373,592),(8,30,395,613),(8,31,418,634),(8,32,432,670),(8,33,457,691),(8,34,473,712),(8,35,500,733),(8,36,518,754),(8,37,547,790),(8,38,577,811),(8,39,598,832),(8,40,630,853),(8,41,653,874),(8,42,687,895),(8,43,712,916),(8,44,748,937),(8,45,775,958),(8,46,813,979),(8,47,842,1000),(8,48,882,1021),(8,49,913,1042),(8,50,955,1048),(8,51,988,1069),(8,52,1032,1090),(8,53,1067,1111),(8,54,1103,1117),(8,55,1150,1138),(8,56,1188,1159),(8,57,1237,1165),(8,58,1277,1186),(8,59,1328,1192),(8,60,1370,1213),(9,1,23,90),(9,2,28,98),(9,3,43,107),(9,4,48,102),(9,5,63,113),(9,6,68,126),(9,7,83,144),(9,8,88,162),(9,9,93,180),(9,10,108,198),(9,11,123,200),(9,12,128,218),(9,13,143,237),(9,14,148,257),(9,15,153,278),(9,16,168,300),(9,17,173,308),(9,18,189,332),(9,19,196,357),(9,20,204,383),(9,21,223,395),(9,22,233,423),(9,23,244,452),(9,24,266,467),(9,25,279,498),(9,26,293,530),(9,27,318,548),(9,28,334,582),(9,29,351,602),(9,30,379,638),(9,31,398,674),(9,32,418,695),(9,33,439,731),(9,34,471,752),(9,35,494,788),(9,36,518,809),(9,37,543,830),(9,38,569,866),(9,39,606,887),(9,40,634,923),(9,41,663,944),(9,42,693,965),(9,43,724,1001),(9,44,756,1022),(9,45,799,1043),(9,46,832,1064),(9,47,868,1100),(9,48,904,1121),(9,49,941,1142),(9,50,979,1163),(9,51,1018,1184),(9,52,1058,1205),(9,53,1099,1226),(9,54,1141,1247),(9,55,1184,1268),(9,56,1228,1289),(9,57,1273,1310),(9,58,1319,1331),(9,59,1366,1352),(9,60,1414,1373),(11,1,44,60),(11,2,51,66),(11,3,58,73),(11,4,75,81),(11,5,82,90),(11,6,89,100),(11,7,106,111),(11,8,113,123),(11,9,120,136),(11,10,137,150),(11,11,144,165),(11,12,151,182),(11,13,168,200),(11,14,175,219),(11,15,182,239),(11,16,199,260),(11,17,206,282),(11,18,214,305),(11,19,233,329),(11,20,243,354),(11,21,254,380),(11,22,266,392),(11,23,289,420),(11,24,303,449),(11,25,318,479),(11,26,334,509),(11,27,361,524),(11,28,379,554),(11,29,398,584),(11,30,418,614),(11,31,439,629),(11,32,461,659),(11,33,494,689),(11,34,518,704),(11,35,543,734),(11,36,569,749),(11,37,596,779),(11,38,624,809),(11,39,653,824),(11,40,683,854),(11,41,714,869),(11,42,746,899),(11,43,779,914),(11,44,823,944),(11,45,858,959),(11,46,894,989),(11,47,921,1004),(11,48,959,1019),(11,49,998,1049),(11,50,1038,1064),(11,51,1079,1079),(11,52,1121,1109),(11,53,1164,1124),(11,54,1208,1139),(11,55,1253,1154),(11,56,1299,1169),(11,57,1346,1199),(11,58,1384,1214),(11,59,1433,1229),(11,60,1483,1244);
/*!40000 ALTER TABLE `player_classlevelstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_levelstats`
--

DROP TABLE IF EXISTS `player_levelstats`;
CREATE TABLE `player_levelstats` (
  `race` tinyint(3) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `str` tinyint(3) unsigned NOT NULL,
  `agi` tinyint(3) unsigned NOT NULL,
  `sta` tinyint(3) unsigned NOT NULL,
  `inte` tinyint(3) unsigned NOT NULL,
  `spi` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`race`,`class`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores levels stats.';

--
-- Dumping data for table `player_levelstats`
--

LOCK TABLES `player_levelstats` WRITE;
/*!40000 ALTER TABLE `player_levelstats` DISABLE KEYS */;
INSERT INTO `player_levelstats` VALUES (1,1,1,23,20,22,20,20),(1,1,2,24,21,23,20,20),(1,1,3,26,22,24,20,21),(1,1,4,27,22,26,20,21),(1,1,5,28,23,27,20,21),(1,1,6,30,24,28,20,21),(1,1,7,31,25,29,21,22),(1,1,8,32,26,30,21,22),(1,1,9,34,26,32,21,22),(1,1,10,35,27,33,21,23),(1,1,11,36,28,34,21,23),(1,1,12,38,29,35,21,23),(1,1,13,39,30,37,21,24),(1,1,14,41,31,38,21,24),(1,1,15,42,32,39,21,24),(1,1,16,44,33,41,21,25),(1,1,17,45,34,42,22,25),(1,1,18,47,34,43,22,25),(1,1,19,48,35,45,22,26),(1,1,20,50,36,46,22,26),(1,1,21,51,37,48,22,26),(1,1,22,53,38,49,22,27),(1,1,23,54,39,51,22,27),(1,1,24,56,40,52,23,28),(1,1,25,58,41,53,23,28),(1,1,26,59,42,55,23,28),(1,1,27,61,43,56,23,29),(1,1,28,63,44,58,23,29),(1,1,29,64,45,59,23,30),(1,1,30,66,46,61,24,30),(1,1,31,68,47,62,24,30),(1,1,32,69,48,64,24,31),(1,1,33,71,50,66,24,31),(1,1,34,73,51,67,24,32),(1,1,35,74,52,69,24,32),(1,1,36,76,53,70,25,33),(1,1,37,78,54,72,25,33),(1,1,38,80,55,74,25,34),(1,1,39,82,56,75,25,34),(1,1,40,83,57,77,25,35),(1,1,41,85,58,79,26,35),(1,1,42,87,60,80,26,35),(1,1,43,89,61,82,26,36),(1,1,44,91,62,84,26,36),(1,1,45,93,63,85,26,37),(1,1,46,95,64,87,27,37),(1,1,47,97,66,89,27,38),(1,1,48,99,67,91,27,38),(1,1,49,101,68,93,27,39),(1,1,50,103,69,94,28,40),(1,1,51,105,71,96,28,40),(1,1,52,107,72,98,28,41),(1,1,53,109,73,100,28,41),(1,1,54,111,74,102,29,42),(1,1,55,113,76,103,29,42),(1,1,56,115,77,105,29,43),(1,1,57,117,78,107,29,43),(1,1,58,119,79,109,30,44),(1,1,59,121,81,111,30,44),(1,1,60,123,82,113,30,45),(1,2,1,22,20,22,20,21),(1,2,2,23,21,23,21,22),(1,2,3,24,21,24,21,22),(1,2,4,25,22,25,22,23),(1,2,5,26,22,26,23,24),(1,2,6,28,23,27,23,25),(1,2,7,29,24,28,24,25),(1,2,8,30,24,29,25,26),(1,2,9,31,25,30,25,27),(1,2,10,32,25,32,26,27),(1,2,11,33,26,33,27,28),(1,2,12,35,27,34,27,29),(1,2,13,36,27,35,28,30),(1,2,14,37,28,36,29,31),(1,2,15,38,29,37,30,31),(1,2,16,40,29,38,30,32),(1,2,17,41,30,40,31,33),(1,2,18,42,31,41,32,34),(1,2,19,43,31,42,33,35),(1,2,20,45,32,43,33,35),(1,2,21,46,33,45,34,36),(1,2,22,47,33,46,35,37),(1,2,23,49,34,47,36,38),(1,2,24,50,35,48,37,39),(1,2,25,51,36,50,37,40),(1,2,26,53,36,51,38,41),(1,2,27,54,37,52,39,42),(1,2,28,56,38,54,40,43),(1,2,29,57,39,55,41,43),(1,2,30,58,39,56,42,44),(1,2,31,60,40,58,43,45),(1,2,32,61,41,59,43,46),(1,2,33,63,42,60,44,47),(1,2,34,64,43,62,45,48),(1,2,35,66,44,63,46,49),(1,2,36,67,44,65,47,50),(1,2,37,69,45,66,48,51),(1,2,38,70,46,67,49,52),(1,2,39,72,47,69,50,53),(1,2,40,73,48,70,51,54),(1,2,41,75,49,72,52,55),(1,2,42,77,49,73,53,56),(1,2,43,78,50,75,54,57),(1,2,44,80,51,76,55,58),(1,2,45,81,52,78,56,59),(1,2,46,83,53,79,57,61),(1,2,47,85,54,81,58,62),(1,2,48,86,55,83,59,63),(1,2,49,88,56,84,60,64),(1,2,50,90,57,86,61,65),(1,2,51,91,58,87,62,66),(1,2,52,93,59,89,63,67),(1,2,53,95,60,91,64,68),(1,2,54,97,61,92,65,69),(1,2,55,98,61,94,66,71),(1,2,56,100,62,95,67,72),(1,2,57,102,63,97,68,73),(1,2,58,104,64,99,69,74),(1,2,59,105,65,101,70,75),(1,2,60,107,66,102,71,77),(1,4,1,21,23,21,20,20),(1,4,2,22,24,22,20,20),(1,4,3,23,26,22,20,21),(1,4,4,23,27,23,20,21),(1,4,5,24,29,24,21,21),(1,4,6,25,30,25,21,22),(1,4,7,26,32,25,21,22),(1,4,8,26,33,26,21,23),(1,4,9,27,35,27,21,23),(1,4,10,28,36,27,21,23),(1,4,11,29,38,28,22,24),(1,4,12,30,39,29,22,24),(1,4,13,31,41,30,22,25),(1,4,14,31,43,31,22,25),(1,4,15,32,44,31,22,25),(1,4,16,33,46,32,23,26),(1,4,17,34,48,33,23,26),(1,4,18,35,49,34,23,27),(1,4,19,36,51,35,23,27),(1,4,20,37,53,35,23,28),(1,4,21,38,54,36,24,28),(1,4,22,39,56,37,24,29),(1,4,23,40,58,38,24,29),(1,4,24,41,60,39,24,30),(1,4,25,42,61,40,25,30),(1,4,26,43,63,41,25,31),(1,4,27,44,65,42,25,31),(1,4,28,45,67,43,25,32),(1,4,29,46,69,43,25,32),(1,4,30,47,71,44,26,33),(1,4,31,48,72,45,26,33),(1,4,32,49,74,46,26,34),(1,4,33,50,76,47,27,34),(1,4,34,51,78,48,27,35),(1,4,35,52,80,49,27,35),(1,4,36,53,82,50,27,36),(1,4,37,54,84,51,28,36),(1,4,38,55,86,52,28,37),(1,4,39,56,88,53,28,38),(1,4,40,57,90,54,28,38),(1,4,41,58,92,55,29,39),(1,4,42,60,94,56,29,39),(1,4,43,61,96,57,29,40),(1,4,44,62,98,58,30,40),(1,4,45,63,100,59,30,41),(1,4,46,64,103,61,30,42),(1,4,47,65,105,62,31,42),(1,4,48,66,107,63,31,43),(1,4,49,68,109,64,31,44),(1,4,50,69,111,65,32,44),(1,4,51,70,113,66,32,45),(1,4,52,71,116,67,32,45),(1,4,53,73,118,68,33,46),(1,4,54,74,120,69,33,47),(1,4,55,75,122,71,33,47),(1,4,56,76,125,72,34,48),(1,4,57,78,127,73,34,49),(1,4,58,79,129,74,34,49),(1,4,59,80,131,75,35,50),(1,4,60,81,134,77,35,51),(1,5,1,20,20,20,22,23),(1,5,2,20,20,20,23,24),(1,5,3,20,20,21,25,26),(1,5,4,20,21,21,26,27),(1,5,5,21,21,21,27,28),(1,5,6,21,21,22,29,30),(1,5,7,21,21,22,30,31),(1,5,8,21,22,23,31,33),(1,5,9,21,22,23,33,34),(1,5,10,21,22,23,34,36),(1,5,11,22,22,24,36,37),(1,5,12,22,23,24,37,39),(1,5,13,22,23,25,38,40),(1,5,14,22,23,25,40,42),(1,5,15,22,23,25,41,43),(1,5,16,23,24,26,43,45),(1,5,17,23,24,26,44,46),(1,5,18,23,24,27,46,48),(1,5,19,23,24,27,47,49),(1,5,20,23,25,28,49,51),(1,5,21,24,25,28,51,53),(1,5,22,24,25,29,52,54),(1,5,23,24,26,29,54,56),(1,5,24,24,26,30,55,58),(1,5,25,25,26,30,57,59),(1,5,26,25,27,31,59,61),(1,5,27,25,27,31,60,63),(1,5,28,25,27,32,62,65),(1,5,29,25,28,32,64,66),(1,5,30,26,28,33,65,68),(1,5,31,26,28,33,67,70),(1,5,32,26,29,34,69,72),(1,5,33,27,29,34,70,73),(1,5,34,27,29,35,72,75),(1,5,35,27,30,35,74,77),(1,5,36,27,30,36,76,79),(1,5,37,28,30,36,78,81),(1,5,38,28,31,37,79,83),(1,5,39,28,31,38,81,85),(1,5,40,28,31,38,83,87),(1,5,41,29,32,39,85,88),(1,5,42,29,32,39,87,90),(1,5,43,29,33,40,89,92),(1,5,44,30,33,40,91,94),(1,5,45,30,33,41,92,96),(1,5,46,30,34,42,94,98),(1,5,47,31,34,42,96,100),(1,5,48,31,35,43,98,102),(1,5,49,31,35,44,100,104),(1,5,50,32,36,44,102,106),(1,5,51,32,36,45,104,109),(1,5,52,32,36,45,106,111),(1,5,53,33,37,46,108,113),(1,5,54,33,37,47,110,115),(1,5,55,33,38,47,112,117),(1,5,56,34,38,48,114,119),(1,5,57,34,39,49,117,121),(1,5,58,34,39,49,119,124),(1,5,59,35,40,50,121,126),(1,5,60,35,40,51,123,128),(1,8,1,20,20,20,23,22),(1,8,2,20,20,20,24,23),(1,8,3,20,20,21,26,25),(1,8,4,20,20,21,27,26),(1,8,5,20,21,21,28,27),(1,8,6,20,21,21,30,29),(1,8,7,21,21,22,31,30),(1,8,8,21,21,22,33,31),(1,8,9,21,21,22,34,33),(1,8,10,21,21,23,36,34),(1,8,11,21,22,23,37,36),(1,8,12,21,22,23,39,37),(1,8,13,21,22,24,40,38),(1,8,14,21,22,24,42,40),(1,8,15,21,22,24,43,41),(1,8,16,21,23,25,45,43),(1,8,17,22,23,25,46,44),(1,8,18,22,23,25,48,46),(1,8,19,22,23,26,49,47),(1,8,20,22,23,26,51,49),(1,8,21,22,24,26,53,51),(1,8,22,22,24,27,54,52),(1,8,23,22,24,27,56,54),(1,8,24,23,24,28,58,55),(1,8,25,23,25,28,59,57),(1,8,26,23,25,28,61,59),(1,8,27,23,25,29,63,60),(1,8,28,23,25,29,65,62),(1,8,29,23,25,30,66,64),(1,8,30,24,26,30,68,65),(1,8,31,24,26,30,70,67),(1,8,32,24,26,31,72,69),(1,8,33,24,27,31,73,70),(1,8,34,24,27,32,75,72),(1,8,35,24,27,32,77,74),(1,8,36,25,27,33,79,76),(1,8,37,25,28,33,81,78),(1,8,38,25,28,34,83,79),(1,8,39,25,28,34,85,81),(1,8,40,25,28,35,87,83),(1,8,41,26,29,35,88,85),(1,8,42,26,29,35,90,87),(1,8,43,26,29,36,92,89),(1,8,44,26,30,36,94,91),(1,8,45,26,30,37,96,92),(1,8,46,27,30,37,98,94),(1,8,47,27,31,38,100,96),(1,8,48,27,31,38,102,98),(1,8,49,27,31,39,104,100),(1,8,50,28,32,40,106,102),(1,8,51,28,32,40,109,104),(1,8,52,28,32,41,111,106),(1,8,53,28,33,41,113,108),(1,8,54,29,33,42,115,110),(1,8,55,29,33,42,117,112),(1,8,56,29,34,43,119,114),(1,8,57,29,34,43,121,117),(1,8,58,30,34,44,124,119),(1,8,59,30,35,44,126,121),(1,8,60,30,35,45,128,123),(1,9,1,20,20,21,22,22),(1,9,2,20,20,22,23,23),(1,9,3,21,21,22,24,24),(1,9,4,21,21,23,26,25),(1,9,5,21,21,23,27,27),(1,9,6,21,22,24,28,28),(1,9,7,22,22,24,29,29),(1,9,8,22,23,25,30,30),(1,9,9,22,23,26,32,31),(1,9,10,23,23,26,33,33),(1,9,11,23,24,27,34,34),(1,9,12,23,24,27,35,35),(1,9,13,24,25,28,37,36),(1,9,14,24,25,29,38,38),(1,9,15,24,25,29,39,39),(1,9,16,25,26,30,41,40),(1,9,17,25,26,31,42,42),(1,9,18,25,27,31,43,43),(1,9,19,26,27,32,45,44),(1,9,20,26,28,33,46,46),(1,9,21,26,28,33,48,47),(1,9,22,27,29,34,49,49),(1,9,23,27,29,35,51,50),(1,9,24,28,30,35,52,51),(1,9,25,28,30,36,53,53),(1,9,26,28,31,37,55,54),(1,9,27,29,31,37,56,56),(1,9,28,29,32,38,58,57),(1,9,29,30,32,39,59,59),(1,9,30,30,33,40,61,60),(1,9,31,30,33,40,62,62),(1,9,32,31,34,41,64,63),(1,9,33,31,34,42,66,65),(1,9,34,32,35,43,67,66),(1,9,35,32,35,44,69,68),(1,9,36,33,36,44,70,69),(1,9,37,33,36,45,72,71),(1,9,38,34,37,46,74,73),(1,9,39,34,38,47,75,74),(1,9,40,35,38,48,77,76),(1,9,41,35,39,48,79,78),(1,9,42,35,39,49,80,79),(1,9,43,36,40,50,82,81),(1,9,44,36,40,51,84,83),(1,9,45,37,41,52,85,84),(1,9,46,37,42,53,87,86),(1,9,47,38,42,54,89,88),(1,9,48,38,43,55,91,89),(1,9,49,39,44,55,93,91),(1,9,50,40,44,56,94,93),(1,9,51,40,45,57,96,95),(1,9,52,41,45,58,98,97),(1,9,53,41,46,59,100,98),(1,9,54,42,47,60,102,100),(1,9,55,42,47,61,103,102),(1,9,56,43,48,62,105,104),(1,9,57,43,49,63,107,106),(1,9,58,44,49,64,109,108),(1,9,59,44,50,65,111,109),(1,9,60,45,51,66,113,111),(2,1,1,26,17,24,17,23),(2,1,2,27,18,25,17,23),(2,1,3,29,19,26,17,24),(2,1,4,30,19,27,17,24),(2,1,5,31,20,29,17,24),(2,1,6,32,21,30,17,24),(2,1,7,34,22,31,18,25),(2,1,8,35,23,32,18,25),(2,1,9,37,24,34,18,25),(2,1,10,38,24,35,18,26),(2,1,11,39,25,36,18,26),(2,1,12,41,26,37,18,26),(2,1,13,42,27,39,18,27),(2,1,14,44,28,40,18,27),(2,1,15,45,29,41,18,27),(2,1,16,47,30,43,19,28),(2,1,17,48,31,44,19,28),(2,1,18,50,32,45,19,28),(2,1,19,51,33,47,19,29),(2,1,20,53,34,48,19,29),(2,1,21,54,34,50,19,29),(2,1,22,56,35,51,19,30),(2,1,23,57,36,52,20,30),(2,1,24,59,37,54,20,30),(2,1,25,60,38,55,20,31),(2,1,26,62,39,57,20,31),(2,1,27,64,40,58,20,32),(2,1,28,65,41,60,20,32),(2,1,29,67,43,61,21,32),(2,1,30,69,44,63,21,33),(2,1,31,70,45,64,21,33),(2,1,32,72,46,66,21,34),(2,1,33,74,47,67,21,34),(2,1,34,76,48,69,21,35),(2,1,35,77,49,71,22,35),(2,1,36,79,50,72,22,36),(2,1,37,81,51,74,22,36),(2,1,38,83,52,76,22,36),(2,1,39,84,53,77,22,37),(2,1,40,86,55,79,23,37),(2,1,41,88,56,81,23,38),(2,1,42,90,57,82,23,38),(2,1,43,92,58,84,23,39),(2,1,44,94,59,86,23,39),(2,1,45,96,60,87,24,40),(2,1,46,98,62,89,24,40),(2,1,47,100,63,91,24,41),(2,1,48,101,64,93,24,41),(2,1,49,103,65,94,25,42),(2,1,50,105,66,96,25,42),(2,1,51,107,68,98,25,43),(2,1,52,109,69,100,25,43),(2,1,53,111,70,102,25,44),(2,1,54,113,71,104,26,45),(2,1,55,115,73,105,26,45),(2,1,56,118,74,107,26,46),(2,1,57,120,75,109,26,46),(2,1,58,122,77,111,27,47),(2,1,59,124,78,113,27,47),(2,1,60,126,79,115,27,48),(2,3,1,23,20,23,17,24),(2,3,2,23,21,24,18,25),(2,3,3,24,23,25,18,25),(2,3,4,24,24,26,19,26),(2,3,5,25,25,27,19,26),(2,3,6,25,27,28,20,27),(2,3,7,26,28,28,21,28),(2,3,8,26,30,29,21,28),(2,3,9,26,31,30,22,29),(2,3,10,27,33,31,22,30),(2,3,11,27,34,32,23,30),(2,3,12,28,36,33,24,31),(2,3,13,28,37,34,24,32),(2,3,14,29,39,35,25,33),(2,3,15,29,40,36,26,33),(2,3,16,30,42,37,26,34),(2,3,17,30,43,39,27,35),(2,3,18,31,45,40,28,35),(2,3,19,31,47,41,28,36),(2,3,20,32,48,42,29,37),(2,3,21,32,50,43,30,38),(2,3,22,33,51,44,31,39),(2,3,23,34,53,45,31,39),(2,3,24,34,55,46,32,40),(2,3,25,35,57,47,33,41),(2,3,26,35,58,48,34,42),(2,3,27,36,60,50,34,43),(2,3,28,36,62,51,35,43),(2,3,29,37,63,52,36,44),(2,3,30,38,65,53,37,45),(2,3,31,38,67,54,37,46),(2,3,32,39,69,56,38,47),(2,3,33,39,71,57,39,48),(2,3,34,40,72,58,40,49),(2,3,35,41,74,59,41,49),(2,3,36,41,76,61,42,50),(2,3,37,42,78,62,42,51),(2,3,38,43,80,63,43,52),(2,3,39,43,82,64,44,53),(2,3,40,44,84,66,45,54),(2,3,41,45,86,67,46,55),(2,3,42,45,88,68,47,56),(2,3,43,46,90,70,47,57),(2,3,44,47,91,71,48,58),(2,3,45,47,93,72,49,59),(2,3,46,48,95,74,50,60),(2,3,47,49,98,75,51,61),(2,3,48,50,100,77,52,62),(2,3,49,50,102,78,53,63),(2,3,50,51,104,79,54,64),(2,3,51,52,106,81,55,65),(2,3,52,52,108,82,56,66),(2,3,53,53,110,84,57,67),(2,3,54,54,112,85,58,68),(2,3,55,55,114,87,59,69),(2,3,56,55,116,88,60,70),(2,3,57,56,118,90,61,71),(2,3,58,57,121,91,62,72),(2,3,59,58,123,93,63,73),(2,3,60,59,125,94,64,74),(2,4,1,24,20,23,17,23),(2,4,2,25,21,24,17,23),(2,4,3,25,23,24,17,24),(2,4,4,26,24,25,17,24),(2,4,5,27,26,26,18,24),(2,4,6,28,27,26,18,25),(2,4,7,29,29,27,18,25),(2,4,8,29,30,28,18,26),(2,4,9,30,32,29,18,26),(2,4,10,31,33,29,19,26),(2,4,11,32,35,30,19,27),(2,4,12,33,37,31,19,27),(2,4,13,34,38,32,19,28),(2,4,14,34,40,32,19,28),(2,4,15,35,41,33,19,28),(2,4,16,36,43,34,20,29),(2,4,17,37,45,35,20,29),(2,4,18,38,46,36,20,30),(2,4,19,39,48,37,20,30),(2,4,20,40,50,37,21,31),(2,4,21,41,52,38,21,31),(2,4,22,42,53,39,21,31),(2,4,23,43,55,40,21,32),(2,4,24,43,57,41,21,32),(2,4,25,44,59,42,22,33),(2,4,26,45,60,43,22,33),(2,4,27,46,62,44,22,34),(2,4,28,47,64,44,22,34),(2,4,29,48,66,45,23,35),(2,4,30,49,68,46,23,35),(2,4,31,50,70,47,23,36),(2,4,32,51,72,48,23,36),(2,4,33,53,73,49,24,37),(2,4,34,54,75,50,24,38),(2,4,35,55,77,51,24,38),(2,4,36,56,79,52,24,39),(2,4,37,57,81,53,25,39),(2,4,38,58,83,54,25,40),(2,4,39,59,85,55,25,40),(2,4,40,60,87,56,26,41),(2,4,41,61,89,57,26,41),(2,4,42,62,91,58,26,42),(2,4,43,63,93,59,27,43),(2,4,44,65,95,60,27,43),(2,4,45,66,98,61,27,44),(2,4,46,67,100,62,27,44),(2,4,47,68,102,64,28,45),(2,4,48,69,104,65,28,46),(2,4,49,71,106,66,28,46),(2,4,50,72,108,67,29,47),(2,4,51,73,110,68,29,48),(2,4,52,74,113,69,29,48),(2,4,53,75,115,70,30,49),(2,4,54,77,117,71,30,50),(2,4,55,78,119,73,30,50),(2,4,56,79,122,74,31,51),(2,4,57,80,124,75,31,52),(2,4,58,82,126,76,31,52),(2,4,59,83,129,77,32,53),(2,4,60,84,131,78,32,54),(2,7,1,24,17,23,18,25),(2,7,2,25,17,24,19,26),(2,7,3,26,18,25,20,27),(2,7,4,26,18,26,21,28),(2,7,5,27,19,27,22,29),(2,7,6,28,19,28,23,30),(2,7,7,29,20,29,24,31),(2,7,8,30,20,30,25,32),(2,7,9,31,21,31,26,33),(2,7,10,32,21,32,27,34),(2,7,11,33,22,33,28,36),(2,7,12,34,22,34,29,37),(2,7,13,34,23,35,30,38),(2,7,14,35,23,36,31,39),(2,7,15,36,24,37,32,40),(2,7,16,37,24,39,33,41),(2,7,17,38,25,40,34,43),(2,7,18,39,25,41,35,44),(2,7,19,40,26,42,36,45),(2,7,20,41,26,43,37,46),(2,7,21,42,27,44,38,47),(2,7,22,43,27,45,39,49),(2,7,23,44,28,47,40,50),(2,7,24,45,28,48,41,51),(2,7,25,47,29,49,43,52),(2,7,26,48,30,50,44,54),(2,7,27,49,30,52,45,55),(2,7,28,50,31,53,46,56),(2,7,29,51,31,54,47,58),(2,7,30,52,32,55,48,59),(2,7,31,53,33,57,50,60),(2,7,32,54,33,58,51,62),(2,7,33,55,34,59,52,63),(2,7,34,57,34,61,53,65),(2,7,35,58,35,62,55,66),(2,7,36,59,36,63,56,67),(2,7,37,60,36,65,57,69),(2,7,38,61,37,66,58,70),(2,7,39,62,38,67,60,72),(2,7,40,64,38,69,61,73),(2,7,41,65,39,70,62,75),(2,7,42,66,40,72,64,76),(2,7,43,67,40,73,65,78),(2,7,44,69,41,74,66,79),(2,7,45,70,42,76,68,81),(2,7,46,71,42,77,69,82),(2,7,47,72,43,79,70,84),(2,7,48,74,44,80,72,85),(2,7,49,75,45,82,73,87),(2,7,50,76,45,83,75,89),(2,7,51,78,46,85,76,90),(2,7,52,79,47,86,77,92),(2,7,53,80,47,88,79,93),(2,7,54,82,48,90,80,95),(2,7,55,83,49,91,82,97),(2,7,56,85,50,93,83,98),(2,7,57,86,50,94,85,100),(2,7,58,87,51,96,86,102),(2,7,59,89,52,97,88,103),(2,7,60,90,53,99,89,105),(2,9,1,23,17,23,19,25),(2,9,2,23,17,24,20,26),(2,9,3,24,18,24,21,27),(2,9,4,24,18,25,23,28),(2,9,5,24,18,25,24,30),(2,9,6,24,19,26,25,31),(2,9,7,25,19,26,26,32),(2,9,8,25,20,27,27,33),(2,9,9,25,20,27,29,34),(2,9,10,26,20,28,30,36),(2,9,11,26,21,29,31,37),(2,9,12,26,21,29,33,38),(2,9,13,27,22,30,34,39),(2,9,14,27,22,31,35,41),(2,9,15,27,23,31,37,42),(2,9,16,28,23,32,38,43),(2,9,17,28,23,32,39,45),(2,9,18,28,24,33,41,46),(2,9,19,29,24,34,42,47),(2,9,20,29,25,34,43,49),(2,9,21,29,25,35,45,50),(2,9,22,30,26,36,46,51),(2,9,23,30,26,37,48,53),(2,9,24,30,27,37,49,54),(2,9,25,31,27,38,51,56),(2,9,26,31,28,39,52,57),(2,9,27,32,28,39,54,59),(2,9,28,32,29,40,55,60),(2,9,29,32,29,41,57,62),(2,9,30,33,30,42,58,63),(2,9,31,33,30,42,60,65),(2,9,32,34,31,43,61,66),(2,9,33,34,31,44,63,68),(2,9,34,35,32,45,64,69),(2,9,35,35,32,45,66,71),(2,9,36,36,33,46,68,72),(2,9,37,36,34,47,69,74),(2,9,38,36,34,48,71,76),(2,9,39,37,35,49,72,77),(2,9,40,37,35,50,74,79),(2,9,41,38,36,50,76,80),(2,9,42,38,36,51,77,82),(2,9,43,39,37,52,79,84),(2,9,44,39,38,53,81,85),(2,9,45,40,38,54,83,87),(2,9,46,40,39,55,84,89),(2,9,47,41,39,56,86,91),(2,9,48,41,40,56,88,92),(2,9,49,42,41,57,90,94),(2,9,50,42,41,58,91,96),(2,9,51,43,42,59,93,98),(2,9,52,43,43,60,95,99),(2,9,53,44,43,61,97,101),(2,9,54,45,44,62,99,103),(2,9,55,45,45,63,101,105),(2,9,56,46,45,64,102,107),(2,9,57,46,46,65,104,109),(2,9,58,47,47,66,106,110),(2,9,59,47,47,67,108,112),(2,9,60,48,48,68,110,114),(3,1,1,25,16,25,19,19),(3,1,2,26,17,26,19,19),(3,1,3,28,18,27,19,20),(3,1,4,29,18,28,19,20),(3,1,5,30,19,30,19,20),(3,1,6,31,20,31,19,20),(3,1,7,33,21,32,20,21),(3,1,8,34,22,33,20,21),(3,1,9,36,23,35,20,21),(3,1,10,37,23,36,20,22),(3,1,11,38,24,37,20,22),(3,1,12,40,25,38,20,22),(3,1,13,41,26,40,20,23),(3,1,14,43,27,41,20,23),(3,1,15,44,28,42,20,23),(3,1,16,46,29,44,21,24),(3,1,17,47,30,45,21,24),(3,1,18,49,31,46,21,24),(3,1,19,50,32,48,21,25),(3,1,20,52,33,49,21,25),(3,1,21,53,34,51,21,26),(3,1,22,55,34,52,21,26),(3,1,23,56,35,53,21,26),(3,1,24,58,36,55,22,27),(3,1,25,59,37,56,22,27),(3,1,26,61,38,58,22,27),(3,1,27,63,39,59,22,28),(3,1,28,64,41,61,22,28),(3,1,29,66,42,62,22,29),(3,1,30,68,43,64,23,29),(3,1,31,69,44,65,23,30),(3,1,32,71,45,67,23,30),(3,1,33,73,46,68,23,30),(3,1,34,75,47,70,23,31),(3,1,35,76,48,72,24,31),(3,1,36,78,49,73,24,32),(3,1,37,80,50,75,24,32),(3,1,38,82,51,76,24,33),(3,1,39,84,52,78,24,33),(3,1,40,85,54,80,24,34),(3,1,41,87,55,81,25,34),(3,1,42,89,56,83,25,35),(3,1,43,91,57,85,25,35),(3,1,44,93,58,87,25,36),(3,1,45,95,59,88,26,36),(3,1,46,97,61,90,26,37),(3,1,47,99,62,92,26,37),(3,1,48,101,63,94,26,38),(3,1,49,102,64,95,26,38),(3,1,50,104,65,97,27,39),(3,1,51,106,67,99,27,39),(3,1,52,108,68,101,27,40),(3,1,53,110,69,103,27,40),(3,1,54,112,70,104,28,41),(3,1,55,115,72,106,28,41),(3,1,56,117,73,108,28,42),(3,1,57,119,74,110,28,42),(3,1,58,121,76,112,29,43),(3,1,59,123,77,114,29,43),(3,1,60,125,78,116,29,44),(3,2,1,24,16,25,19,20),(3,2,2,25,17,26,20,21),(3,2,3,26,17,27,20,21),(3,2,4,27,18,28,21,22),(3,2,5,28,18,29,22,23),(3,2,6,29,19,30,22,24),(3,2,7,31,20,31,23,24),(3,2,8,32,20,32,24,25),(3,2,9,33,21,33,24,26),(3,2,10,34,21,34,25,26),(3,2,11,35,22,36,26,27),(3,2,12,36,23,37,26,28),(3,2,13,38,23,38,27,29),(3,2,14,39,24,39,28,30),(3,2,15,40,25,40,29,30),(3,2,16,41,25,41,29,31),(3,2,17,43,26,43,30,32),(3,2,18,44,27,44,31,33),(3,2,19,45,28,45,32,34),(3,2,20,47,28,46,32,35),(3,2,21,48,29,47,33,35),(3,2,22,49,30,49,34,36),(3,2,23,51,30,50,35,37),(3,2,24,52,31,51,36,38),(3,2,25,53,32,52,36,39),(3,2,26,55,33,54,37,40),(3,2,27,56,33,55,38,41),(3,2,28,57,34,56,39,42),(3,2,29,59,35,58,40,43),(3,2,30,60,36,59,41,43),(3,2,31,62,37,60,42,44),(3,2,32,63,37,62,42,45),(3,2,33,65,38,63,43,46),(3,2,34,66,39,65,44,47),(3,2,35,68,40,66,45,48),(3,2,36,69,41,67,46,49),(3,2,37,71,41,69,47,50),(3,2,38,72,42,70,48,51),(3,2,39,74,43,72,49,52),(3,2,40,75,44,73,50,53),(3,2,41,77,45,75,51,54),(3,2,42,78,46,76,52,55),(3,2,43,80,47,78,53,56),(3,2,44,82,47,79,54,57),(3,2,45,83,48,81,55,59),(3,2,46,85,49,82,56,60),(3,2,47,87,50,84,57,61),(3,2,48,88,51,85,58,62),(3,2,49,90,52,87,59,63),(3,2,50,92,53,89,60,64),(3,2,51,93,54,90,61,65),(3,2,52,95,55,92,62,66),(3,2,53,97,56,93,63,67),(3,2,54,98,57,95,64,69),(3,2,55,100,58,97,65,70),(3,2,56,102,59,98,66,71),(3,2,57,104,60,100,67,72),(3,2,58,106,61,102,68,73),(3,2,59,107,62,103,69,74),(3,2,60,109,63,105,70,76),(3,3,1,22,19,24,19,20),(3,3,2,22,20,25,20,21),(3,3,3,23,22,26,20,21),(3,3,4,23,23,27,21,22),(3,3,5,24,25,28,21,23),(3,3,6,24,26,29,22,23),(3,3,7,25,27,29,23,24),(3,3,8,25,29,30,23,25),(3,3,9,25,30,31,24,25),(3,3,10,26,32,32,24,26),(3,3,11,26,33,33,25,27),(3,3,12,27,35,34,26,27),(3,3,13,27,36,35,26,28),(3,3,14,28,38,36,27,29),(3,3,15,28,39,37,28,29),(3,3,16,29,41,38,28,30),(3,3,17,29,42,39,29,31),(3,3,18,30,44,41,30,32),(3,3,19,30,46,42,30,32),(3,3,20,31,47,43,31,33),(3,3,21,32,49,44,32,34),(3,3,22,32,51,45,33,35),(3,3,23,33,52,46,33,36),(3,3,24,33,54,47,34,36),(3,3,25,34,56,48,35,37),(3,3,26,34,57,49,35,38),(3,3,27,35,59,51,36,39),(3,3,28,35,61,52,37,40),(3,3,29,36,63,53,38,40),(3,3,30,37,64,54,39,41),(3,3,31,37,66,55,39,42),(3,3,32,38,68,57,40,43),(3,3,33,38,70,58,41,44),(3,3,34,39,71,59,42,45),(3,3,35,40,73,60,43,46),(3,3,36,40,75,62,43,47),(3,3,37,41,77,63,44,47),(3,3,38,42,79,64,45,48),(3,3,39,42,81,65,46,49),(3,3,40,43,83,67,47,50),(3,3,41,44,85,68,48,51),(3,3,42,44,87,69,49,52),(3,3,43,45,89,71,49,53),(3,3,44,46,91,72,50,54),(3,3,45,46,93,73,51,55),(3,3,46,47,95,75,52,56),(3,3,47,48,97,76,53,57),(3,3,48,49,99,78,54,58),(3,3,49,49,101,79,55,59),(3,3,50,50,103,80,56,60),(3,3,51,51,105,82,57,61),(3,3,52,51,107,83,58,62),(3,3,53,52,109,85,59,63),(3,3,54,53,111,86,60,64),(3,3,55,54,113,88,61,65),(3,3,56,55,115,89,62,66),(3,3,57,55,118,91,62,67),(3,3,58,56,120,92,63,68),(3,3,59,57,122,94,64,70),(3,3,60,58,124,95,65,71),(3,4,1,23,19,24,19,19),(3,4,2,24,20,25,19,19),(3,4,3,24,22,25,19,20),(3,4,4,25,23,26,19,20),(3,4,5,26,25,27,20,20),(3,4,6,27,26,27,20,21),(3,4,7,28,28,28,20,21),(3,4,8,28,29,29,20,22),(3,4,9,29,31,30,20,22),(3,4,10,30,32,30,20,22),(3,4,11,31,34,31,21,23),(3,4,12,32,36,32,21,23),(3,4,13,33,37,33,21,24),(3,4,14,33,39,33,21,24),(3,4,15,34,40,34,21,25),(3,4,16,35,42,35,22,25),(3,4,17,36,44,36,22,25),(3,4,18,37,45,37,22,26),(3,4,19,38,47,38,22,26),(3,4,20,39,49,38,22,27),(3,4,21,40,51,39,23,27),(3,4,22,41,52,40,23,28),(3,4,23,42,54,41,23,28),(3,4,24,43,56,42,23,29),(3,4,25,44,58,43,24,29),(3,4,26,44,59,44,24,30),(3,4,27,45,61,44,24,30),(3,4,28,46,63,45,24,31),(3,4,29,47,65,46,25,31),(3,4,30,48,67,47,25,32),(3,4,31,49,69,48,25,32),(3,4,32,51,71,49,25,33),(3,4,33,52,72,50,26,33),(3,4,34,53,74,51,26,34),(3,4,35,54,76,52,26,34),(3,4,36,55,78,53,26,35),(3,4,37,56,80,54,27,35),(3,4,38,57,82,55,27,36),(3,4,39,58,84,56,27,37),(3,4,40,59,86,57,28,37),(3,4,41,60,88,58,28,38),(3,4,42,61,90,59,28,38),(3,4,43,63,92,60,28,39),(3,4,44,64,95,61,29,39),(3,4,45,65,97,62,29,40),(3,4,46,66,99,63,29,41),(3,4,47,67,101,64,30,41),(3,4,48,68,103,66,30,42),(3,4,49,70,105,67,30,43),(3,4,50,71,107,68,31,43),(3,4,51,72,110,69,31,44),(3,4,52,73,112,70,31,44),(3,4,53,74,114,71,32,45),(3,4,54,76,116,72,32,46),(3,4,55,77,118,73,32,46),(3,4,56,78,121,75,33,47),(3,4,57,80,123,76,33,48),(3,4,58,81,125,77,33,48),(3,4,59,82,128,78,34,49),(3,4,60,83,130,79,34,50),(3,5,1,22,16,23,21,22),(3,5,2,22,16,23,22,23),(3,5,3,22,16,24,24,25),(3,5,4,22,17,24,25,26),(3,5,5,23,17,24,26,27),(3,5,6,23,17,25,28,29),(3,5,7,23,17,25,29,30),(3,5,8,23,18,26,30,32),(3,5,9,23,18,26,32,33),(3,5,10,23,18,26,33,35),(3,5,11,24,18,27,35,36),(3,5,12,24,19,27,36,38),(3,5,13,24,19,28,37,39),(3,5,14,24,19,28,39,41),(3,5,15,24,19,28,40,42),(3,5,16,24,20,29,42,44),(3,5,17,25,20,29,43,45),(3,5,18,25,20,30,45,47),(3,5,19,25,21,30,46,49),(3,5,20,25,21,31,48,50),(3,5,21,25,21,31,50,52),(3,5,22,26,22,31,51,53),(3,5,23,26,22,32,53,55),(3,5,24,26,22,32,54,57),(3,5,25,26,22,33,56,58),(3,5,26,27,23,33,58,60),(3,5,27,27,23,34,59,62),(3,5,28,27,23,34,61,64),(3,5,29,27,24,35,63,65),(3,5,30,28,24,35,64,67),(3,5,31,28,24,36,66,69),(3,5,32,28,25,36,68,71),(3,5,33,28,25,37,70,72),(3,5,34,29,26,38,71,74),(3,5,35,29,26,38,73,76),(3,5,36,29,26,39,75,78),(3,5,37,29,27,39,77,80),(3,5,38,30,27,40,78,82),(3,5,39,30,27,40,80,84),(3,5,40,30,28,41,82,86),(3,5,41,31,28,41,84,88),(3,5,42,31,29,42,86,89),(3,5,43,31,29,43,88,91),(3,5,44,32,29,43,90,93),(3,5,45,32,30,44,92,95),(3,5,46,32,30,44,93,97),(3,5,47,32,30,45,95,99),(3,5,48,33,31,46,97,101),(3,5,49,33,31,46,99,103),(3,5,50,33,32,47,101,106),(3,5,51,34,32,48,103,108),(3,5,52,34,33,48,105,110),(3,5,53,35,33,49,107,112),(3,5,54,35,33,50,109,114),(3,5,55,35,34,50,111,116),(3,5,56,36,34,51,113,118),(3,5,57,36,35,52,116,120),(3,5,58,36,35,52,118,123),(3,5,59,37,36,53,120,125),(3,5,60,37,36,54,122,127),(4,1,1,20,25,21,20,20),(4,1,2,21,26,22,20,20),(4,1,3,23,27,23,20,21),(4,1,4,24,27,25,20,21),(4,1,5,25,28,26,20,21),(4,1,6,27,29,27,20,21),(4,1,7,28,30,28,21,22),(4,1,8,29,31,29,21,22),(4,1,9,31,31,31,21,22),(4,1,10,32,32,32,21,23),(4,1,11,33,33,33,21,23),(4,1,12,35,34,34,21,23),(4,1,13,36,35,36,21,24),(4,1,14,38,36,37,21,24),(4,1,15,39,37,38,21,24),(4,1,16,41,37,40,21,25),(4,1,17,42,38,41,22,25),(4,1,18,44,39,43,22,25),(4,1,19,45,40,44,22,26),(4,1,20,47,41,45,22,26),(4,1,21,48,42,47,22,26),(4,1,22,50,43,48,22,27),(4,1,23,52,44,50,22,27),(4,1,24,53,45,51,23,28),(4,1,25,55,46,52,23,28),(4,1,26,56,47,54,23,28),(4,1,27,58,48,55,23,29),(4,1,28,60,49,57,23,29),(4,1,29,61,50,58,23,30),(4,1,30,63,51,60,24,30),(4,1,31,65,52,62,24,30),(4,1,32,66,53,63,24,31),(4,1,33,68,54,65,24,31),(4,1,34,70,55,66,24,32),(4,1,35,72,56,68,24,32),(4,1,36,73,58,69,25,33),(4,1,37,75,59,71,25,33),(4,1,38,77,60,73,25,34),(4,1,39,79,61,74,25,34),(4,1,40,81,62,76,25,35),(4,1,41,82,63,78,26,35),(4,1,42,84,64,79,26,35),(4,1,43,86,66,81,26,36),(4,1,44,88,67,83,26,36),(4,1,45,90,68,85,26,37),(4,1,46,92,69,86,27,37),(4,1,47,94,70,88,27,38),(4,1,48,96,72,90,27,38),(4,1,49,98,73,92,27,39),(4,1,50,100,74,93,28,40),(4,1,51,102,75,95,28,40),(4,1,52,104,77,97,28,41),(4,1,53,106,78,99,28,41),(4,1,54,108,79,101,29,42),(4,1,55,110,80,103,29,42),(4,1,56,112,82,104,29,43),(4,1,57,114,83,106,29,43),(4,1,58,116,84,108,30,44),(4,1,59,118,86,110,30,44),(4,1,60,120,87,112,30,45),(4,3,1,17,28,20,20,21),(4,3,2,17,29,21,21,22),(4,3,3,18,31,22,21,22),(4,3,4,18,32,23,22,23),(4,3,5,19,33,24,22,24),(4,3,6,19,35,25,23,24),(4,3,7,20,36,26,24,25),(4,3,8,20,38,27,24,25),(4,3,9,21,39,27,25,26),(4,3,10,21,40,28,25,27),(4,3,11,22,42,29,26,28),(4,3,12,22,43,30,27,28),(4,3,13,23,45,31,27,29),(4,3,14,23,46,32,28,30),(4,3,15,24,48,34,29,30),(4,3,16,24,50,35,29,31),(4,3,17,25,51,36,30,32),(4,3,18,25,53,37,31,33),(4,3,19,26,54,38,31,33),(4,3,20,26,56,39,32,34),(4,3,21,27,57,40,33,35),(4,3,22,27,59,41,33,36),(4,3,23,28,61,42,34,36),(4,3,24,28,62,43,35,37),(4,3,25,29,64,44,36,38),(4,3,26,30,66,46,36,39),(4,3,27,30,68,47,37,40),(4,3,28,31,69,48,38,41),(4,3,29,31,71,49,39,41),(4,3,30,32,73,50,39,42),(4,3,31,33,75,52,40,43),(4,3,32,33,76,53,41,44),(4,3,33,34,78,54,42,45),(4,3,34,34,80,55,43,46),(4,3,35,35,82,57,44,47),(4,3,36,36,84,58,44,48),(4,3,37,36,86,59,45,48),(4,3,38,37,87,60,46,49),(4,3,39,38,89,62,47,50),(4,3,40,38,91,63,48,51),(4,3,41,39,93,64,49,52),(4,3,42,40,95,66,49,53),(4,3,43,40,97,67,50,54),(4,3,44,41,99,68,51,55),(4,3,45,42,101,70,52,56),(4,3,46,42,103,71,53,57),(4,3,47,43,105,72,54,58),(4,3,48,44,107,74,55,59),(4,3,49,45,109,75,56,60),(4,3,50,45,111,77,57,61),(4,3,51,46,113,78,58,62),(4,3,52,47,115,79,59,63),(4,3,53,47,118,81,60,64),(4,3,54,48,120,82,61,65),(4,3,55,49,122,84,61,66),(4,3,56,50,124,85,62,67),(4,3,57,50,126,87,63,68),(4,3,58,51,128,88,64,69),(4,3,59,52,131,90,65,70),(4,3,60,53,133,91,66,72),(4,4,1,18,28,20,20,20),(4,4,2,19,29,21,20,20),(4,4,3,20,31,21,20,21),(4,4,4,20,32,22,20,21),(4,4,5,21,34,23,21,21),(4,4,6,22,35,24,21,22),(4,4,7,23,37,24,21,22),(4,4,8,24,38,25,21,23),(4,4,9,24,40,26,21,23),(4,4,10,25,41,26,21,23),(4,4,11,26,43,27,22,24),(4,4,12,27,44,28,22,24),(4,4,13,28,46,29,22,25),(4,4,14,29,48,30,22,25),(4,4,15,29,49,30,22,25),(4,4,16,30,51,31,23,26),(4,4,17,31,52,32,23,26),(4,4,18,32,54,33,23,27),(4,4,19,33,56,34,23,27),(4,4,20,34,57,35,23,28),(4,4,21,35,59,35,24,28),(4,4,22,36,61,36,24,29),(4,4,23,37,63,37,24,29),(4,4,24,38,64,38,24,30),(4,4,25,39,66,39,25,30),(4,4,26,40,68,40,25,31),(4,4,27,41,70,41,25,31),(4,4,28,42,72,42,25,32),(4,4,29,43,73,43,25,32),(4,4,30,44,75,43,26,33),(4,4,31,45,77,44,26,33),(4,4,32,46,79,45,26,34),(4,4,33,47,81,46,27,34),(4,4,34,48,83,47,27,35),(4,4,35,49,85,48,27,35),(4,4,36,50,87,49,27,36),(4,4,37,51,89,50,28,36),(4,4,38,52,91,51,28,37),(4,4,39,53,93,52,28,38),(4,4,40,54,95,53,28,38),(4,4,41,56,97,54,29,39),(4,4,42,57,99,55,29,39),(4,4,43,58,101,56,29,40),(4,4,44,59,103,57,30,40),(4,4,45,60,105,59,30,41),(4,4,46,61,107,60,30,42),(4,4,47,62,109,61,31,42),(4,4,48,64,112,62,31,43),(4,4,49,65,114,63,31,44),(4,4,50,66,116,64,32,44),(4,4,51,67,118,65,32,45),(4,4,52,68,120,66,32,45),(4,4,53,70,123,67,33,46),(4,4,54,71,125,69,33,47),(4,4,55,72,127,70,33,47),(4,4,56,73,129,71,34,48),(4,4,57,75,132,72,34,49),(4,4,58,76,134,73,34,49),(4,4,59,77,136,74,35,50),(4,4,60,79,139,76,35,51),(4,5,1,17,25,19,22,23),(4,5,2,17,25,19,23,24),(4,5,3,17,25,20,25,26),(4,5,4,17,26,20,26,27),(4,5,5,18,26,20,27,28),(4,5,6,18,26,21,29,30),(4,5,7,18,26,21,30,31),(4,5,8,18,26,22,31,33),(4,5,9,18,27,22,33,34),(4,5,10,19,27,22,34,36),(4,5,11,19,27,23,36,37),(4,5,12,19,27,23,37,39),(4,5,13,19,28,24,38,40),(4,5,14,19,28,24,40,42),(4,5,15,19,28,25,41,43),(4,5,16,20,28,25,43,45),(4,5,17,20,29,25,44,46),(4,5,18,20,29,26,46,48),(4,5,19,20,29,26,47,49),(4,5,20,21,30,27,49,51),(4,5,21,21,30,27,51,53),(4,5,22,21,30,28,52,54),(4,5,23,21,30,28,54,56),(4,5,24,21,31,29,55,58),(4,5,25,22,31,29,57,59),(4,5,26,22,31,30,59,61),(4,5,27,22,32,30,60,63),(4,5,28,22,32,31,62,65),(4,5,29,23,32,31,64,66),(4,5,30,23,33,32,65,68),(4,5,31,23,33,32,67,70),(4,5,32,23,33,33,69,72),(4,5,33,24,34,33,70,73),(4,5,34,24,34,34,72,75),(4,5,35,24,34,34,74,77),(4,5,36,24,35,35,76,79),(4,5,37,25,35,35,78,81),(4,5,38,25,35,36,79,83),(4,5,39,25,36,37,81,85),(4,5,40,26,36,37,83,87),(4,5,41,26,37,38,85,88),(4,5,42,26,37,38,87,90),(4,5,43,27,37,39,89,92),(4,5,44,27,38,39,91,94),(4,5,45,27,38,40,92,96),(4,5,46,27,39,41,94,98),(4,5,47,28,39,41,96,100),(4,5,48,28,39,42,98,102),(4,5,49,28,40,43,100,104),(4,5,50,29,40,43,102,106),(4,5,51,29,41,44,104,109),(4,5,52,29,41,44,106,111),(4,5,53,30,42,45,108,113),(4,5,54,30,42,46,110,115),(4,5,55,30,43,46,112,117),(4,5,56,31,43,47,114,119),(4,5,57,31,43,48,117,121),(4,5,58,31,44,48,119,124),(4,5,59,32,44,49,121,126),(4,5,60,32,45,50,123,128),(4,11,1,18,25,19,22,22),(4,11,2,19,25,20,23,23),(4,11,3,19,26,20,24,24),(4,11,4,20,26,21,25,26),(4,11,5,20,27,22,26,27),(4,11,6,21,27,22,27,28),(4,11,7,21,28,23,28,29),(4,11,8,22,28,24,29,30),(4,11,9,23,29,24,30,32),(4,11,10,23,29,25,32,33),(4,11,11,24,30,26,33,34),(4,11,12,24,31,26,34,35),(4,11,13,25,31,27,35,37),(4,11,14,26,32,28,36,38),(4,11,15,26,32,29,37,39),(4,11,16,27,33,29,38,41),(4,11,17,28,33,30,40,42),(4,11,18,28,34,31,41,43),(4,11,19,29,35,32,42,45),(4,11,20,30,35,32,43,46),(4,11,21,30,36,33,45,48),(4,11,22,31,36,34,46,49),(4,11,23,32,37,35,47,51),(4,11,24,32,38,36,48,52),(4,11,25,33,38,36,50,53),(4,11,26,34,39,37,51,55),(4,11,27,35,40,38,52,56),(4,11,28,35,40,39,54,58),(4,11,29,36,41,40,55,59),(4,11,30,37,42,41,56,61),(4,11,31,38,42,42,58,62),(4,11,32,38,43,42,59,64),(4,11,33,39,44,43,60,66),(4,11,34,40,44,44,62,67),(4,11,35,41,45,45,63,69),(4,11,36,42,46,46,65,70),(4,11,37,42,47,47,66,72),(4,11,38,43,47,48,67,74),(4,11,39,44,48,49,69,75),(4,11,40,45,49,50,70,77),(4,11,41,46,50,51,72,79),(4,11,42,46,50,52,73,80),(4,11,43,47,51,53,75,82),(4,11,44,48,52,54,76,84),(4,11,45,49,53,55,78,85),(4,11,46,50,54,56,79,87),(4,11,47,51,54,57,81,89),(4,11,48,52,55,58,83,91),(4,11,49,53,56,59,84,93),(4,11,50,53,57,60,86,94),(4,11,51,54,58,61,87,96),(4,11,52,55,59,62,89,98),(4,11,53,56,59,63,91,100),(4,11,54,57,60,64,92,102),(4,11,55,58,61,65,94,103),(4,11,56,59,62,66,95,105),(4,11,57,60,63,67,97,107),(4,11,58,61,64,68,99,109),(4,11,59,62,65,69,101,111),(4,11,60,63,66,70,102,113),(5,1,1,22,18,23,18,25),(5,1,2,23,19,24,18,25),(5,1,3,25,20,25,18,26),(5,1,4,26,20,26,18,26),(5,1,5,27,21,28,18,26),(5,1,6,29,22,29,18,26),(5,1,7,30,23,30,19,27),(5,1,8,31,24,31,19,27),(5,1,9,33,25,33,19,27),(5,1,10,34,25,34,19,28),(5,1,11,35,26,35,19,28),(5,1,12,37,27,36,19,28),(5,1,13,38,28,38,19,28),(5,1,14,40,29,39,19,29),(5,1,15,41,30,40,19,29),(5,1,16,43,31,42,20,29),(5,1,17,44,32,43,20,30),(5,1,18,46,33,44,20,30),(5,1,19,47,34,46,20,31),(5,1,20,49,34,47,20,31),(5,1,21,50,35,49,20,31),(5,1,22,52,36,50,20,32),(5,1,23,53,37,51,21,32),(5,1,24,55,38,53,21,32),(5,1,25,57,39,54,21,33),(5,1,26,58,40,56,21,33),(5,1,27,60,41,57,21,34),(5,1,28,62,42,59,21,34),(5,1,29,63,43,60,21,34),(5,1,30,65,44,62,22,35),(5,1,31,67,46,63,22,35),(5,1,32,68,47,65,22,36),(5,1,33,70,48,67,22,36),(5,1,34,72,49,68,22,36),(5,1,35,74,50,70,23,37),(5,1,36,75,51,71,23,37),(5,1,37,77,52,73,23,38),(5,1,38,79,53,75,23,38),(5,1,39,81,54,76,23,39),(5,1,40,83,55,78,24,39),(5,1,41,84,57,80,24,40),(5,1,42,86,58,81,24,40),(5,1,43,88,59,83,24,41),(5,1,44,90,60,85,24,41),(5,1,45,92,61,86,25,42),(5,1,46,94,62,88,25,42),(5,1,47,96,64,90,25,43),(5,1,48,98,65,92,25,43),(5,1,49,100,66,93,25,44),(5,1,50,102,67,95,26,44),(5,1,51,104,69,97,26,45),(5,1,52,106,70,99,26,45),(5,1,53,108,71,101,26,46),(5,1,54,110,72,103,27,46),(5,1,55,112,74,104,27,47),(5,1,56,114,75,106,27,48),(5,1,57,116,76,108,27,48),(5,1,58,118,78,110,28,49),(5,1,59,120,79,112,28,49),(5,1,60,122,80,114,28,50),(5,4,1,20,21,22,18,25),(5,4,2,21,22,23,18,25),(5,4,3,22,24,23,18,26),(5,4,4,22,25,24,18,26),(5,4,5,23,27,25,19,26),(5,4,6,24,28,25,19,27),(5,4,7,25,30,26,19,27),(5,4,8,25,31,27,19,27),(5,4,9,26,33,28,19,28),(5,4,10,27,34,28,19,28),(5,4,11,28,36,29,20,29),(5,4,12,29,38,30,20,29),(5,4,13,30,39,31,20,29),(5,4,14,31,41,32,20,30),(5,4,15,31,42,32,20,30),(5,4,16,32,44,33,21,31),(5,4,17,33,46,34,21,31),(5,4,18,34,47,35,21,32),(5,4,19,35,49,36,21,32),(5,4,20,36,51,36,21,32),(5,4,21,37,52,37,22,33),(5,4,22,38,54,38,22,33),(5,4,23,39,56,39,22,34),(5,4,24,40,58,40,22,34),(5,4,25,41,60,41,23,35),(5,4,26,42,61,42,23,35),(5,4,27,43,63,43,23,36),(5,4,28,44,65,44,23,36),(5,4,29,45,67,44,24,37),(5,4,30,46,69,45,24,37),(5,4,31,47,71,46,24,38),(5,4,32,48,72,47,24,38),(5,4,33,49,74,48,25,39),(5,4,34,50,76,49,25,39),(5,4,35,51,78,50,25,40),(5,4,36,52,80,51,25,41),(5,4,37,53,82,52,26,41),(5,4,38,54,84,53,26,42),(5,4,39,55,86,54,26,42),(5,4,40,56,88,55,27,43),(5,4,41,57,90,56,27,43),(5,4,42,59,92,57,27,44),(5,4,43,60,94,58,27,45),(5,4,44,61,96,59,28,45),(5,4,45,62,99,60,28,46),(5,4,46,63,101,61,28,46),(5,4,47,64,103,63,29,47),(5,4,48,66,105,64,29,48),(5,4,49,67,107,65,29,48),(5,4,50,68,109,66,30,49),(5,4,51,69,111,67,30,50),(5,4,52,70,114,68,30,50),(5,4,53,72,116,69,31,51),(5,4,54,73,118,70,31,52),(5,4,55,74,120,72,31,52),(5,4,56,75,123,73,32,53),(5,4,57,77,125,74,32,54),(5,4,58,78,127,75,32,54),(5,4,59,79,130,76,33,55),(5,4,60,81,132,77,33,56),(5,5,1,19,18,21,20,28),(5,5,2,19,18,21,21,29),(5,5,3,19,18,22,23,31),(5,5,4,19,19,22,24,32),(5,5,5,20,19,22,25,33),(5,5,6,20,19,23,27,35),(5,5,7,20,19,23,28,36),(5,5,8,20,20,24,29,38),(5,5,9,20,20,24,31,39),(5,5,10,20,20,24,32,40),(5,5,11,21,20,25,34,42),(5,5,12,21,21,25,35,43),(5,5,13,21,21,26,37,45),(5,5,14,21,21,26,38,46),(5,5,15,21,21,26,39,48),(5,5,16,22,22,27,41,50),(5,5,17,22,22,27,42,51),(5,5,18,22,22,28,44,53),(5,5,19,22,23,28,46,54),(5,5,20,22,23,29,47,56),(5,5,21,23,23,29,49,57),(5,5,22,23,23,30,50,59),(5,5,23,23,24,30,52,61),(5,5,24,23,24,31,53,62),(5,5,25,24,24,31,55,64),(5,5,26,24,25,32,57,66),(5,5,27,24,25,32,58,68),(5,5,28,24,25,33,60,69),(5,5,29,25,26,33,62,71),(5,5,30,25,26,34,63,73),(5,5,31,25,26,34,65,75),(5,5,32,25,27,35,67,76),(5,5,33,26,27,35,69,78),(5,5,34,26,27,36,70,80),(5,5,35,26,28,36,72,82),(5,5,36,26,28,37,74,84),(5,5,37,27,28,37,76,86),(5,5,38,27,29,38,77,87),(5,5,39,27,29,38,79,89),(5,5,40,28,30,39,81,91),(5,5,41,28,30,40,83,93),(5,5,42,28,30,40,85,95),(5,5,43,28,31,41,87,97),(5,5,44,29,31,41,89,99),(5,5,45,29,32,42,91,101),(5,5,46,29,32,43,92,103),(5,5,47,30,32,43,94,105),(5,5,48,30,33,44,96,107),(5,5,49,30,33,44,98,109),(5,5,50,31,34,45,100,111),(5,5,51,31,34,46,102,113),(5,5,52,31,35,46,104,115),(5,5,53,32,35,47,106,118),(5,5,54,32,35,48,108,120),(5,5,55,32,36,48,110,122),(5,5,56,33,36,49,113,124),(5,5,57,33,37,50,115,126),(5,5,58,33,37,50,117,128),(5,5,59,34,38,51,119,131),(5,5,60,34,38,52,121,133),(5,8,1,19,18,21,21,27),(5,8,2,19,18,21,22,28),(5,8,3,19,18,22,24,30),(5,8,4,19,18,22,25,31),(5,8,5,19,19,22,26,32),(5,8,6,19,19,22,28,34),(5,8,7,20,19,23,29,35),(5,8,8,20,19,23,31,36),(5,8,9,20,19,23,32,38),(5,8,10,20,19,24,34,39),(5,8,11,20,20,24,35,40),(5,8,12,20,20,24,37,42),(5,8,13,20,20,25,38,43),(5,8,14,20,20,25,40,45),(5,8,15,20,20,25,41,46),(5,8,16,21,21,26,43,48),(5,8,17,21,21,26,44,49),(5,8,18,21,21,26,46,51),(5,8,19,21,21,27,48,52),(5,8,20,21,21,27,49,54),(5,8,21,21,22,27,51,55),(5,8,22,21,22,28,52,57),(5,8,23,21,22,28,54,58),(5,8,24,22,22,29,56,60),(5,8,25,22,23,29,57,62),(5,8,26,22,23,29,59,63),(5,8,27,22,23,30,61,65),(5,8,28,22,23,30,63,67),(5,8,29,22,24,31,64,68),(5,8,30,23,24,31,66,70),(5,8,31,23,24,31,68,72),(5,8,32,23,24,32,70,73),(5,8,33,23,25,32,72,75),(5,8,34,23,25,33,73,77),(5,8,35,24,25,33,75,79),(5,8,36,24,25,34,77,80),(5,8,37,24,26,34,79,82),(5,8,38,24,26,35,81,84),(5,8,39,24,26,35,83,86),(5,8,40,24,27,35,85,88),(5,8,41,25,27,36,87,90),(5,8,42,25,27,36,89,91),(5,8,43,25,27,37,90,93),(5,8,44,25,28,37,92,95),(5,8,45,26,28,38,94,97),(5,8,46,26,28,38,96,99),(5,8,47,26,29,39,98,101),(5,8,48,26,29,39,100,103),(5,8,49,26,29,40,103,105),(5,8,50,27,30,40,105,107),(5,8,51,27,30,41,107,109),(5,8,52,27,30,42,109,111),(5,8,53,27,31,42,111,113),(5,8,54,28,31,43,113,115),(5,8,55,28,31,43,115,117),(5,8,56,28,32,44,117,119),(5,8,57,28,32,44,119,121),(5,8,58,29,32,45,122,123),(5,8,59,29,33,45,124,126),(5,8,60,29,33,46,126,128),(5,9,1,19,18,22,20,27),(5,9,2,19,18,23,21,28),(5,9,3,20,19,23,22,29),(5,9,4,20,19,24,24,30),(5,9,5,20,19,24,25,32),(5,9,6,20,20,25,26,33),(5,9,7,21,20,25,27,34),(5,9,8,21,21,26,28,35),(5,9,9,21,21,26,30,36),(5,9,10,22,21,27,31,38),(5,9,11,22,22,28,32,39),(5,9,12,22,22,28,34,40),(5,9,13,23,23,29,35,41),(5,9,14,23,23,30,36,43),(5,9,15,23,24,30,37,44),(5,9,16,24,24,31,39,45),(5,9,17,24,24,31,40,47),(5,9,18,24,25,32,42,48),(5,9,19,25,25,33,43,49),(5,9,20,25,26,33,44,51),(5,9,21,26,26,34,46,52),(5,9,22,26,27,35,47,53),(5,9,23,26,27,36,49,55),(5,9,24,27,28,36,50,56),(5,9,25,27,28,37,52,58),(5,9,26,27,29,38,53,59),(5,9,27,28,29,38,55,60),(5,9,28,28,30,39,56,62),(5,9,29,29,30,40,58,63),(5,9,30,29,31,41,59,65),(5,9,31,30,31,41,61,66),(5,9,32,30,32,42,62,68),(5,9,33,30,32,43,64,69),(5,9,34,31,33,44,65,71),(5,9,35,31,33,45,67,73),(5,9,36,32,34,45,69,74),(5,9,37,32,34,46,70,76),(5,9,38,33,35,47,72,77),(5,9,39,33,36,48,73,79),(5,9,40,34,36,49,75,81),(5,9,41,34,37,49,77,82),(5,9,42,35,37,50,78,84),(5,9,43,35,38,51,80,86),(5,9,44,36,39,52,82,87),(5,9,45,36,39,53,84,89),(5,9,46,37,40,54,85,91),(5,9,47,37,40,55,87,92),(5,9,48,38,41,55,89,94),(5,9,49,38,42,56,91,96),(5,9,50,39,42,57,92,98),(5,9,51,39,43,58,94,100),(5,9,52,40,44,59,96,101),(5,9,53,40,44,60,98,103),(5,9,54,41,45,61,100,105),(5,9,55,41,45,62,102,107),(5,9,56,42,46,63,103,109),(5,9,57,42,47,64,105,111),(5,9,58,43,47,65,107,112),(5,9,59,43,48,66,109,114),(5,9,60,44,49,67,111,116),(6,1,1,28,15,24,15,22),(6,1,2,29,16,25,15,22),(6,1,3,31,17,26,15,23),(6,1,4,32,17,27,15,23),(6,1,5,33,18,29,15,23),(6,1,6,34,19,30,15,23),(6,1,7,36,20,31,16,24),(6,1,8,37,21,32,16,24),(6,1,9,38,22,34,16,24),(6,1,10,40,22,35,16,25),(6,1,11,41,23,36,16,25),(6,1,12,43,24,37,16,25),(6,1,13,44,25,39,16,26),(6,1,14,46,26,40,16,26),(6,1,15,47,27,41,17,26),(6,1,16,48,28,43,17,27),(6,1,17,50,29,44,17,27),(6,1,18,51,30,45,17,27),(6,1,19,53,31,47,17,28),(6,1,20,54,32,48,17,28),(6,1,21,56,33,50,17,28),(6,1,22,58,34,51,18,29),(6,1,23,59,35,52,18,29),(6,1,24,61,36,54,18,30),(6,1,25,62,37,55,18,30),(6,1,26,64,38,57,18,30),(6,1,27,66,39,58,18,31),(6,1,28,67,40,60,18,31),(6,1,29,69,41,61,19,32),(6,1,30,71,42,63,19,32),(6,1,31,72,43,64,19,32),(6,1,32,74,44,66,19,33),(6,1,33,76,45,67,19,33),(6,1,34,77,46,69,20,34),(6,1,35,79,47,71,20,34),(6,1,36,81,48,72,20,35),(6,1,37,83,49,74,20,35),(6,1,38,85,50,76,20,35),(6,1,39,86,51,77,21,36),(6,1,40,88,53,79,21,36),(6,1,41,90,54,81,21,37),(6,1,42,92,55,82,21,37),(6,1,43,94,56,84,21,38),(6,1,44,96,57,86,22,38),(6,1,45,98,58,87,22,39),(6,1,46,99,60,89,22,39),(6,1,47,101,61,91,22,40),(6,1,48,103,62,93,22,40),(6,1,49,105,63,94,23,41),(6,1,50,107,65,96,23,41),(6,1,51,109,66,98,23,42),(6,1,52,111,67,100,23,42),(6,1,53,113,68,102,24,43),(6,1,54,115,70,104,24,44),(6,1,55,117,71,105,24,44),(6,1,56,119,72,107,24,45),(6,1,57,122,73,109,25,45),(6,1,58,124,75,111,25,46),(6,1,59,126,76,113,25,46),(6,1,60,128,77,115,25,47),(6,3,1,25,18,23,15,23),(6,3,2,25,19,24,16,24),(6,3,3,26,21,25,16,24),(6,3,4,26,22,26,17,25),(6,3,5,27,24,27,17,25),(6,3,6,27,25,28,18,26),(6,3,7,28,26,28,19,27),(6,3,8,28,28,29,19,27),(6,3,9,28,29,30,20,28),(6,3,10,29,31,31,20,29),(6,3,11,29,32,32,21,29),(6,3,12,30,34,33,22,30),(6,3,13,30,35,34,22,31),(6,3,14,31,37,35,23,32),(6,3,15,31,38,36,24,32),(6,3,16,32,40,37,24,33),(6,3,17,32,41,39,25,34),(6,3,18,33,43,40,26,35),(6,3,19,33,45,41,27,35),(6,3,20,34,46,42,27,36),(6,3,21,34,48,43,28,37),(6,3,22,35,50,44,29,38),(6,3,23,35,51,45,29,38),(6,3,24,36,53,46,30,39),(6,3,25,37,55,47,31,40),(6,3,26,37,56,48,32,41),(6,3,27,38,58,50,32,42),(6,3,28,38,60,51,33,42),(6,3,29,39,62,52,34,43),(6,3,30,39,63,53,35,44),(6,3,31,40,65,54,36,45),(6,3,32,41,67,56,36,46),(6,3,33,41,69,57,37,47),(6,3,34,42,71,58,38,48),(6,3,35,43,72,59,39,48),(6,3,36,43,74,61,40,49),(6,3,37,44,76,62,40,50),(6,3,38,45,78,63,41,51),(6,3,39,45,80,64,42,52),(6,3,40,46,82,66,43,53),(6,3,41,47,84,67,44,54),(6,3,42,47,86,68,45,55),(6,3,43,48,88,70,46,56),(6,3,44,49,90,71,46,57),(6,3,45,49,92,72,47,58),(6,3,46,50,94,74,48,59),(6,3,47,51,96,75,49,60),(6,3,48,51,98,77,50,61),(6,3,49,52,100,78,51,62),(6,3,50,53,102,79,52,63),(6,3,51,54,104,81,53,64),(6,3,52,54,106,82,54,65),(6,3,53,55,108,84,55,66),(6,3,54,56,110,85,56,67),(6,3,55,57,112,87,57,68),(6,3,56,57,114,88,58,69),(6,3,57,58,117,90,59,70),(6,3,58,59,119,91,60,71),(6,3,59,60,121,93,61,72),(6,3,60,61,123,94,62,74),(6,7,1,26,15,23,16,24),(6,7,2,27,15,24,17,25),(6,7,3,28,16,25,18,26),(6,7,4,28,16,26,19,27),(6,7,5,29,17,27,20,28),(6,7,6,30,17,28,21,29),(6,7,7,31,18,29,22,30),(6,7,8,32,18,30,23,31),(6,7,9,33,19,31,24,32),(6,7,10,34,19,32,25,33),(6,7,11,35,20,33,26,35),(6,7,12,35,20,34,27,36),(6,7,13,36,21,35,28,37),(6,7,14,37,21,36,29,38),(6,7,15,38,22,37,30,39),(6,7,16,39,22,39,31,40),(6,7,17,40,23,40,32,42),(6,7,18,41,23,41,33,43),(6,7,19,42,24,42,34,44),(6,7,20,43,24,43,35,45),(6,7,21,44,25,44,36,46),(6,7,22,45,25,45,37,48),(6,7,23,46,26,47,38,49),(6,7,24,47,27,48,40,50),(6,7,25,48,27,49,41,51),(6,7,26,49,28,50,42,53),(6,7,27,51,28,52,43,54),(6,7,28,52,29,53,44,55),(6,7,29,53,29,54,45,57),(6,7,30,54,30,55,47,58),(6,7,31,55,31,57,48,59),(6,7,32,56,31,58,49,61),(6,7,33,57,32,59,50,62),(6,7,34,58,33,61,51,64),(6,7,35,60,33,62,53,65),(6,7,36,61,34,63,54,66),(6,7,37,62,34,65,55,68),(6,7,38,63,35,66,57,69),(6,7,39,64,36,67,58,71),(6,7,40,66,36,69,59,72),(6,7,41,67,37,70,60,74),(6,7,42,68,38,72,62,75),(6,7,43,69,38,73,63,77),(6,7,44,70,39,74,64,78),(6,7,45,72,40,76,66,80),(6,7,46,73,41,77,67,81),(6,7,47,74,41,79,69,83),(6,7,48,76,42,80,70,84),(6,7,49,77,43,82,71,86),(6,7,50,78,43,83,73,88),(6,7,51,80,44,85,74,89),(6,7,52,81,45,86,76,91),(6,7,53,82,46,88,77,92),(6,7,54,84,46,90,78,94),(6,7,55,85,47,91,80,96),(6,7,56,86,48,93,81,97),(6,7,57,88,49,94,83,99),(6,7,58,89,49,96,84,101),(6,7,59,91,50,97,86,102),(6,7,60,92,51,99,87,104),(6,11,1,26,15,22,17,24),(6,11,2,27,16,23,18,25),(6,11,3,27,16,23,19,26),(6,11,4,28,17,24,20,27),(6,11,5,28,17,25,21,29),(6,11,6,29,18,25,22,30),(6,11,7,29,18,26,23,31),(6,11,8,30,19,27,24,32),(6,11,9,30,19,27,26,34),(6,11,10,31,20,28,27,35),(6,11,11,32,20,29,28,36),(6,11,12,32,21,29,29,37),(6,11,13,33,21,30,30,39),(6,11,14,33,22,31,31,40),(6,11,15,34,23,32,32,41),(6,11,16,35,23,32,34,43),(6,11,17,35,24,33,35,44),(6,11,18,36,24,34,36,45),(6,11,19,37,25,35,37,47),(6,11,20,37,26,35,39,48),(6,11,21,38,26,36,40,50),(6,11,22,39,27,37,41,51),(6,11,23,39,28,38,42,52),(6,11,24,40,28,39,44,54),(6,11,25,41,29,39,45,55),(6,11,26,41,30,40,46,57),(6,11,27,42,30,41,47,58),(6,11,28,43,31,42,49,60),(6,11,29,44,32,43,50,61),(6,11,30,44,32,44,52,63),(6,11,31,45,33,44,53,64),(6,11,32,46,34,45,54,66),(6,11,33,47,34,46,56,67),(6,11,34,47,35,47,57,69),(6,11,35,48,36,48,58,71),(6,11,36,49,36,49,60,72),(6,11,37,50,37,50,61,74),(6,11,38,51,38,51,63,76),(6,11,39,52,39,52,64,77),(6,11,40,52,39,53,66,79),(6,11,41,53,40,54,67,81),(6,11,42,54,41,55,69,82),(6,11,43,55,42,56,70,84),(6,11,44,56,43,57,72,86),(6,11,45,57,43,57,73,87),(6,11,46,57,44,58,75,89),(6,11,47,58,45,60,76,91),(6,11,48,59,46,61,78,93),(6,11,49,60,47,62,79,94),(6,11,50,61,47,63,81,96),(6,11,51,62,48,64,83,98),(6,11,52,63,49,65,84,100),(6,11,53,64,50,66,86,102),(6,11,54,65,51,67,87,104),(6,11,55,66,51,68,89,105),(6,11,56,67,52,69,91,107),(6,11,57,68,53,70,92,109),(6,11,58,69,54,71,94,111),(6,11,59,70,55,72,96,113),(6,11,60,71,56,73,97,115),(7,1,1,18,23,21,24,20),(7,1,2,19,24,22,24,20),(7,1,3,21,25,23,24,21),(7,1,4,22,25,25,24,21),(7,1,5,23,26,26,24,21),(7,1,6,25,27,27,24,21),(7,1,7,26,28,28,24,22),(7,1,8,27,29,29,25,22),(7,1,9,29,29,31,25,22),(7,1,10,30,30,32,25,23),(7,1,11,32,31,33,25,23),(7,1,12,33,32,34,25,23),(7,1,13,34,33,36,25,24),(7,1,14,36,34,37,25,24),(7,1,15,37,35,38,25,24),(7,1,16,39,36,40,25,25),(7,1,17,40,36,41,25,25),(7,1,18,42,37,43,26,25),(7,1,19,43,38,44,26,26),(7,1,20,45,39,45,26,26),(7,1,21,47,40,47,26,26),(7,1,22,48,41,48,26,27),(7,1,23,50,42,50,26,27),(7,1,24,51,43,51,26,28),(7,1,25,53,44,52,27,28),(7,1,26,55,45,54,27,28),(7,1,27,56,46,55,27,29),(7,1,28,58,47,57,27,29),(7,1,29,59,48,58,27,30),(7,1,30,61,49,60,27,30),(7,1,31,63,50,62,27,30),(7,1,32,65,51,63,28,31),(7,1,33,66,52,65,28,31),(7,1,34,68,53,66,28,32),(7,1,35,70,55,68,28,32),(7,1,36,72,56,69,28,33),(7,1,37,73,57,71,29,33),(7,1,38,75,58,73,29,34),(7,1,39,77,59,74,29,34),(7,1,40,79,60,76,29,35),(7,1,41,81,61,78,29,35),(7,1,42,82,62,79,30,35),(7,1,43,84,64,81,30,36),(7,1,44,86,65,83,30,36),(7,1,45,88,66,85,30,37),(7,1,46,90,67,86,30,37),(7,1,47,92,68,88,31,38),(7,1,48,94,70,90,31,38),(7,1,49,96,71,92,31,39),(7,1,50,98,72,93,31,40),(7,1,51,100,73,95,32,40),(7,1,52,102,75,97,32,41),(7,1,53,104,76,99,32,41),(7,1,54,106,77,101,32,42),(7,1,55,108,78,103,33,42),(7,1,56,110,80,104,33,43),(7,1,57,112,81,106,33,43),(7,1,58,114,82,108,33,44),(7,1,59,116,84,110,34,44),(7,1,60,118,85,112,34,45),(7,4,1,16,26,20,24,20),(7,4,2,17,27,21,24,20),(7,4,3,18,29,21,24,21),(7,4,4,18,30,22,24,21),(7,4,5,19,32,23,25,21),(7,4,6,20,33,24,25,22),(7,4,7,21,35,24,25,22),(7,4,8,22,36,25,25,23),(7,4,9,22,38,26,25,23),(7,4,10,23,39,26,25,23),(7,4,11,24,41,27,25,24),(7,4,12,25,42,28,26,24),(7,4,13,26,44,29,26,25),(7,4,14,27,46,30,26,25),(7,4,15,28,47,30,26,25),(7,4,16,28,49,31,26,26),(7,4,17,29,50,32,27,26),(7,4,18,30,52,33,27,27),(7,4,19,31,54,34,27,27),(7,4,20,32,56,35,27,28),(7,4,21,33,57,35,27,28),(7,4,22,34,59,36,28,29),(7,4,23,35,61,37,28,29),(7,4,24,36,62,38,28,30),(7,4,25,37,64,39,28,30),(7,4,26,38,66,40,29,31),(7,4,27,39,68,41,29,31),(7,4,28,40,70,42,29,32),(7,4,29,41,72,43,29,32),(7,4,30,42,73,43,29,33),(7,4,31,43,75,44,30,33),(7,4,32,44,77,45,30,34),(7,4,33,45,79,46,30,34),(7,4,34,46,81,47,31,35),(7,4,35,47,83,48,31,35),(7,4,36,48,85,49,31,36),(7,4,37,49,87,50,31,36),(7,4,38,50,89,51,32,37),(7,4,39,51,91,52,32,38),(7,4,40,53,93,53,32,38),(7,4,41,54,95,54,33,39),(7,4,42,55,97,55,33,39),(7,4,43,56,99,56,33,40),(7,4,44,57,101,57,33,40),(7,4,45,58,103,59,34,41),(7,4,46,59,105,60,34,42),(7,4,47,61,107,61,34,42),(7,4,48,62,110,62,35,43),(7,4,49,63,112,63,35,44),(7,4,50,64,114,64,35,44),(7,4,51,65,116,65,36,45),(7,4,52,67,118,66,36,45),(7,4,53,68,121,67,36,46),(7,4,54,69,123,69,37,47),(7,4,55,70,125,70,37,47),(7,4,56,72,127,71,37,48),(7,4,57,73,130,72,38,49),(7,4,58,74,132,73,38,49),(7,4,59,75,134,74,39,50),(7,4,60,77,137,76,39,51),(7,8,1,15,23,19,27,22),(7,8,2,15,23,19,28,23),(7,8,3,15,23,20,30,25),(7,8,4,15,23,20,31,26),(7,8,5,15,24,20,32,27),(7,8,6,15,24,20,34,29),(7,8,7,16,24,21,35,30),(7,8,8,16,24,21,37,31),(7,8,9,16,24,21,38,33),(7,8,10,16,24,22,40,34),(7,8,11,16,25,22,41,36),(7,8,12,16,25,22,42,37),(7,8,13,16,25,23,44,38),(7,8,14,16,25,23,45,40),(7,8,15,17,25,23,47,41),(7,8,16,17,25,24,49,43),(7,8,17,17,26,24,50,44),(7,8,18,17,26,24,52,46),(7,8,19,17,26,25,53,47),(7,8,20,17,26,25,55,49),(7,8,21,17,26,26,57,51),(7,8,22,18,27,26,58,52),(7,8,23,18,27,26,60,54),(7,8,24,18,27,27,61,55),(7,8,25,18,27,27,63,57),(7,8,26,18,28,27,65,59),(7,8,27,18,28,28,67,60),(7,8,28,18,28,28,68,62),(7,8,29,19,28,29,70,64),(7,8,30,19,29,29,72,65),(7,8,31,19,29,30,74,67),(7,8,32,19,29,30,75,69),(7,8,33,19,29,30,77,70),(7,8,34,20,30,31,79,72),(7,8,35,20,30,31,81,74),(7,8,36,20,30,32,83,76),(7,8,37,20,30,32,85,78),(7,8,38,20,31,33,86,79),(7,8,39,21,31,33,88,81),(7,8,40,21,31,34,90,83),(7,8,41,21,32,34,92,85),(7,8,42,21,32,35,94,87),(7,8,43,21,32,35,96,89),(7,8,44,22,32,36,98,91),(7,8,45,22,33,36,100,92),(7,8,46,22,33,37,102,94),(7,8,47,22,33,37,104,96),(7,8,48,22,34,38,106,98),(7,8,49,23,34,38,108,100),(7,8,50,23,34,39,110,102),(7,8,51,23,35,39,112,104),(7,8,52,23,35,40,114,106),(7,8,53,24,35,40,117,108),(7,8,54,24,36,41,119,110),(7,8,55,24,36,41,121,112),(7,8,56,24,37,42,123,114),(7,8,57,25,37,42,125,117),(7,8,58,25,37,43,127,119),(7,8,59,25,38,43,130,121),(7,8,60,25,38,44,132,123),(7,9,1,15,23,20,26,22),(7,9,2,15,23,21,27,23),(7,9,3,16,24,21,28,24),(7,9,4,16,24,22,29,25),(7,9,5,16,24,22,31,27),(7,9,6,17,25,23,32,28),(7,9,7,17,25,23,33,29),(7,9,8,17,26,24,34,30),(7,9,9,17,26,25,36,31),(7,9,10,18,26,25,37,33),(7,9,11,18,27,26,38,34),(7,9,12,18,27,26,39,35),(7,9,13,19,28,27,41,36),(7,9,14,19,28,28,42,38),(7,9,15,20,28,28,43,39),(7,9,16,20,29,29,45,40),(7,9,17,20,29,30,46,42),(7,9,18,21,30,30,47,43),(7,9,19,21,30,31,49,44),(7,9,20,21,31,32,50,46),(7,9,21,22,31,32,51,47),(7,9,22,22,31,33,53,49),(7,9,23,23,32,34,54,50),(7,9,24,23,32,34,56,51),(7,9,25,23,33,35,57,53),(7,9,26,24,33,36,59,54),(7,9,27,24,34,37,60,56),(7,9,28,25,34,37,62,57),(7,9,29,25,35,38,63,59),(7,9,30,25,35,39,65,60),(7,9,31,26,36,40,66,62),(7,9,32,26,36,40,68,63),(7,9,33,27,37,41,69,65),(7,9,34,27,38,42,71,66),(7,9,35,28,38,43,73,68),(7,9,36,28,39,43,74,69),(7,9,37,28,39,44,76,71),(7,9,38,29,40,45,77,73),(7,9,39,29,40,46,79,74),(7,9,40,30,41,47,81,76),(7,9,41,30,41,48,82,78),(7,9,42,31,42,48,84,79),(7,9,43,31,43,49,86,81),(7,9,44,32,43,50,88,83),(7,9,45,32,44,51,89,84),(7,9,46,33,44,52,91,86),(7,9,47,33,45,53,93,88),(7,9,48,34,46,54,95,89),(7,9,49,34,46,54,96,91),(7,9,50,35,47,55,98,93),(7,9,51,35,48,56,100,95),(7,9,52,36,48,57,102,97),(7,9,53,36,49,58,104,98),(7,9,54,37,50,59,105,100),(7,9,55,37,50,60,107,102),(7,9,56,38,51,61,109,104),(7,9,57,38,52,62,111,106),(7,9,58,39,52,63,113,108),(7,9,59,40,53,64,115,109),(7,9,60,40,54,65,117,111),(8,1,1,24,22,23,16,21),(8,1,2,25,23,24,16,21),(8,1,3,27,24,25,16,22),(8,1,4,28,24,26,16,22),(8,1,5,29,25,28,16,22),(8,1,6,31,26,29,16,22),(8,1,7,32,27,30,17,23),(8,1,8,33,28,31,17,23),(8,1,9,35,28,33,17,23),(8,1,10,36,29,34,17,24),(8,1,11,37,30,35,17,24),(8,1,12,39,31,36,17,24),(8,1,13,40,32,38,17,25),(8,1,14,42,33,39,17,25),(8,1,15,43,34,40,18,25),(8,1,16,45,35,42,18,26),(8,1,17,46,35,43,18,26),(8,1,18,48,36,44,18,26),(8,1,19,49,37,46,18,27),(8,1,20,51,38,47,18,27),(8,1,21,52,39,49,18,27),(8,1,22,54,40,50,18,28),(8,1,23,55,41,51,19,28),(8,1,24,57,42,53,19,29),(8,1,25,59,43,54,19,29),(8,1,26,60,44,56,19,29),(8,1,27,62,45,57,19,30),(8,1,28,63,46,59,19,30),(8,1,29,65,47,60,20,31),(8,1,30,67,48,62,20,31),(8,1,31,69,49,63,20,31),(8,1,32,70,50,65,20,32),(8,1,33,72,51,67,20,32),(8,1,34,74,53,68,20,33),(8,1,35,75,54,70,21,33),(8,1,36,77,55,71,21,34),(8,1,37,79,56,73,21,34),(8,1,38,81,57,75,21,35),(8,1,39,83,58,76,21,35),(8,1,40,84,59,78,22,35),(8,1,41,86,60,80,22,36),(8,1,42,88,62,81,22,36),(8,1,43,90,63,83,22,37),(8,1,44,92,64,85,22,37),(8,1,45,94,65,86,23,38),(8,1,46,96,66,88,23,38),(8,1,47,98,67,90,23,39),(8,1,48,100,69,92,23,39),(8,1,49,102,70,93,24,40),(8,1,50,103,71,95,24,40),(8,1,51,105,72,97,24,41),(8,1,52,107,74,99,24,42),(8,1,53,109,75,101,25,42),(8,1,54,112,76,103,25,43),(8,1,55,114,78,104,25,43),(8,1,56,116,79,106,25,44),(8,1,57,118,80,108,25,44),(8,1,58,120,81,110,26,45),(8,1,59,122,83,112,26,45),(8,1,60,124,84,114,26,46),(8,3,1,21,25,22,16,22),(8,3,2,21,26,23,17,23),(8,3,3,22,28,24,17,23),(8,3,4,22,29,25,18,24),(8,3,5,23,30,26,18,25),(8,3,6,23,32,27,19,25),(8,3,7,24,33,28,20,26),(8,3,8,24,35,28,20,26),(8,3,9,25,36,29,21,27),(8,3,10,25,38,30,21,28),(8,3,11,25,39,31,22,29),(8,3,12,26,41,32,23,29),(8,3,13,26,42,33,23,30),(8,3,14,27,44,34,24,31),(8,3,15,27,45,35,25,31),(8,3,16,28,47,36,25,32),(8,3,17,28,48,38,26,33),(8,3,18,29,50,39,27,34),(8,3,19,29,51,40,28,34),(8,3,20,30,53,41,28,35),(8,3,21,31,55,42,29,36),(8,3,22,31,56,43,30,37),(8,3,23,32,58,44,30,37),(8,3,24,32,60,45,31,38),(8,3,25,33,61,46,32,39),(8,3,26,33,63,48,33,40),(8,3,27,34,65,49,33,41),(8,3,28,35,66,50,34,41),(8,3,29,35,68,51,35,42),(8,3,30,36,70,52,36,43),(8,3,31,36,72,53,37,44),(8,3,32,37,73,55,37,45),(8,3,33,38,75,56,38,46),(8,3,34,38,77,57,39,47),(8,3,35,39,79,58,40,48),(8,3,36,39,81,60,41,48),(8,3,37,40,83,61,41,49),(8,3,38,41,85,62,42,50),(8,3,39,41,86,63,43,51),(8,3,40,42,88,65,44,52),(8,3,41,43,90,66,45,53),(8,3,42,43,92,67,46,54),(8,3,43,44,94,69,47,55),(8,3,44,45,96,70,47,56),(8,3,45,45,98,71,48,57),(8,3,46,46,100,73,49,58),(8,3,47,47,102,74,50,59),(8,3,48,48,104,76,51,60),(8,3,49,48,106,77,52,61),(8,3,50,49,108,78,53,62),(8,3,51,50,110,80,54,63),(8,3,52,51,113,81,55,64),(8,3,53,51,115,83,56,65),(8,3,54,52,117,84,57,66),(8,3,55,53,119,86,58,67),(8,3,56,54,121,87,59,68),(8,3,57,54,123,89,60,69),(8,3,58,55,126,90,61,70),(8,3,59,56,128,92,62,71),(8,3,60,57,130,93,63,73),(8,4,1,22,25,22,16,21),(8,4,2,23,26,23,16,21),(8,4,3,24,28,23,16,22),(8,4,4,24,29,24,16,22),(8,4,5,25,31,25,17,22),(8,4,6,26,32,25,17,23),(8,4,7,27,34,26,17,23),(8,4,8,27,35,27,17,24),(8,4,9,28,37,28,17,24),(8,4,10,29,38,28,18,24),(8,4,11,30,40,29,18,25),(8,4,12,31,41,30,18,25),(8,4,13,32,43,31,18,26),(8,4,14,32,45,32,18,26),(8,4,15,33,46,32,19,26),(8,4,16,34,48,33,19,27),(8,4,17,35,50,34,19,27),(8,4,18,36,51,35,19,28),(8,4,19,37,53,36,19,28),(8,4,20,38,55,36,20,29),(8,4,21,39,56,37,20,29),(8,4,22,40,58,38,20,30),(8,4,23,41,60,39,20,30),(8,4,24,42,62,40,20,31),(8,4,25,43,63,41,21,31),(8,4,26,44,65,42,21,32),(8,4,27,45,67,43,21,32),(8,4,28,46,69,44,21,33),(8,4,29,47,71,44,22,33),(8,4,30,48,72,45,22,34),(8,4,31,49,74,46,22,34),(8,4,32,50,76,47,22,35),(8,4,33,51,78,48,23,35),(8,4,34,52,80,49,23,36),(8,4,35,53,82,50,23,36),(8,4,36,54,84,51,24,37),(8,4,37,55,86,52,24,37),(8,4,38,56,88,53,24,38),(8,4,39,57,90,54,24,38),(8,4,40,58,92,55,25,39),(8,4,41,59,94,56,25,40),(8,4,42,60,96,57,25,40),(8,4,43,62,98,58,26,41),(8,4,44,63,100,59,26,41),(8,4,45,64,102,60,26,42),(8,4,46,65,104,61,27,43),(8,4,47,66,107,63,27,43),(8,4,48,67,109,64,27,44),(8,4,49,69,111,65,27,44),(8,4,50,70,113,66,28,45),(8,4,51,71,115,67,28,46),(8,4,52,72,117,68,28,46),(8,4,53,74,120,69,29,47),(8,4,54,75,122,70,29,48),(8,4,55,76,124,72,29,48),(8,4,56,77,126,73,30,49),(8,4,57,79,129,74,30,50),(8,4,58,80,131,75,30,50),(8,4,59,81,133,76,31,51),(8,4,60,82,136,77,31,52),(8,5,1,21,22,21,18,24),(8,5,2,21,22,21,19,25),(8,5,3,21,22,22,21,27),(8,5,4,21,23,22,22,28),(8,5,5,22,23,22,23,29),(8,5,6,22,23,23,25,31),(8,5,7,22,23,23,26,32),(8,5,8,22,24,24,27,34),(8,5,9,22,24,24,29,35),(8,5,10,22,24,24,30,37),(8,5,11,23,24,25,32,38),(8,5,12,23,24,25,33,40),(8,5,13,23,25,26,35,41),(8,5,14,23,25,26,36,43),(8,5,15,23,25,26,38,44),(8,5,16,24,26,27,39,46),(8,5,17,24,26,27,41,47),(8,5,18,24,26,28,42,49),(8,5,19,24,26,28,44,50),(8,5,20,24,27,29,45,52),(8,5,21,25,27,29,47,54),(8,5,22,25,27,30,48,55),(8,5,23,25,28,30,50,57),(8,5,24,25,28,31,52,59),(8,5,25,25,28,31,53,60),(8,5,26,26,28,32,55,62),(8,5,27,26,29,32,56,64),(8,5,28,26,29,33,58,65),(8,5,29,26,29,33,60,67),(8,5,30,27,30,34,62,69),(8,5,31,27,30,34,63,71),(8,5,32,27,30,35,65,73),(8,5,33,27,31,35,67,74),(8,5,34,28,31,36,68,76),(8,5,35,28,32,36,70,78),(8,5,36,28,32,37,72,80),(8,5,37,29,32,37,74,82),(8,5,38,29,33,38,76,84),(8,5,39,29,33,38,77,86),(8,5,40,29,33,39,79,87),(8,5,41,30,34,40,81,89),(8,5,42,30,34,40,83,91),(8,5,43,30,35,41,85,93),(8,5,44,31,35,41,87,95),(8,5,45,31,35,42,89,97),(8,5,46,31,36,43,91,99),(8,5,47,32,36,43,93,101),(8,5,48,32,37,44,94,103),(8,5,49,32,37,44,96,105),(8,5,50,33,37,45,98,107),(8,5,51,33,38,46,100,110),(8,5,52,33,38,46,102,112),(8,5,53,34,39,47,104,114),(8,5,54,34,39,48,106,116),(8,5,55,34,40,48,109,118),(8,5,56,35,40,49,111,120),(8,5,57,35,41,50,113,122),(8,5,58,35,41,50,115,125),(8,5,59,36,42,51,117,127),(8,5,60,36,42,52,119,129),(8,7,1,22,22,22,17,23),(8,7,2,23,22,23,18,24),(8,7,3,24,23,24,19,25),(8,7,4,25,23,25,20,26),(8,7,5,25,24,26,21,27),(8,7,6,26,24,27,22,28),(8,7,7,27,25,28,23,29),(8,7,8,28,25,29,24,30),(8,7,9,29,25,30,25,31),(8,7,10,30,26,31,26,33),(8,7,11,31,26,32,27,34),(8,7,12,32,27,33,28,35),(8,7,13,33,27,34,29,36),(8,7,14,34,28,35,30,37),(8,7,15,34,28,36,31,38),(8,7,16,35,29,38,32,39),(8,7,17,36,29,39,33,41),(8,7,18,37,30,40,34,42),(8,7,19,38,30,41,35,43),(8,7,20,39,31,42,36,44),(8,7,21,40,32,43,37,45),(8,7,22,41,32,45,38,47),(8,7,23,43,33,46,39,48),(8,7,24,44,33,47,40,49),(8,7,25,45,34,48,42,51),(8,7,26,46,34,49,43,52),(8,7,27,47,35,51,44,53),(8,7,28,48,35,52,45,54),(8,7,29,49,36,53,46,56),(8,7,30,50,37,54,48,57),(8,7,31,51,37,56,49,59),(8,7,32,52,38,57,50,60),(8,7,33,53,38,58,51,61),(8,7,34,55,39,60,52,63),(8,7,35,56,40,61,54,64),(8,7,36,57,40,62,55,66),(8,7,37,58,41,64,56,67),(8,7,38,59,42,65,57,68),(8,7,39,61,42,66,59,70),(8,7,40,62,43,68,60,71),(8,7,41,63,44,69,61,73),(8,7,42,64,44,71,63,74),(8,7,43,65,45,72,64,76),(8,7,44,67,46,74,65,77),(8,7,45,68,46,75,67,79),(8,7,46,69,47,76,68,80),(8,7,47,71,48,78,69,82),(8,7,48,72,49,79,71,83),(8,7,49,73,49,81,72,85),(8,7,50,74,50,82,74,87),(8,7,51,76,51,84,75,88),(8,7,52,77,51,85,77,90),(8,7,53,78,52,87,78,92),(8,7,54,80,53,89,79,93),(8,7,55,81,54,90,81,95),(8,7,56,83,55,92,82,96),(8,7,57,84,55,93,84,98),(8,7,58,85,56,95,85,100),(8,7,59,87,57,97,87,102),(8,7,60,88,58,98,88,103),(8,8,1,21,22,21,19,23),(8,8,2,21,22,21,20,24),(8,8,3,21,22,22,22,26),(8,8,4,21,22,22,23,27),(8,8,5,21,23,22,25,28),(8,8,6,21,23,22,26,30),(8,8,7,21,23,23,27,31),(8,8,8,22,23,23,29,32),(8,8,9,22,23,23,30,34),(8,8,10,22,23,24,32,35),(8,8,11,22,24,24,33,37),(8,8,12,22,24,24,35,38),(8,8,13,22,24,25,36,39),(8,8,14,22,24,25,38,41),(8,8,15,22,24,25,39,42),(8,8,16,22,24,26,41,44),(8,8,17,23,25,26,42,45),(8,8,18,23,25,26,44,47),(8,8,19,23,25,27,46,48),(8,8,20,23,25,27,47,50),(8,8,21,23,25,27,49,51),(8,8,22,23,26,28,51,53),(8,8,23,23,26,28,52,55),(8,8,24,24,26,29,54,56),(8,8,25,24,26,29,56,58),(8,8,26,24,27,29,57,60),(8,8,27,24,27,30,59,61),(8,8,28,24,27,30,61,63),(8,8,29,24,27,31,63,65),(8,8,30,24,28,31,64,66),(8,8,31,25,28,31,66,68),(8,8,32,25,28,32,68,70),(8,8,33,25,28,32,70,71),(8,8,34,25,29,33,71,73),(8,8,35,25,29,33,73,75),(8,8,36,26,29,34,75,77),(8,8,37,26,29,34,77,79),(8,8,38,26,30,35,79,80),(8,8,39,26,30,35,81,82),(8,8,40,26,30,35,83,84),(8,8,41,27,31,36,85,86),(8,8,42,27,31,36,87,88),(8,8,43,27,31,37,89,90),(8,8,44,27,32,37,91,91),(8,8,45,27,32,38,93,93),(8,8,46,28,32,38,95,95),(8,8,47,28,32,39,97,97),(8,8,48,28,33,39,99,99),(8,8,49,28,33,40,101,101),(8,8,50,29,33,40,103,103),(8,8,51,29,34,41,105,105),(8,8,52,29,34,42,107,107),(8,8,53,29,35,42,109,109),(8,8,54,30,35,43,111,111),(8,8,55,30,35,43,113,113),(8,8,56,30,36,44,115,115),(8,8,57,30,36,44,118,118),(8,8,58,31,36,45,120,120),(8,8,59,31,37,45,122,122),(8,8,60,31,37,46,124,124);
/*!40000 ALTER TABLE `player_levelstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo`
--

DROP TABLE IF EXISTS `playercreateinfo`;
CREATE TABLE `playercreateinfo` (
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `map` smallint(5) unsigned NOT NULL default '0',
  `zone` mediumint(8) unsigned NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  PRIMARY KEY  (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playercreateinfo`
--

LOCK TABLES `playercreateinfo` WRITE;
/*!40000 ALTER TABLE `playercreateinfo` DISABLE KEYS */;
INSERT INTO `playercreateinfo` VALUES (1,1,0,12,-8949.95,-132.493,83.5312),(1,2,0,12,-8949.95,-132.493,83.5312),(1,4,0,12,-8949.95,-132.493,83.5312),(1,5,0,12,-8949.95,-132.493,83.5312),(1,8,0,12,-8949.95,-132.493,83.5312),(1,9,0,12,-8949.95,-132.493,83.5312),(2,1,1,14,-618.518,-4251.67,38.718),(2,3,1,14,-618.518,-4251.67,38.718),(2,4,1,14,-618.518,-4251.67,38.718),(2,7,1,14,-618.518,-4251.67,38.718),(2,9,1,14,-618.518,-4251.67,38.718),(3,1,0,1,-6240.32,331.033,382.758),(3,2,0,1,-6240.32,331.033,382.758),(3,3,0,1,-6240.32,331.033,382.758),(3,4,0,1,-6240.32,331.033,382.758),(3,5,0,1,-6240.32,331.033,382.758),(4,1,1,141,10311.3,832.463,1326.41),(4,3,1,141,10311.3,832.463,1326.41),(4,4,1,141,10311.3,832.463,1326.41),(4,5,1,141,10311.3,832.463,1326.41),(4,11,1,141,10311.3,832.463,1326.41),(5,1,0,85,1676.71,1678.31,121.67),(5,4,0,85,1676.71,1678.31,121.67),(5,5,0,85,1676.71,1678.31,121.67),(5,8,0,85,1676.71,1678.31,121.67),(5,9,0,85,1676.71,1678.31,121.67),(6,1,1,215,-2917.58,-257.98,52.9968),(6,3,1,215,-2917.58,-257.98,52.9968),(6,7,1,215,-2917.58,-257.98,52.9968),(6,11,1,215,-2917.58,-257.98,52.9968),(7,1,0,1,-6240.32,331.033,382.758),(7,4,0,1,-6240.32,331.033,382.758),(7,8,0,1,-6240.32,331.033,382.758),(7,9,0,1,-6240.32,331.033,382.758),(8,1,1,14,-618.518,-4251.67,38.718),(8,3,1,14,-618.518,-4251.67,38.718),(8,4,1,14,-618.518,-4251.67,38.718),(8,5,1,14,-618.518,-4251.67,38.718),(8,7,1,14,-618.518,-4251.67,38.718),(8,8,1,14,-618.518,-4251.67,38.718);
/*!40000 ALTER TABLE `playercreateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_action`
--

DROP TABLE IF EXISTS `playercreateinfo_action`;
CREATE TABLE `playercreateinfo_action` (
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `button` smallint(5) unsigned NOT NULL default '0',
  `action` smallint(5) unsigned NOT NULL default '0',
  `type` smallint(5) unsigned NOT NULL default '0',
  `misc` smallint(5) unsigned NOT NULL default '0',
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playercreateinfo_action`
--

LOCK TABLES `playercreateinfo_action` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_action` DISABLE KEYS */;
INSERT INTO `playercreateinfo_action` VALUES (8,8,11,117,128,0),(8,8,10,159,128,0),(8,8,2,168,0,0),(8,8,1,133,0,0),(8,8,0,6603,0,0),(8,7,11,117,128,0),(8,7,10,159,128,0),(8,7,3,20544,0,0),(8,7,2,331,0,0),(8,7,1,403,0,0),(8,7,0,6603,0,0),(8,5,11,4540,128,0),(8,5,2,2050,0,0),(8,5,1,585,0,0),(8,5,0,6603,0,0),(8,4,11,117,128,0),(8,4,4,26972,0,0),(8,4,2,2098,0,0),(8,4,1,1752,0,0),(8,4,0,6603,0,0),(8,3,11,4604,128,0),(8,3,10,159,128,0),(8,3,2,75,0,0),(8,3,1,2973,0,0),(8,3,0,6603,0,0),(8,1,83,117,128,0),(8,1,75,26296,0,0),(8,1,73,78,0,0),(8,1,72,6603,0,0),(7,9,11,4604,128,0),(7,9,10,159,128,0),(7,9,2,687,0,0),(7,9,0,6603,0,0),(7,8,11,4536,128,0),(7,8,10,159,128,0),(7,8,2,168,0,0),(7,8,1,133,0,0),(7,8,0,6603,0,0),(7,4,11,117,128,0),(7,4,3,2764,0,0),(7,4,2,2098,0,0),(7,4,1,1752,0,0),(7,4,0,6603,0,0),(7,1,83,117,128,0),(7,1,73,78,0,0),(7,1,72,6603,0,0),(6,11,11,4536,128,0),(6,11,10,159,128,0),(6,11,3,20549,0,0),(6,11,2,5185,0,0),(6,11,1,5176,0,0),(6,11,0,6603,0,0),(6,7,11,4604,128,0),(6,7,10,159,128,0),(6,7,3,20549,0,0),(6,7,2,331,0,0),(6,7,1,403,0,0),(6,7,0,6603,0,0),(6,3,11,117,128,0),(6,3,10,159,128,0),(6,3,3,20549,0,0),(6,3,2,75,0,0),(6,3,1,2973,0,0),(6,3,0,6603,0,0),(6,1,83,4540,128,0),(6,1,74,20549,0,0),(6,1,73,78,0,0),(6,1,72,6603,0,0),(5,9,11,4604,128,0),(5,9,10,159,128,0),(5,9,3,20577,0,0),(5,9,2,687,0,0),(5,9,1,686,0,0),(5,9,0,6603,0,0),(5,8,11,4604,128,0),(5,8,10,159,128,0),(5,8,3,20577,0,0),(5,8,2,168,0,0),(5,8,1,133,0,0),(5,8,0,6603,0,0),(5,5,11,4604,128,0),(5,5,10,159,128,0),(5,5,3,20577,0,0),(5,5,2,2050,0,0),(5,5,1,585,0,0),(5,5,0,6603,0,0),(5,4,11,4604,128,0),(5,4,4,20577,0,0),(5,4,3,2764,0,0),(5,4,2,2098,0,0),(5,4,1,1752,0,0),(5,4,0,6603,0,0),(5,1,83,4604,128,0),(5,1,74,20577,0,0),(5,1,73,78,0,0),(5,1,72,6603,0,0),(4,11,11,4536,128,0),(8,5,10,159,128,0),(4,11,10,159,128,0),(4,11,2,5185,0,0),(4,11,1,5176,0,0),(4,11,0,6603,0,0),(4,5,11,2070,128,0),(4,5,10,159,128,0),(4,5,3,20580,0,0),(4,5,2,2050,0,0),(4,5,1,585,0,0),(4,5,0,6603,0,0),(4,4,11,4540,128,0),(4,4,3,2764,0,0),(4,4,2,2098,0,0),(4,4,1,1752,0,0),(4,4,0,6603,0,0),(4,3,11,117,128,0),(4,3,10,159,128,0),(4,3,3,20580,0,0),(4,3,2,75,0,0),(4,3,1,2973,0,0),(4,3,0,6603,0,0),(4,1,83,117,128,0),(4,1,74,20580,0,0),(4,1,73,78,0,0),(4,1,72,6603,0,0),(3,5,11,4540,128,0),(8,4,3,2764,0,0),(8,3,3,20544,0,0),(8,1,74,2764,0,0),(7,9,1,686,0,0),(3,5,10,159,128,0),(3,5,4,2481,0,0),(3,5,3,20594,0,0),(3,5,2,2050,0,0),(3,5,1,585,0,0),(3,5,0,6603,0,0),(3,4,11,4540,128,0),(3,4,5,2481,0,0),(3,4,4,20594,0,0),(3,4,3,2764,0,0),(3,4,2,2098,0,0),(3,4,1,1752,0,0),(3,4,0,6603,0,0),(3,3,11,117,128,0),(3,3,10,159,128,0),(3,3,4,2481,0,0),(3,3,3,20594,0,0),(3,3,2,75,0,0),(3,3,1,2973,0,0),(3,3,0,6603,0,0),(3,2,11,4540,128,0),(3,2,10,159,128,0),(3,2,4,2481,0,0),(3,2,3,20594,0,0),(3,2,2,635,0,0),(3,2,1,21084,0,0),(3,2,0,6603,0,0),(3,1,83,117,128,0),(3,1,75,2481,0,0),(3,1,74,20594,0,0),(3,1,73,78,0,0),(3,1,72,6603,0,0),(2,9,11,117,128,0),(2,9,10,159,128,0),(2,9,3,33702,0,0),(2,9,2,687,0,0),(2,9,1,686,0,0),(2,9,0,6603,0,0),(2,7,11,117,128,0),(2,7,10,159,128,0),(2,7,3,33697,0,0),(2,7,2,331,0,0),(2,7,1,403,0,0),(2,7,0,6603,0,0),(2,4,11,117,128,0),(2,4,4,20572,0,0),(2,4,3,2764,0,0),(2,4,2,2098,0,0),(2,4,1,1752,0,0),(2,4,0,6603,0,0),(2,3,11,117,128,0),(2,3,10,159,128,0),(2,3,4,20572,0,0),(2,3,2,75,0,0),(2,3,1,2973,0,0),(2,3,0,6603,0,0),(2,1,83,117,128,0),(2,1,74,20572,0,0),(2,1,73,78,0,0),(2,1,72,6603,0,0),(1,9,11,4604,128,0),(1,9,10,159,128,0),(1,9,2,687,0,0),(1,9,1,686,0,0),(1,9,0,6603,0,0),(1,8,11,2070,128,0),(1,8,10,159,128,0),(1,8,2,168,0,0),(1,8,1,133,0,0),(1,8,0,6603,0,0),(1,5,11,2070,128,0),(1,5,10,159,128,0),(1,5,2,2050,0,0),(1,5,1,585,0,0),(1,5,0,6603,0,0),(1,4,11,2070,128,0),(1,4,3,2764,0,0),(1,4,2,2098,0,0),(1,4,1,1752,0,0),(1,4,0,6603,0,0),(1,2,11,2070,128,0),(1,2,10,159,128,0),(1,2,2,635,0,0),(1,2,1,21084,0,0),(1,2,0,6603,0,0),(1,1,83,117,128,0),(1,1,73,78,0,0),(1,1,72,6603,0,0),(4,11,3,20580,0,0);
/*!40000 ALTER TABLE `playercreateinfo_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_item`
--

DROP TABLE IF EXISTS `playercreateinfo_item`;
CREATE TABLE `playercreateinfo_item` (
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `itemid` mediumint(8) unsigned NOT NULL default '0',
  `amount` tinyint(3) unsigned NOT NULL default '1',
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playercreateinfo_item`
--

LOCK TABLES `playercreateinfo_item` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_spell`
--

DROP TABLE IF EXISTS `playercreateinfo_spell`;
CREATE TABLE `playercreateinfo_spell` (
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `Spell` mediumint(8) unsigned NOT NULL default '0',
  `Note` varchar(255) default NULL,
  `Active` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playercreateinfo_spell`
--

LOCK TABLES `playercreateinfo_spell` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spell` DISABLE KEYS */;
INSERT INTO `playercreateinfo_spell` VALUES (1,1,78,'Heroic Strike',1),(1,1,81,'Dodge',1),(1,1,107,'Block',1),(1,1,196,'One-Handed Axes',1),(1,1,198,'One-Handed Maces',1),(1,1,201,'One-Handed Swords',1),(1,1,203,'Unarmed',1),(1,1,204,'Defense',1),(1,1,522,'SPELLDEFENSE (DND)',1),(1,1,668,'Language Common',1),(1,1,2382,'Generic',1),(1,1,2457,'Battle Stance',1),(1,1,2479,'Honorless Target',1),(1,1,3050,'Detect',1),(1,1,3365,'Opening',1),(1,1,5301,'Defensive State (DND)',1),(1,1,6233,'Closing',1),(1,1,6246,'Closing',1),(1,1,6247,'Opening',1),(1,1,6477,'Opening',1),(1,1,6478,'Opening',1),(1,1,6603,'Attack',1),(1,1,7266,'Duel',1),(1,1,7267,'Grovel',1),(1,1,7355,'Stuck',1),(1,1,7376,'Defensive Stance Passive',0),(1,1,7381,'Berserker Stance Passive',0),(1,1,8386,'Attacking',1),(1,1,8737,'Mail',1),(1,1,9077,'Leather',1),(1,1,9078,'Cloth',1),(1,1,9116,'Shield',1),(1,1,9125,'Generic',1),(1,1,20597,'Sword Specialization',1),(1,1,20598,'The Human Spirit',1),(1,1,20599,'Diplomacy',1),(1,1,20600,'Perception',1),(1,1,20864,'Mace Specialization',1),(1,1,21156,'Battle Stance Passive',0),(1,1,21651,'Opening',1),(1,1,21652,'Closing',1),(1,1,22027,'Remove Insignia',1),(1,1,22810,'Opening - No Text',1),(1,1,32215,'Victorious State',1),(1,2,81,'Dodge',1),(1,2,107,'Block',1),(1,2,198,'One-Handed Maces',1),(1,2,199,'Two-Handed Maces',1),(1,2,203,'Unarmed',1),(1,2,204,'Defense',1),(1,2,522,'SPELLDEFENSE (DND)',1),(1,2,635,'Holy Light',1),(1,2,668,'Language Common',1),(1,2,2382,'Generic',1),(1,2,2479,'Honorless Target',1),(1,2,3050,'Detect',1),(1,2,3365,'Opening',1),(1,2,6233,'Closing',1),(1,2,6246,'Closing',1),(1,2,6247,'Opening',1),(1,2,6477,'Opening',1),(1,2,6478,'Opening',1),(1,2,6603,'Attack',1),(1,2,7266,'Duel',1),(1,2,7267,'Grovel',1),(1,2,7355,'Stuck',1),(1,2,8386,'Attacking',1),(1,2,8737,'Mail',1),(1,2,9077,'Leather',1),(1,2,9078,'Cloth',1),(1,2,9116,'Shield',1),(1,2,9125,'Generic',1),(1,2,21084,'Seal of Righteousness',1),(1,2,20597,'Sword Specialization',1),(1,2,20598,'The Human Spirit',1),(1,2,20599,'Diplomacy',1),(1,2,20600,'Perception',1),(1,2,20864,'Mace Specialization',1),(1,2,21651,'Opening',1),(1,2,21652,'Closing',1),(1,2,22027,'Remove Insignia',1),(1,2,22810,'Opening - No Text',1),(1,2,27762,'Libram',1),(1,4,81,'Dodge',1),(1,4,203,'Unarmed',1),(1,4,204,'Defense',1),(1,4,522,'SPELLDEFENSE (DND)',1),(1,4,668,'Language Common',1),(1,4,1180,'Daggers',1),(1,4,1752,'Sinister Strike',1),(1,4,2098,'Eviscerate',1),(1,4,2382,'Generic',1),(1,4,2479,'Honorless Target',1),(1,4,2567,'Thrown',1),(1,4,2764,'Throw',1),(1,4,3050,'Detect',1),(1,4,3365,'Opening',1),(1,4,6233,'Closing',1),(1,4,6246,'Closing',1),(1,4,6247,'Opening',1),(1,4,6477,'Opening',1),(1,4,6478,'Opening',1),(1,4,6603,'Attack',1),(1,4,7266,'Duel',1),(1,4,7267,'Grovel',1),(1,4,7355,'Stuck',1),(1,4,8386,'Attacking',1),(1,4,9077,'Leather',1),(1,4,9078,'Cloth',1),(1,4,9125,'Generic',1),(1,4,16092,'Defensive State (DND)',1),(1,4,20597,'Sword Specialization',1),(1,4,20598,'The Human Spirit',1),(1,4,20599,'Diplomacy',1),(1,4,20600,'Perception',1),(1,4,20864,'Mace Specialization',1),(1,4,21184,'Rogue Passive (DND)',1),(1,4,21651,'Opening',1),(1,4,21652,'Closing',1),(1,4,22027,'Remove Insignia',1),(1,4,22810,'Opening - No Text',1),(1,5,81,'Dodge',1),(1,5,198,'One-Handed Maces',1),(1,5,203,'Unarmed',1),(1,5,204,'Defense',1),(1,5,522,'SPELLDEFENSE (DND)',1),(1,5,585,'Smite',1),(1,5,668,'Language Common',1),(1,5,2050,'Lesser Heal',1),(1,5,2382,'Generic',1),(1,5,2479,'Honorless Target',1),(1,5,3050,'Detect',1),(1,5,3365,'Opening',1),(1,5,5009,'Wands',1),(1,5,5019,'Shoot',1),(1,5,6233,'Closing',1),(1,5,6246,'Closing',1),(1,5,6247,'Opening',1),(1,5,6477,'Opening',1),(1,5,6478,'Opening',1),(1,5,6603,'Attack',1),(1,5,7266,'Duel',1),(1,5,7267,'Grovel',1),(1,5,7355,'Stuck',1),(1,5,8386,'Attacking',1),(1,5,9078,'Cloth',1),(1,5,9125,'Generic',1),(1,5,20597,'Sword Specialization',1),(1,5,20598,'The Human Spirit',1),(1,5,20599,'Diplomacy',1),(1,5,20600,'Perception',1),(1,5,20864,'Mace Specialization',1),(1,5,21651,'Opening',1),(1,5,21652,'Closing',1),(1,5,22027,'Remove Insignia',1),(1,5,22810,'Opening - No Text',1),(1,8,81,'Dodge',1),(1,8,133,'Fireball',1),(1,8,168,'Frost Armor',1),(1,8,203,'Unarmed',1),(1,8,204,'Defense',1),(1,8,227,'Staves',1),(1,8,522,'SPELLDEFENSE (DND)',1),(1,8,668,'Language Common',1),(1,8,2382,'Generic',1),(1,8,2479,'Honorless Target',1),(1,8,3050,'Detect',1),(1,8,3365,'Opening',1),(1,8,5009,'Wands',1),(1,8,5019,'Shoot',1),(1,8,6233,'Closing',1),(1,8,6246,'Closing',1),(1,8,6247,'Opening',1),(1,8,6477,'Opening',1),(1,8,6478,'Opening',1),(1,8,6603,'Attack',1),(1,8,7266,'Duel',1),(1,8,7267,'Grovel',1),(1,8,7355,'Stuck',1),(1,8,8386,'Attacking',1),(1,8,9078,'Cloth',1),(1,8,9125,'Generic',1),(1,8,20597,'Sword Specialization',1),(1,8,20598,'The Human Spirit',1),(1,8,20599,'Diplomacy',1),(1,8,20600,'Perception',1),(1,8,20864,'Mace Specialization',1),(1,8,21651,'Opening',1),(1,8,21652,'Closing',1),(1,8,22027,'Remove Insignia',1),(1,8,22810,'Opening - No Text',1),(1,9,81,'Dodge',1),(1,9,203,'Unarmed',1),(1,9,204,'Defense',1),(1,9,522,'SPELLDEFENSE (DND)',1),(1,9,668,'Language Common',1),(1,9,686,'Shadow Bolt',1),(1,9,687,'Demon Skin',1),(1,9,1180,'Daggers',1),(1,9,2382,'Generic',1),(1,9,2479,'Honorless Target',1),(1,9,3050,'Detect',1),(1,9,3365,'Opening',1),(1,9,5009,'Wands',1),(1,9,5019,'Shoot',1),(1,9,6233,'Closing',1),(1,9,6246,'Closing',1),(1,9,6247,'Opening',1),(1,9,6477,'Opening',1),(1,9,6478,'Opening',1),(1,9,6603,'Attack',1),(1,9,7266,'Duel',1),(1,9,7267,'Grovel',1),(1,9,7355,'Stuck',1),(1,9,8386,'Attacking',1),(1,9,9078,'Cloth',1),(1,9,9125,'Generic',1),(1,9,20597,'Sword Specialization',1),(1,9,20598,'The Human Spirit',1),(1,9,20599,'Diplomacy',1),(1,9,20600,'Perception',1),(1,9,20864,'Mace Specialization',1),(1,9,21651,'Opening',1),(1,9,21652,'Closing',1),(1,9,22027,'Remove Insignia',1),(1,9,22810,'Opening - No Text',1),(2,1,78,'Heroic Strike',1),(2,1,81,'Dodge',1),(2,1,107,'Block',1),(2,1,196,'One-Handed Axes',1),(2,1,197,'Two-Handed Axes',1),(2,1,201,'One-Handed Swords',1),(2,1,203,'Unarmed',1),(2,1,204,'Defense',1),(2,1,522,'SPELLDEFENSE (DND)',1),(2,1,669,'Language Orcish',1),(2,1,2382,'Generic',1),(2,1,2457,'Battle Stance',1),(2,1,2479,'Honorless Target',1),(2,1,3050,'Detect',1),(2,1,3365,'Opening',1),(2,1,5301,'Defensive State (DND)',1),(2,1,6233,'Closing',1),(2,1,6246,'Closing',1),(2,1,6247,'Opening',1),(2,1,6477,'Opening',1),(2,1,6478,'Opening',1),(2,1,6603,'Attack',1),(2,1,7266,'Duel',1),(2,1,7267,'Grovel',1),(2,1,7355,'Stuck',1),(2,1,7376,'Defensive Stance Passive',0),(2,1,7381,'Berserker Stance Passive',0),(2,1,8386,'Attacking',1),(2,1,8737,'Mail',1),(2,1,9077,'Leather',1),(2,1,9078,'Cloth',1),(2,1,9116,'Shield',1),(2,1,9125,'Generic',1),(2,1,20572,'Blood Fury',1),(2,1,20573,'Hardiness',1),(2,1,20574,'Axe Specialization',1),(2,1,21156,'Battle Stance Passive',0),(2,1,21563,'Command',1),(2,1,21651,'Opening',1),(2,1,21652,'Closing',1),(2,1,22027,'Remove Insignia',1),(2,1,22810,'Opening - No Text',1),(2,1,32215,'Victorious State',1),(2,3,75,'Auto Shot',1),(2,3,81,'Dodge',1),(2,3,196,'One-Handed Axes',1),(2,3,203,'Unarmed',1),(2,3,204,'Defense',1),(2,3,264,'Bows',1),(2,3,522,'SPELLDEFENSE (DND)',1),(2,3,669,'Language Orcish',1),(2,3,2382,'Generic',1),(2,3,2479,'Honorless Target',1),(2,3,2973,'Raptor Strike',1),(2,3,3050,'Detect',1),(2,3,3365,'Opening',1),(2,3,6233,'Closing',1),(2,3,6246,'Closing',1),(2,3,6247,'Opening',1),(2,3,6477,'Opening',1),(2,3,6478,'Opening',1),(2,3,6603,'Attack',1),(2,3,7266,'Duel',1),(2,3,7267,'Grovel',1),(2,3,7355,'Stuck',1),(2,3,8386,'Attacking',1),(2,3,9077,'Leather',1),(2,3,9078,'Cloth',1),(2,3,9125,'Generic',1),(2,3,13358,'Defensive State (DND)',1),(2,3,20572,'Blood Fury',1),(2,3,20573,'Hardiness',1),(2,3,20574,'Axe Specialization',1),(2,3,20576,'Command',1),(2,3,21651,'Opening',1),(2,3,21652,'Closing',1),(2,3,22027,'Remove Insignia',1),(2,3,22810,'Opening - No Text',1),(2,3,24949,'Defensive State 2 (DND)',1),(2,3,34082,'Advantaged State (DND)',1),(2,4,81,'Dodge',1),(2,4,203,'Unarmed',1),(2,4,204,'Defense',1),(2,4,522,'SPELLDEFENSE (DND)',1),(2,4,669,'Language Orcish',1),(2,4,1180,'Daggers',1),(2,4,1752,'Sinister Strike',1),(2,4,2098,'Eviscerate',1),(2,4,2382,'Generic',1),(2,4,2479,'Honorless Target',1),(2,4,2567,'Thrown',1),(2,4,2764,'Throw',1),(2,4,3050,'Detect',1),(2,4,3365,'Opening',1),(2,4,6233,'Closing',1),(2,4,6246,'Closing',1),(2,4,6247,'Opening',1),(2,4,6477,'Opening',1),(2,4,6478,'Opening',1),(2,4,6603,'Attack',1),(2,4,7266,'Duel',1),(2,4,7267,'Grovel',1),(2,4,7355,'Stuck',1),(2,4,8386,'Attacking',1),(2,4,9077,'Leather',1),(2,4,9078,'Cloth',1),(2,4,9125,'Generic',1),(2,4,16092,'Defensive State (DND)',1),(2,4,20572,'Blood Fury',1),(2,4,20573,'Hardiness',1),(2,4,20574,'Axe Specialization',1),(2,4,21184,'Rogue Passive (DND)',1),(2,4,21563,'Command',1),(2,4,21651,'Opening',1),(2,4,21652,'Closing',1),(2,4,22027,'Remove Insignia',1),(2,4,22810,'Opening - No Text',1),(2,7,81,'Dodge',1),(2,7,107,'Block',1),(2,7,198,'One-Handed Maces',1),(2,7,203,'Unarmed',1),(2,7,204,'Defense',1),(2,7,227,'Staves',1),(2,7,331,'Healing Wave',1),(2,7,403,'Lightning Bolt',1),(2,7,522,'SPELLDEFENSE (DND)',1),(2,7,669,'Language Orcish',1),(2,7,2382,'Generic',1),(2,7,2479,'Honorless Target',1),(2,7,3050,'Detect',1),(2,7,3365,'Opening',1),(2,7,6233,'Closing',1),(2,7,6246,'Closing',1),(2,7,6247,'Opening',1),(2,7,6477,'Opening',1),(2,7,6478,'Opening',1),(2,7,6603,'Attack',1),(2,7,7266,'Duel',1),(2,7,7267,'Grovel',1),(2,7,7355,'Stuck',1),(2,7,8386,'Attacking',1),(2,7,9077,'Leather',1),(2,7,9078,'Cloth',1),(2,7,9116,'Shield',1),(2,7,9125,'Generic',1),(2,7,20573,'Hardiness',1),(2,7,20574,'Axe Specialization',1),(2,7,21563,'Command',1),(2,7,21651,'Opening',1),(2,7,21652,'Closing',1),(2,7,22027,'Remove Insignia',1),(2,7,22810,'Opening - No Text',1),(2,7,27763,'Totem',1),(2,7,33697,'Blood Fury',1),(2,9,81,'Dodge',1),(2,9,203,'Unarmed',1),(2,9,204,'Defense',1),(2,9,522,'SPELLDEFENSE (DND)',1),(2,9,669,'Language Orcish',1),(2,9,686,'Shadow Bolt',1),(2,9,687,'Demon Skin',1),(2,9,1180,'Daggers',1),(2,9,2382,'Generic',1),(2,9,2479,'Honorless Target',1),(2,9,3050,'Detect',1),(2,9,3365,'Opening',1),(2,9,5009,'Wands',1),(2,9,5019,'Shoot',1),(2,9,6233,'Closing',1),(2,9,6246,'Closing',1),(2,9,6247,'Opening',1),(2,9,6477,'Opening',1),(2,9,6478,'Opening',1),(2,9,6603,'Attack',1),(2,9,7266,'Duel',1),(2,9,7267,'Grovel',1),(2,9,7355,'Stuck',1),(2,9,8386,'Attacking',1),(2,9,9078,'Cloth',1),(2,9,9125,'Generic',1),(2,9,20573,'Hardiness',1),(2,9,20574,'Axe Specialization',1),(2,9,20575,'Command',1),(2,9,21651,'Opening',1),(2,9,21652,'Closing',1),(2,9,22027,'Remove Insignia',1),(2,9,22810,'Opening - No Text',1),(2,9,33702,'Blood Fury',1),(3,1,78,'Heroic Strike',1),(3,1,81,'Dodge',1),(3,1,107,'Block',1),(3,1,196,'One-Handed Axes',1),(3,1,197,'Two-Handed Axes',1),(3,1,198,'One-Handed Maces',1),(3,1,203,'Unarmed',1),(3,1,204,'Defense',1),(3,1,522,'SPELLDEFENSE (DND)',1),(3,1,668,'Language Common',1),(3,1,672,'Language Dwarven',1),(3,1,2382,'Generic',1),(3,1,2457,'Battle Stance',1),(3,1,2479,'Honorless Target',1),(3,1,2481,'Find Treasure',1),(3,1,3050,'Detect',1),(3,1,3365,'Opening',1),(3,1,5301,'Defensive State (DND)',1),(3,1,6233,'Closing',1),(3,1,6246,'Closing',1),(3,1,6247,'Opening',1),(3,1,6477,'Opening',1),(3,1,6478,'Opening',1),(3,1,6603,'Attack',1),(3,1,7266,'Duel',1),(3,1,7267,'Grovel',1),(3,1,7355,'Stuck',1),(3,1,7376,'Defensive Stance Passive',0),(3,1,7381,'Berserker Stance Passive',0),(3,1,8386,'Attacking',1),(3,1,8737,'Mail',1),(3,1,9077,'Leather',1),(3,1,9078,'Cloth',1),(3,1,9116,'Shield',1),(3,1,9125,'Generic',1),(3,1,20594,'Stoneform',1),(3,1,20595,'Gun Specialization',1),(3,1,20596,'Frost Resistance',1),(3,1,21156,'Battle Stance Passive',0),(3,1,21651,'Opening',1),(3,1,21652,'Closing',1),(3,1,22027,'Remove Insignia',1),(3,1,22810,'Opening - No Text',1),(3,1,32215,'Victorious State',1),(3,2,81,'Dodge',1),(3,2,107,'Block',1),(3,2,198,'One-Handed Maces',1),(3,2,199,'Two-Handed Maces',1),(3,2,203,'Unarmed',1),(3,2,204,'Defense',1),(3,2,522,'SPELLDEFENSE (DND)',1),(3,2,635,'Holy Light',1),(3,2,668,'Language Common',1),(3,2,672,'Language Dwarven',1),(3,2,2382,'Generic',1),(3,2,2479,'Honorless Target',1),(3,2,2481,'Find Treasure',1),(3,2,3050,'Detect',1),(3,2,3365,'Opening',1),(3,2,6233,'Closing',1),(3,2,6246,'Closing',1),(3,2,6247,'Opening',1),(3,2,6477,'Opening',1),(3,2,6478,'Opening',1),(3,2,6603,'Attack',1),(3,2,7266,'Duel',1),(3,2,7267,'Grovel',1),(3,2,7355,'Stuck',1),(3,2,8386,'Attacking',1),(3,2,8737,'Mail',1),(3,2,9077,'Leather',1),(3,2,9078,'Cloth',1),(3,2,9116,'Shield',1),(3,2,9125,'Generic',1),(3,2,21084,'Seal of Righteousness',1),(3,2,20594,'Stoneform',1),(3,2,20595,'Gun Specialization',1),(3,2,20596,'Frost Resistance',1),(3,2,21651,'Opening',1),(3,2,21652,'Closing',1),(3,2,22027,'Remove Insignia',1),(3,2,22810,'Opening - No Text',1),(3,2,27762,'Libram',1),(3,3,75,'Auto Shot',1),(3,3,81,'Dodge',1),(3,3,196,'One-Handed Axes',1),(3,3,203,'Unarmed',1),(3,3,204,'Defense',1),(3,3,266,'Guns',1),(3,3,522,'SPELLDEFENSE (DND)',1),(3,3,668,'Language Common',1),(3,3,672,'Language Dwarven',1),(3,3,2382,'Generic',1),(3,3,2479,'Honorless Target',1),(3,3,2481,'Find Treasure',1),(3,3,2973,'Raptor Strike',1),(3,3,3050,'Detect',1),(3,3,3365,'Opening',1),(3,3,6233,'Closing',1),(3,3,6246,'Closing',1),(3,3,6247,'Opening',1),(3,3,6477,'Opening',1),(3,3,6478,'Opening',1),(3,3,6603,'Attack',1),(3,3,7266,'Duel',1),(3,3,7267,'Grovel',1),(3,3,7355,'Stuck',1),(3,3,8386,'Attacking',1),(3,3,9077,'Leather',1),(3,3,9078,'Cloth',1),(3,3,9125,'Generic',1),(3,3,13358,'Defensive State (DND)',1),(3,3,20594,'Stoneform',1),(3,3,20595,'Gun Specialization',1),(3,3,20596,'Frost Resistance',1),(3,3,21651,'Opening',1),(3,3,21652,'Closing',1),(3,3,22027,'Remove Insignia',1),(3,3,22810,'Opening - No Text',1),(3,3,24949,'Defensive State 2 (DND)',1),(3,3,34082,'Advantaged State (DND)',1),(3,4,81,'Dodge',1),(3,4,203,'Unarmed',1),(3,4,204,'Defense',1),(3,4,522,'SPELLDEFENSE (DND)',1),(3,4,668,'Language Common',1),(3,4,672,'Language Dwarven',1),(3,4,1180,'Daggers',1),(3,4,1752,'Sinister Strike',1),(3,4,2098,'Eviscerate',1),(3,4,2382,'Generic',1),(3,4,2479,'Honorless Target',1),(3,4,2481,'Find Treasure',1),(3,4,2567,'Thrown',1),(3,4,2764,'Throw',1),(3,4,3050,'Detect',1),(3,4,3365,'Opening',1),(3,4,6233,'Closing',1),(3,4,6246,'Closing',1),(3,4,6247,'Opening',1),(3,4,6477,'Opening',1),(3,4,6478,'Opening',1),(3,4,6603,'Attack',1),(3,4,7266,'Duel',1),(3,4,7267,'Grovel',1),(3,4,7355,'Stuck',1),(3,4,8386,'Attacking',1),(3,4,9077,'Leather',1),(3,4,9078,'Cloth',1),(3,4,9125,'Generic',1),(3,4,16092,'Defensive State (DND)',1),(3,4,20594,'Stoneform',1),(3,4,20595,'Gun Specialization',1),(3,4,20596,'Frost Resistance',1),(3,4,21184,'Rogue Passive (DND)',1),(3,4,21651,'Opening',1),(3,4,21652,'Closing',1),(3,4,22027,'Remove Insignia',1),(3,4,22810,'Opening - No Text',1),(3,5,81,'Dodge',1),(3,5,198,'One-Handed Maces',1),(3,5,203,'Unarmed',1),(3,5,204,'Defense',1),(3,5,522,'SPELLDEFENSE (DND)',1),(3,5,585,'Smite',1),(3,5,668,'Language Common',1),(3,5,672,'Language Dwarven',1),(3,5,2050,'Lesser Heal',1),(3,5,2382,'Generic',1),(3,5,2479,'Honorless Target',1),(3,5,2481,'Find Treasure',1),(3,5,3050,'Detect',1),(3,5,3365,'Opening',1),(3,5,5009,'Wands',1),(3,5,5019,'Shoot',1),(3,5,6233,'Closing',1),(3,5,6246,'Closing',1),(3,5,6247,'Opening',1),(3,5,6477,'Opening',1),(3,5,6478,'Opening',1),(3,5,6603,'Attack',1),(3,5,7266,'Duel',1),(3,5,7267,'Grovel',1),(3,5,7355,'Stuck',1),(3,5,8386,'Attacking',1),(3,5,9078,'Cloth',1),(3,5,9125,'Generic',1),(3,5,20594,'Stoneform',1),(3,5,20595,'Gun Specialization',1),(3,5,20596,'Frost Resistance',1),(3,5,21651,'Opening',1),(3,5,21652,'Closing',1),(3,5,22027,'Remove Insignia',1),(3,5,22810,'Opening - No Text',1),(4,1,78,'Heroic Strike',1),(4,1,81,'Dodge',1),(4,1,107,'Block',1),(4,1,198,'One-Handed Maces',1),(4,1,201,'One-Handed Swords',1),(4,1,203,'Unarmed',1),(4,1,204,'Defense',1),(4,1,522,'SPELLDEFENSE (DND)',1),(4,1,668,'Language Common',1),(4,1,671,'Language Darnassian',1),(4,1,1180,'Daggers',1),(4,1,2382,'Generic',1),(4,1,2457,'Battle Stance',1),(4,1,2479,'Honorless Target',1),(4,1,3050,'Detect',1),(4,1,3365,'Opening',1),(4,1,5301,'Defensive State (DND)',1),(4,1,6233,'Closing',1),(4,1,6246,'Closing',1),(4,1,6247,'Opening',1),(4,1,6477,'Opening',1),(4,1,6478,'Opening',1),(4,1,6603,'Attack',1),(4,1,7266,'Duel',1),(4,1,7267,'Grovel',1),(4,1,7355,'Stuck',1),(4,1,7376,'Defensive Stance Passive',0),(4,1,7381,'Berserker Stance Passive',0),(4,1,8386,'Attacking',1),(4,1,8737,'Mail',1),(4,1,9077,'Leather',1),(4,1,9078,'Cloth',1),(4,1,9116,'Shield',1),(4,1,9125,'Generic',1),(4,1,20580,'Shadowmeld',1),(4,1,20582,'Quickness',1),(4,1,20583,'Nature Resistance',1),(4,1,20585,'Wisp Spirit',1),(4,1,21009,'Shadowmeld Passive',1),(4,1,21156,'Battle Stance Passive',0),(4,1,21651,'Opening',1),(4,1,21652,'Closing',1),(4,1,22027,'Remove Insignia',1),(4,1,22810,'Opening - No Text',1),(4,1,32215,'Victorious State',1),(4,3,75,'Auto Shot',1),(4,3,81,'Dodge',1),(4,3,203,'Unarmed',1),(4,3,204,'Defense',1),(4,3,264,'Bows',1),(4,3,522,'SPELLDEFENSE (DND)',1),(4,3,668,'Language Common',1),(4,3,671,'Language Darnassian',1),(4,3,1180,'Daggers',1),(4,3,2382,'Generic',1),(4,3,2479,'Honorless Target',1),(4,3,2973,'Raptor Strike',1),(4,3,3050,'Detect',1),(4,3,3365,'Opening',1),(4,3,6233,'Closing',1),(4,3,6246,'Closing',1),(4,3,6247,'Opening',1),(4,3,6477,'Opening',1),(4,3,6478,'Opening',1),(4,3,6603,'Attack',1),(4,3,7266,'Duel',1),(4,3,7267,'Grovel',1),(4,3,7355,'Stuck',1),(4,3,8386,'Attacking',1),(4,3,9077,'Leather',1),(4,3,9078,'Cloth',1),(4,3,9125,'Generic',1),(4,3,13358,'Defensive State (DND)',1),(4,3,20580,'Shadowmeld',1),(4,3,20582,'Quickness',1),(4,3,20583,'Nature Resistance',1),(4,3,20585,'Wisp Spirit',1),(4,3,21009,'Shadowmeld Passive',1),(4,3,21651,'Opening',1),(4,3,21652,'Closing',1),(4,3,22027,'Remove Insignia',1),(4,3,22810,'Opening - No Text',1),(4,3,24949,'Defensive State 2 (DND)',1),(4,3,34082,'Advantaged State (DND)',1),(4,4,81,'Dodge',1),(4,4,203,'Unarmed',1),(4,4,204,'Defense',1),(4,4,522,'SPELLDEFENSE (DND)',1),(4,4,668,'Language Common',1),(4,4,671,'Language Darnassian',1),(4,4,1180,'Daggers',1),(4,4,1752,'Sinister Strike',1),(4,4,2098,'Eviscerate',1),(4,4,2382,'Generic',1),(4,4,2479,'Honorless Target',1),(4,4,2567,'Thrown',1),(4,4,2764,'Throw',1),(4,4,3050,'Detect',1),(4,4,3365,'Opening',1),(4,4,6233,'Closing',1),(4,4,6246,'Closing',1),(4,4,6247,'Opening',1),(4,4,6477,'Opening',1),(4,4,6478,'Opening',1),(4,4,6603,'Attack',1),(4,4,7266,'Duel',1),(4,4,7267,'Grovel',1),(4,4,7355,'Stuck',1),(4,4,8386,'Attacking',1),(4,4,9077,'Leather',1),(4,4,9078,'Cloth',1),(4,4,9125,'Generic',1),(4,4,16092,'Defensive State (DND)',1),(4,4,20580,'Shadowmeld',1),(4,4,20582,'Quickness',1),(4,4,20583,'Nature Resistance',1),(4,4,20585,'Wisp Spirit',1),(4,4,21009,'Shadowmeld Passive',1),(4,4,21184,'Rogue Passive (DND)',1),(4,4,21651,'Opening',1),(4,4,21652,'Closing',1),(4,4,22027,'Remove Insignia',1),(4,4,22810,'Opening - No Text',1),(4,5,81,'Dodge',1),(4,5,198,'One-Handed Maces',1),(4,5,203,'Unarmed',1),(4,5,204,'Defense',1),(4,5,522,'SPELLDEFENSE (DND)',1),(4,5,585,'Smite',1),(4,5,668,'Language Common',1),(4,5,671,'Language Darnassian',1),(4,5,2050,'Lesser Heal',1),(4,5,2382,'Generic',1),(4,5,2479,'Honorless Target',1),(4,5,3050,'Detect',1),(4,5,3365,'Opening',1),(4,5,5009,'Wands',1),(4,5,5019,'Shoot',1),(4,5,6233,'Closing',1),(4,5,6246,'Closing',1),(4,5,6247,'Opening',1),(4,5,6477,'Opening',1),(4,5,6478,'Opening',1),(4,5,6603,'Attack',1),(4,5,7266,'Duel',1),(4,5,7267,'Grovel',1),(4,5,7355,'Stuck',1),(4,5,8386,'Attacking',1),(4,5,9078,'Cloth',1),(4,5,9125,'Generic',1),(4,5,20580,'Shadowmeld',1),(4,5,20582,'Quickness',1),(4,5,20583,'Nature Resistance',1),(4,5,20585,'Wisp Spirit',1),(4,5,21009,'Shadowmeld Passive',1),(4,5,21651,'Opening',1),(4,5,21652,'Closing',1),(4,5,22027,'Remove Insignia',1),(4,5,22810,'Opening - No Text',1),(4,11,81,'Dodge',1),(4,11,203,'Unarmed',1),(4,11,204,'Defense',1),(4,11,227,'Staves',1),(4,11,522,'SPELLDEFENSE (DND)',1),(4,11,668,'Language Common',1),(4,11,671,'Language Darnassian',1),(4,11,1178,'Bear Form (Passive)',0),(4,11,1180,'Daggers',1),(4,11,2382,'Generic',1),(4,11,2479,'Honorless Target',1),(4,11,3025,'Cat Form (Passive)',0),(4,11,3050,'Detect',1),(4,11,3365,'Opening',1),(4,11,5176,'Wrath',1),(4,11,5185,'Healing Touch',1),(4,11,5419,'Travel Form (Passive)',0),(4,11,5420,'Tree of Life',0),(4,11,5421,'Aquatic Form (Passive)',0),(4,11,6233,'Closing',1),(4,11,6246,'Closing',1),(4,11,6247,'Opening',1),(4,11,6477,'Opening',1),(4,11,6478,'Opening',1),(4,11,6603,'Attack',1),(4,11,7266,'Duel',1),(4,11,7267,'Grovel',1),(4,11,7355,'Stuck',1),(4,11,8386,'Attacking',1),(4,11,9077,'Leather',1),(4,11,9078,'Cloth',1),(4,11,9125,'Generic',1),(4,11,9635,'Dire Bear Form (Passive)',0),(4,11,20580,'Shadowmeld',1),(4,11,20582,'Quickness',1),(4,11,20583,'Nature Resistance',1),(4,11,20585,'Wisp Spirit',1),(4,11,21009,'Shadowmeld Passive',1),(4,11,21178,'Bear Form (Passive2)',0),(4,11,21651,'Opening',1),(4,11,21652,'Closing',1),(4,11,22027,'Remove Insignia',1),(4,11,22810,'Opening - No Text',1),(4,11,24905,'Moonkin Form (Passive)',0),(4,11,27764,'Fetish',1),(4,11,33948,'Flight Form (Passive)',0),(4,11,34123,'Tree of Life(Passive)',0),(4,11,40121,'Swift Flight Form (Passive)',0),(5,1,78,'Heroic Strike',1),(5,1,81,'Dodge',1),(5,1,107,'Block',1),(5,1,201,'One-Handed Swords',1),(5,1,202,'Two-Handed Swords',1),(5,1,203,'Unarmed',1),(5,1,204,'Defense',1),(5,1,522,'SPELLDEFENSE (DND)',1),(5,1,669,'Language Orcish',1),(5,1,1180,'Daggers',1),(5,1,2382,'Generic',1),(5,1,2457,'Battle Stance',1),(5,1,2479,'Honorless Target',1),(5,1,3050,'Detect',1),(5,1,3365,'Opening',1),(5,1,5227,'Underwater Breathing',1),(5,1,5301,'Defensive State (DND)',1),(5,1,6233,'Closing',1),(5,1,6246,'Closing',1),(5,1,6247,'Opening',1),(5,1,6477,'Opening',1),(5,1,6478,'Opening',1),(5,1,6603,'Attack',1),(5,1,7266,'Duel',1),(5,1,7267,'Grovel',1),(5,1,7355,'Stuck',1),(5,1,7376,'Defensive Stance Passive',0),(5,1,7381,'Berserker Stance Passive',0),(5,1,7744,'Will of the Forsaken',1),(5,1,8386,'Attacking',1),(5,1,8737,'Mail',1),(5,1,9077,'Leather',1),(5,1,9078,'Cloth',1),(5,1,9116,'Shield',1),(5,1,9125,'Generic',1),(5,1,17737,'Language Gutterspeak',1),(5,1,20577,'Cannibalize',1),(5,1,20579,'Shadow Resistance',1),(5,1,21156,'Battle Stance Passive',0),(5,1,21651,'Opening',1),(5,1,21652,'Closing',1),(5,1,22027,'Remove Insignia',1),(5,1,22810,'Opening - No Text',1),(5,1,32215,'Victorious State',1),(5,4,81,'Dodge',1),(5,4,203,'Unarmed',1),(5,4,204,'Defense',1),(5,4,522,'SPELLDEFENSE (DND)',1),(5,4,669,'Language Orcish',1),(5,4,1180,'Daggers',1),(5,4,1752,'Sinister Strike',1),(5,4,2098,'Eviscerate',1),(5,4,2382,'Generic',1),(5,4,2479,'Honorless Target',1),(5,4,2567,'Thrown',1),(5,4,2764,'Throw',1),(5,4,3050,'Detect',1),(5,4,3365,'Opening',1),(5,4,5227,'Underwater Breathing',1),(5,4,6233,'Closing',1),(5,4,6246,'Closing',1),(5,4,6247,'Opening',1),(5,4,6477,'Opening',1),(5,4,6478,'Opening',1),(5,4,6603,'Attack',1),(5,4,7266,'Duel',1),(5,4,7267,'Grovel',1),(5,4,7355,'Stuck',1),(5,4,7744,'Will of the Forsaken',1),(5,4,8386,'Attacking',1),(5,4,9077,'Leather',1),(5,4,9078,'Cloth',1),(5,4,9125,'Generic',1),(5,4,16092,'Defensive State (DND)',1),(5,4,17737,'Language Gutterspeak',1),(5,4,20577,'Cannibalize',1),(5,4,20579,'Shadow Resistance',1),(5,4,21184,'Rogue Passive (DND)',1),(5,4,21651,'Opening',1),(5,4,21652,'Closing',1),(5,4,22027,'Remove Insignia',1),(5,4,22810,'Opening - No Text',1),(5,5,81,'Dodge',1),(5,5,198,'One-Handed Maces',1),(5,5,203,'Unarmed',1),(5,5,204,'Defense',1),(5,5,522,'SPELLDEFENSE (DND)',1),(5,5,585,'Smite',1),(5,5,669,'Language Orcish',1),(5,5,2050,'Lesser Heal',1),(5,5,2382,'Generic',1),(5,5,2479,'Honorless Target',1),(5,5,3050,'Detect',1),(5,5,3365,'Opening',1),(5,5,5009,'Wands',1),(5,5,5019,'Shoot',1),(5,5,5227,'Underwater Breathing',1),(5,5,6233,'Closing',1),(5,5,6246,'Closing',1),(5,5,6247,'Opening',1),(5,5,6477,'Opening',1),(5,5,6478,'Opening',1),(5,5,6603,'Attack',1),(5,5,7266,'Duel',1),(5,5,7267,'Grovel',1),(5,5,7355,'Stuck',1),(5,5,7744,'Will of the Forsaken',1),(5,5,8386,'Attacking',1),(5,5,9078,'Cloth',1),(5,5,9125,'Generic',1),(5,5,17737,'Language Gutterspeak',1),(5,5,20577,'Cannibalize',1),(5,5,20579,'Shadow Resistance',1),(5,5,21651,'Opening',1),(5,5,21652,'Closing',1),(5,5,22027,'Remove Insignia',1),(5,5,22810,'Opening - No Text',1),(5,8,81,'Dodge',1),(5,8,133,'Fireball',1),(5,8,168,'Frost Armor',1),(5,8,203,'Unarmed',1),(5,8,204,'Defense',1),(5,8,227,'Staves',1),(5,8,522,'SPELLDEFENSE (DND)',1),(5,8,669,'Language Orcish',1),(5,8,2382,'Generic',1),(5,8,2479,'Honorless Target',1),(5,8,3050,'Detect',1),(5,8,3365,'Opening',1),(5,8,5009,'Wands',1),(5,8,5019,'Shoot',1),(5,8,5227,'Underwater Breathing',1),(5,8,6233,'Closing',1),(5,8,6246,'Closing',1),(5,8,6247,'Opening',1),(5,8,6477,'Opening',1),(5,8,6478,'Opening',1),(5,8,6603,'Attack',1),(5,8,7266,'Duel',1),(5,8,7267,'Grovel',1),(5,8,7355,'Stuck',1),(5,8,7744,'Will of the Forsaken',1),(5,8,8386,'Attacking',1),(5,8,9078,'Cloth',1),(5,8,9125,'Generic',1),(5,8,17737,'Language Gutterspeak',1),(5,8,20577,'Cannibalize',1),(5,8,20579,'Shadow Resistance',1),(5,8,21651,'Opening',1),(5,8,21652,'Closing',1),(5,8,22027,'Remove Insignia',1),(5,8,22810,'Opening - No Text',1),(5,9,81,'Dodge',1),(5,9,203,'Unarmed',1),(5,9,204,'Defense',1),(5,9,522,'SPELLDEFENSE (DND)',1),(5,9,669,'Language Orcish',1),(5,9,686,'Shadow Bolt',1),(5,9,687,'Demon Skin',1),(5,9,1180,'Daggers',1),(5,9,2382,'Generic',1),(5,9,2479,'Honorless Target',1),(5,9,3050,'Detect',1),(5,9,3365,'Opening',1),(5,9,5009,'Wands',1),(5,9,5019,'Shoot',1),(5,9,5227,'Underwater Breathing',1),(5,9,6233,'Closing',1),(5,9,6246,'Closing',1),(5,9,6247,'Opening',1),(5,9,6477,'Opening',1),(5,9,6478,'Opening',1),(5,9,6603,'Attack',1),(5,9,7266,'Duel',1),(5,9,7267,'Grovel',1),(5,9,7355,'Stuck',1),(5,9,7744,'Will of the Forsaken',1),(5,9,8386,'Attacking',1),(5,9,9078,'Cloth',1),(5,9,9125,'Generic',1),(5,9,17737,'Language Gutterspeak',1),(5,9,20577,'Cannibalize',1),(5,9,20579,'Shadow Resistance',1),(5,9,21651,'Opening',1),(5,9,21652,'Closing',1),(5,9,22027,'Remove Insignia',1),(5,9,22810,'Opening - No Text',1),(6,1,78,'Heroic Strike',1),(6,1,81,'Dodge',1),(6,1,107,'Block',1),(6,1,196,'One-Handed Axes',1),(6,1,198,'One-Handed Maces',1),(6,1,199,'Two-Handed Maces',1),(6,1,203,'Unarmed',1),(6,1,204,'Defense',1),(6,1,522,'SPELLDEFENSE (DND)',1),(6,1,669,'Language Orcish',1),(6,1,670,'Language Taurahe',1),(6,1,2382,'Generic',1),(6,1,2457,'Battle Stance',1),(6,1,2479,'Honorless Target',1),(6,1,3050,'Detect',1),(6,1,3365,'Opening',1),(6,1,5301,'Defensive State (DND)',1),(6,1,6233,'Closing',1),(6,1,6246,'Closing',1),(6,1,6247,'Opening',1),(6,1,6477,'Opening',1),(6,1,6478,'Opening',1),(6,1,6603,'Attack',1),(6,1,7266,'Duel',1),(6,1,7267,'Grovel',1),(6,1,7355,'Stuck',1),(6,1,7376,'Defensive Stance Passive',0),(6,1,7381,'Berserker Stance Passive',0),(6,1,8386,'Attacking',1),(6,1,8737,'Mail',1),(6,1,9077,'Leather',1),(6,1,9078,'Cloth',1),(6,1,9116,'Shield',1),(6,1,9125,'Generic',1),(6,1,20549,'War Stomp',1),(6,1,20550,'Endurance',1),(6,1,20551,'Nature Resistance',1),(6,1,20552,'Cultivation',1),(6,1,21156,'Battle Stance Passive',0),(6,1,21651,'Opening',1),(6,1,21652,'Closing',1),(6,1,22027,'Remove Insignia',1),(6,1,22810,'Opening - No Text',1),(6,1,32215,'Victorious State',1),(6,3,75,'Auto Shot',1),(6,3,81,'Dodge',1),(6,3,196,'One-Handed Axes',1),(6,3,203,'Unarmed',1),(6,3,204,'Defense',1),(6,3,266,'Guns',1),(6,3,522,'SPELLDEFENSE (DND)',1),(6,3,669,'Language Orcish',1),(6,3,670,'Language Taurahe',1),(6,3,2382,'Generic',1),(6,3,2479,'Honorless Target',1),(6,3,2973,'Raptor Strike',1),(6,3,3050,'Detect',1),(6,3,3365,'Opening',1),(6,3,6233,'Closing',1),(6,3,6246,'Closing',1),(6,3,6247,'Opening',1),(6,3,6477,'Opening',1),(6,3,6478,'Opening',1),(6,3,6603,'Attack',1),(6,3,7266,'Duel',1),(6,3,7267,'Grovel',1),(6,3,7355,'Stuck',1),(6,3,8386,'Attacking',1),(6,3,9077,'Leather',1),(6,3,9078,'Cloth',1),(6,3,9125,'Generic',1),(6,3,13358,'Defensive State (DND)',1),(6,3,20549,'War Stomp',1),(6,3,20550,'Endurance',1),(6,3,20551,'Nature Resistance',1),(6,3,20552,'Cultivation',1),(6,3,21651,'Opening',1),(6,3,21652,'Closing',1),(6,3,22027,'Remove Insignia',1),(6,3,22810,'Opening - No Text',1),(6,3,24949,'Defensive State 2 (DND)',1),(6,3,34082,'Advantaged State (DND)',1),(6,7,81,'Dodge',1),(6,7,107,'Block',1),(6,7,198,'One-Handed Maces',1),(6,7,203,'Unarmed',1),(6,7,204,'Defense',1),(6,7,227,'Staves',1),(6,7,331,'Healing Wave',1),(6,7,403,'Lightning Bolt',1),(6,7,522,'SPELLDEFENSE (DND)',1),(6,7,669,'Language Orcish',1),(6,7,670,'Language Taurahe',1),(6,7,2382,'Generic',1),(6,7,2479,'Honorless Target',1),(6,7,3050,'Detect',1),(6,7,3365,'Opening',1),(6,7,6233,'Closing',1),(6,7,6246,'Closing',1),(6,7,6247,'Opening',1),(6,7,6477,'Opening',1),(6,7,6478,'Opening',1),(6,7,6603,'Attack',1),(6,7,7266,'Duel',1),(6,7,7267,'Grovel',1),(6,7,7355,'Stuck',1),(6,7,8386,'Attacking',1),(6,7,9077,'Leather',1),(6,7,9078,'Cloth',1),(6,7,9116,'Shield',1),(6,7,9125,'Generic',1),(6,7,20549,'War Stomp',1),(6,7,20550,'Endurance',1),(6,7,20551,'Nature Resistance',1),(6,7,20552,'Cultivation',1),(6,7,21651,'Opening',1),(6,7,21652,'Closing',1),(6,7,22027,'Remove Insignia',1),(6,7,22810,'Opening - No Text',1),(6,7,27763,'Totem',1),(6,11,81,'Dodge',1),(6,11,198,'One-Handed Maces',1),(6,11,203,'Unarmed',1),(6,11,204,'Defense',1),(6,11,227,'Staves',1),(6,11,522,'SPELLDEFENSE (DND)',1),(6,11,669,'Language Orcish',1),(6,11,670,'Language Taurahe',1),(6,11,1178,'Bear Form (Passive)',0),(6,11,2382,'Generic',1),(6,11,2479,'Honorless Target',1),(6,11,3025,'Cat Form (Passive)',0),(6,11,3050,'Detect',1),(6,11,3365,'Opening',1),(6,11,5176,'Wrath',1),(6,11,5185,'Healing Touch',1),(6,11,5419,'Travel Form (Passive)',0),(6,11,5420,'Tree of Life',0),(6,11,5421,'Aquatic Form (Passive)',0),(6,11,6233,'Closing',1),(6,11,6246,'Closing',1),(6,11,6247,'Opening',1),(6,11,6477,'Opening',1),(6,11,6478,'Opening',1),(6,11,6603,'Attack',1),(6,11,7266,'Duel',1),(6,11,7267,'Grovel',1),(6,11,7355,'Stuck',1),(6,11,8386,'Attacking',1),(6,11,9077,'Leather',1),(6,11,9078,'Cloth',1),(6,11,9125,'Generic',1),(6,11,9635,'Dire Bear Form (Passive)',0),(6,11,20549,'War Stomp',1),(6,11,20550,'Endurance',1),(6,11,20551,'Nature Resistance',1),(6,11,20552,'Cultivation',1),(6,11,21178,'Bear Form (Passive2)',0),(6,11,21651,'Opening',1),(6,11,21652,'Closing',1),(6,11,22027,'Remove Insignia',1),(6,11,22810,'Opening - No Text',1),(6,11,24905,'Moonkin Form (Passive)',0),(6,11,27764,'Fetish',1),(6,11,33948,'Flight Form (Passive)',0),(6,11,34123,'Tree of Life(Passive)',0),(6,11,40121,'Swift Flight Form (Passive)',0),(7,1,78,'Heroic Strike',1),(7,1,81,'Dodge',1),(7,1,107,'Block',1),(7,1,198,'One-Handed Maces',1),(7,1,201,'One-Handed Swords',1),(7,1,203,'Unarmed',1),(7,1,204,'Defense',1),(7,1,522,'SPELLDEFENSE (DND)',1),(7,1,668,'Language Common',1),(7,1,1180,'Daggers',1),(7,1,2382,'Generic',1),(7,1,2457,'Battle Stance',1),(7,1,2479,'Honorless Target',1),(7,1,3050,'Detect',1),(7,1,3365,'Opening',1),(7,1,5301,'Defensive State (DND)',1),(7,1,6233,'Closing',1),(7,1,6246,'Closing',1),(7,1,6247,'Opening',1),(7,1,6477,'Opening',1),(7,1,6478,'Opening',1),(7,1,6603,'Attack',1),(7,1,7266,'Duel',1),(7,1,7267,'Grovel',1),(7,1,7340,'Language Gnomish',1),(7,1,7355,'Stuck',1),(7,1,7376,'Defensive Stance Passive',0),(7,1,7381,'Berserker Stance Passive',0),(7,1,8386,'Attacking',1),(7,1,8737,'Mail',1),(7,1,9077,'Leather',1),(7,1,9078,'Cloth',1),(7,1,9116,'Shield',1),(7,1,9125,'Generic',1),(7,1,20589,'Escape Artist',1),(7,1,20591,'Expansive Mind',1),(7,1,20592,'Arcane Resistance',1),(7,1,20593,'Engineering Specialization',1),(7,1,21156,'Battle Stance Passive',0),(7,1,21651,'Opening',1),(7,1,21652,'Closing',1),(7,1,22027,'Remove Insignia',1),(7,1,22810,'Opening - No Text',1),(7,1,32215,'Victorious State',1),(7,4,81,'Dodge',1),(7,4,203,'Unarmed',1),(7,4,204,'Defense',1),(7,4,522,'SPELLDEFENSE (DND)',1),(7,4,668,'Language Common',1),(7,4,1180,'Daggers',1),(7,4,1752,'Sinister Strike',1),(7,4,2098,'Eviscerate',1),(7,4,2382,'Generic',1),(7,4,2479,'Honorless Target',1),(7,4,2567,'Thrown',1),(7,4,2764,'Throw',1),(7,4,3050,'Detect',1),(7,4,3365,'Opening',1),(7,4,6233,'Closing',1),(7,4,6246,'Closing',1),(7,4,6247,'Opening',1),(7,4,6477,'Opening',1),(7,4,6478,'Opening',1),(7,4,6603,'Attack',1),(7,4,7266,'Duel',1),(7,4,7267,'Grovel',1),(7,4,7340,'Language Gnomish',1),(7,4,7355,'Stuck',1),(7,4,8386,'Attacking',1),(7,4,9077,'Leather',1),(7,4,9078,'Cloth',1),(7,4,9125,'Generic',1),(7,4,16092,'Defensive State (DND)',1),(7,4,20589,'Escape Artist',1),(7,4,20591,'Expansive Mind',1),(7,4,20592,'Arcane Resistance',1),(7,4,20593,'Engineering Specialization',1),(7,4,21184,'Rogue Passive (DND)',1),(7,4,21651,'Opening',1),(7,4,21652,'Closing',1),(7,4,22027,'Remove Insignia',1),(7,4,22810,'Opening - No Text',1),(7,8,81,'Dodge',1),(7,8,133,'Fireball',1),(7,8,168,'Frost Armor',1),(7,8,203,'Unarmed',1),(7,8,204,'Defense',1),(7,8,227,'Staves',1),(7,8,522,'SPELLDEFENSE (DND)',1),(7,8,668,'Language Common',1),(7,8,2382,'Generic',1),(7,8,2479,'Honorless Target',1),(7,8,3050,'Detect',1),(7,8,3365,'Opening',1),(7,8,5009,'Wands',1),(7,8,5019,'Shoot',1),(7,8,6233,'Closing',1),(7,8,6246,'Closing',1),(7,8,6247,'Opening',1),(7,8,6477,'Opening',1),(7,8,6478,'Opening',1),(7,8,6603,'Attack',1),(7,8,7266,'Duel',1),(7,8,7267,'Grovel',1),(7,8,7340,'Language Gnomish',1),(7,8,7355,'Stuck',1),(7,8,8386,'Attacking',1),(7,8,9078,'Cloth',1),(7,8,9125,'Generic',1),(7,8,20589,'Escape Artist',1),(7,8,20591,'Expansive Mind',1),(7,8,20592,'Arcane Resistance',1),(7,8,20593,'Engineering Specialization',1),(7,8,21651,'Opening',1),(7,8,21652,'Closing',1),(7,8,22027,'Remove Insignia',1),(7,8,22810,'Opening - No Text',1),(7,9,81,'Dodge',1),(7,9,203,'Unarmed',1),(7,9,204,'Defense',1),(7,9,522,'SPELLDEFENSE (DND)',1),(7,9,668,'Language Common',1),(7,9,686,'Shadow Bolt',1),(7,9,687,'Demon Skin',1),(7,9,1180,'Daggers',1),(7,9,2382,'Generic',1),(7,9,2479,'Honorless Target',1),(7,9,3050,'Detect',1),(7,9,3365,'Opening',1),(7,9,5009,'Wands',1),(7,9,5019,'Shoot',1),(7,9,6233,'Closing',1),(7,9,6246,'Closing',1),(7,9,6247,'Opening',1),(7,9,6477,'Opening',1),(7,9,6478,'Opening',1),(7,9,6603,'Attack',1),(7,9,7266,'Duel',1),(7,9,7267,'Grovel',1),(7,9,7340,'Language Gnomish',1),(7,9,7355,'Stuck',1),(7,9,8386,'Attacking',1),(7,9,9078,'Cloth',1),(7,9,9125,'Generic',1),(7,9,20589,'Escape Artist',1),(7,9,20591,'Expansive Mind',1),(7,9,20592,'Arcane Resistance',1),(7,9,20593,'Engineering Specialization',1),(7,9,21651,'Opening',1),(7,9,21652,'Closing',1),(7,9,22027,'Remove Insignia',1),(7,9,22810,'Opening - No Text',1),(8,1,78,'Heroic Strike',1),(8,1,81,'Dodge',1),(8,1,107,'Block',1),(8,1,196,'One-Handed Axes',1),(8,1,203,'Unarmed',1),(8,1,204,'Defense',1),(8,1,522,'SPELLDEFENSE (DND)',1),(8,1,669,'Language Orcish',1),(8,1,1180,'Daggers',1),(8,1,2382,'Generic',1),(8,1,2457,'Battle Stance',1),(8,1,2479,'Honorless Target',1),(8,1,2567,'Thrown',1),(8,1,2764,'Throw',1),(8,1,3050,'Detect',1),(8,1,3365,'Opening',1),(8,1,5301,'Defensive State (DND)',1),(8,1,6233,'Closing',1),(8,1,6246,'Closing',1),(8,1,6247,'Opening',1),(8,1,6477,'Opening',1),(8,1,6478,'Opening',1),(8,1,6603,'Attack',1),(8,1,7266,'Duel',1),(8,1,7267,'Grovel',1),(8,1,7341,'Language Troll',1),(8,1,7355,'Stuck',1),(8,1,7376,'Defensive Stance Passive',0),(8,1,7381,'Berserker Stance Passive',0),(8,1,8386,'Attacking',1),(8,1,8737,'Mail',1),(8,1,9077,'Leather',1),(8,1,9078,'Cloth',1),(8,1,9116,'Shield',1),(8,1,9125,'Generic',1),(8,1,20555,'Regeneration',1),(8,1,20557,'Beast Slaying',1),(8,1,20558,'Throwing Specialization',1),(8,1,21156,'Battle Stance Passive',0),(8,1,21651,'Opening',1),(8,1,21652,'Closing',1),(8,1,22027,'Remove Insignia',1),(8,1,22810,'Opening - No Text',1),(8,1,26290,'Bow Specialization',1),(8,1,26296,'Berserking',1),(8,1,32215,'Victorious State',1),(8,3,75,'Auto Shot',1),(8,3,81,'Dodge',1),(8,3,196,'One-Handed Axes',1),(8,3,203,'Unarmed',1),(8,3,204,'Defense',1),(8,3,264,'Bows',1),(8,3,522,'SPELLDEFENSE (DND)',1),(8,3,669,'Language Orcish',1),(8,3,2382,'Generic',1),(8,3,2479,'Honorless Target',1),(8,3,2973,'Raptor Strike',1),(8,3,3050,'Detect',1),(8,3,3365,'Opening',1),(8,3,6233,'Closing',1),(8,3,6246,'Closing',1),(8,3,6247,'Opening',1),(8,3,6477,'Opening',1),(8,3,6478,'Opening',1),(8,3,6603,'Attack',1),(8,3,7266,'Duel',1),(8,3,7267,'Grovel',1),(8,3,7341,'Language Troll',1),(8,3,7355,'Stuck',1),(8,3,8386,'Attacking',1),(8,3,9077,'Leather',1),(8,3,9078,'Cloth',1),(8,3,9125,'Generic',1),(8,3,13358,'Defensive State (DND)',1),(8,3,20554,'Berserking',1),(8,3,20555,'Regeneration',1),(8,3,20557,'Beast Slaying',1),(8,3,20558,'Throwing Specialization',1),(8,3,21651,'Opening',1),(8,3,21652,'Closing',1),(8,3,22027,'Remove Insignia',1),(8,3,22810,'Opening - No Text',1),(8,3,24949,'Defensive State 2 (DND)',1),(8,3,26290,'Bow Specialization',1),(8,3,34082,'Advantaged State (DND)',1),(8,4,81,'Dodge',1),(8,4,203,'Unarmed',1),(8,4,204,'Defense',1),(8,4,522,'SPELLDEFENSE (DND)',1),(8,4,669,'Language Orcish',1),(8,4,1180,'Daggers',1),(8,4,1752,'Sinister Strike',1),(8,4,2098,'Eviscerate',1),(8,4,2382,'Generic',1),(8,4,2479,'Honorless Target',1),(8,4,2567,'Thrown',1),(8,4,2764,'Throw',1),(8,4,3050,'Detect',1),(8,4,3365,'Opening',1),(8,4,6233,'Closing',1),(8,4,6246,'Closing',1),(8,4,6247,'Opening',1),(8,4,6477,'Opening',1),(8,4,6478,'Opening',1),(8,4,6603,'Attack',1),(8,4,7266,'Duel',1),(8,4,7267,'Grovel',1),(8,4,7341,'Language Troll',1),(8,4,7355,'Stuck',1),(8,4,8386,'Attacking',1),(8,4,9077,'Leather',1),(8,4,9078,'Cloth',1),(8,4,9125,'Generic',1),(8,4,16092,'Defensive State (DND)',1),(8,4,20555,'Regeneration',1),(8,4,20557,'Beast Slaying',1),(8,4,20558,'Throwing Specialization',1),(8,4,21184,'Rogue Passive (DND)',1),(8,4,21651,'Opening',1),(8,4,21652,'Closing',1),(8,4,22027,'Remove Insignia',1),(8,4,22810,'Opening - No Text',1),(8,4,26290,'Bow Specialization',1),(8,4,26297,'Berserking',1),(8,5,81,'Dodge',1),(8,5,198,'One-Handed Maces',1),(8,5,203,'Unarmed',1),(8,5,204,'Defense',1),(8,5,522,'SPELLDEFENSE (DND)',1),(8,5,585,'Smite',1),(8,5,669,'Language Orcish',1),(8,5,2050,'Lesser Heal',1),(8,5,2382,'Generic',1),(8,5,2479,'Honorless Target',1),(8,5,3050,'Detect',1),(8,5,3365,'Opening',1),(8,5,5009,'Wands',1),(8,5,5019,'Shoot',1),(8,5,6233,'Closing',1),(8,5,6246,'Closing',1),(8,5,6247,'Opening',1),(8,5,6477,'Opening',1),(8,5,6478,'Opening',1),(8,5,6603,'Attack',1),(8,5,7266,'Duel',1),(8,5,7267,'Grovel',1),(8,5,7341,'Language Troll',1),(8,5,7355,'Stuck',1),(8,5,8386,'Attacking',1),(8,5,9078,'Cloth',1),(8,5,9125,'Generic',1),(8,5,20554,'Berserking',1),(8,5,20555,'Regeneration',1),(8,5,20557,'Beast Slaying',1),(8,5,20558,'Throwing Specialization',1),(8,5,21651,'Opening',1),(8,5,21652,'Closing',1),(8,5,22027,'Remove Insignia',1),(8,5,22810,'Opening - No Text',1),(8,5,26290,'Bow Specialization',1),(8,7,81,'Dodge',1),(8,7,107,'Block',1),(8,7,198,'One-Handed Maces',1),(8,7,203,'Unarmed',1),(8,7,204,'Defense',1),(8,7,227,'Staves',1),(8,7,331,'Healing Wave',1),(8,7,403,'Lightning Bolt',1),(8,7,522,'SPELLDEFENSE (DND)',1),(8,7,669,'Language Orcish',1),(8,7,2382,'Generic',1),(8,7,2479,'Honorless Target',1),(8,7,3050,'Detect',1),(8,7,3365,'Opening',1),(8,7,6233,'Closing',1),(8,7,6246,'Closing',1),(8,7,6247,'Opening',1),(8,7,6477,'Opening',1),(8,7,6478,'Opening',1),(8,7,6603,'Attack',1),(8,7,7266,'Duel',1),(8,7,7267,'Grovel',1),(8,7,7341,'Language Troll',1),(8,7,7355,'Stuck',1),(8,7,8386,'Attacking',1),(8,7,9077,'Leather',1),(8,7,9078,'Cloth',1),(8,7,9116,'Shield',1),(8,7,9125,'Generic',1),(8,7,20554,'Berserking',1),(8,7,20555,'Regeneration',1),(8,7,20557,'Beast Slaying',1),(8,7,20558,'Throwing Specialization',1),(8,7,21651,'Opening',1),(8,7,21652,'Closing',1),(8,7,22027,'Remove Insignia',1),(8,7,22810,'Opening - No Text',1),(8,7,26290,'Bow Specialization',1),(8,7,27763,'Totem',1),(8,8,81,'Dodge',1),(8,8,133,'Fireball',1),(8,8,168,'Frost Armor',1),(8,8,203,'Unarmed',1),(8,8,204,'Defense',1),(8,8,227,'Staves',1),(8,8,522,'SPELLDEFENSE (DND)',1),(8,8,669,'Language Orcish',1),(8,8,2382,'Generic',1),(8,8,2479,'Honorless Target',1),(8,8,3050,'Detect',1),(8,8,3365,'Opening',1),(8,8,5009,'Wands',1),(8,8,5019,'Shoot',1),(8,8,6233,'Closing',1),(8,8,6246,'Closing',1),(8,8,6247,'Opening',1),(8,8,6477,'Opening',1),(8,8,6478,'Opening',1),(8,8,6603,'Attack',1),(8,8,7266,'Duel',1),(8,8,7267,'Grovel',1),(8,8,7341,'Language Troll',1),(8,8,7355,'Stuck',1),(8,8,8386,'Attacking',1),(8,8,9078,'Cloth',1),(8,8,9125,'Generic',1),(8,8,20554,'Berserking',1),(8,8,20555,'Regeneration',1),(8,8,20557,'Beast Slaying',1),(8,8,20558,'Throwing Specialization',1),(8,8,21651,'Opening',1),(8,8,21652,'Closing',1),(8,8,22027,'Remove Insignia',1),(8,8,22810,'Opening - No Text',1),(8,8,26290,'Bow Specialization',1);
/*!40000 ALTER TABLE `playercreateinfo_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_spell_custom`
--

DROP TABLE IF EXISTS `playercreateinfo_spell_custom`;
CREATE TABLE `playercreateinfo_spell_custom` (
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `Spell` mediumint(8) unsigned NOT NULL default '0',
  `Note` varchar(255) default NULL,
  `Active` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playercreateinfo_spell_custom`
--

LOCK TABLES `playercreateinfo_spell_custom` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spell_custom` DISABLE KEYS */;
INSERT INTO `playercreateinfo_spell_custom` VALUES (1,1,78,'Heroic Strike',1),(1,1,81,'Dodge',1),(1,1,107,'Block',1),(1,1,196,'One-Handed Axes',1),(1,1,198,'One-Handed Maces',1),(1,1,201,'One-Handed Swords',1),(1,1,203,'Unarmed',1),(1,1,204,'Defense',1),(1,1,522,'SPELLDEFENSE(DND)',1),(1,1,668,'Language Common',1),(1,1,2382,'Generic',1),(1,1,2457,'Battle Stance',1),(1,1,2479,'Honorless Target',1),(1,1,3050,'Detect',1),(1,1,3365,'Opening',1),(1,1,5301,'Defensive State(DND)',1),(1,1,6233,'Closing',1),(1,1,6246,'Closing',1),(1,1,6247,'Opening',1),(1,1,6477,'Opening',1),(1,1,6478,'Opening',1),(1,1,6603,'Attack',1),(1,1,7266,'Duel',1),(1,1,7267,'Grovel',1),(1,1,7355,'Stuck',1),(1,1,7376,'Defensive Stance Passive',0),(1,1,7381,'Berserker Stance Passive',0),(1,1,8386,'Attacking',1),(1,1,8737,'Mail',1),(1,1,9077,'Leather',1),(1,1,9078,'Cloth',1),(1,1,9116,'Shield',1),(1,1,9125,'Generic',1),(1,1,20597,'Sword Specialization',1),(1,1,20598,'The Human Spirit',1),(1,1,20599,'Diplomacy',1),(1,1,20600,'Perception',1),(1,1,20864,'Mace Specialization',1),(1,1,21156,'Battle Stance Passive',0),(1,1,21651,'Opening',1),(1,1,21652,'Closing',1),(1,1,22027,'Remove Insignia',1),(1,1,22810,'Opening - No Text',1),(1,1,32215,'Victorious State',1),(1,2,81,'Dodge',1),(1,2,107,'Block',1),(1,2,198,'One-Handed Maces',1),(1,2,199,'Two-Handed Maces',1),(1,2,203,'Unarmed',1),(1,2,204,'Defense',1),(1,2,522,'SPELLDEFENSE(DND)',1),(1,2,635,'Holy Light',1),(1,2,668,'Language Common',1),(1,2,2382,'Generic',1),(1,2,2479,'Honorless Target',1),(1,2,3050,'Detect',1),(1,2,3365,'Opening',1),(1,2,6233,'Closing',1),(1,2,6246,'Closing',1),(1,2,6247,'Opening',1),(1,2,6477,'Opening',1),(1,2,6478,'Opening',1),(1,2,6603,'Attack',1),(1,2,7266,'Duel',1),(1,2,7267,'Grovel',1),(1,2,7355,'Stuck',1),(1,2,8386,'Attacking',1),(1,2,8737,'Mail',1),(1,2,9077,'Leather',1),(1,2,9078,'Cloth',1),(1,2,9116,'Shield',1),(1,2,9125,'Generic',1),(1,2,21084,'Seal of Righteousness',1),(1,2,20597,'Sword Specialization',1),(1,2,20598,'The Human Spirit',1),(1,2,20599,'Diplomacy',1),(1,2,20600,'Perception',1),(1,2,20864,'Mace Specialization',1),(1,2,21651,'Opening',1),(1,2,21652,'Closing',1),(1,2,22027,'Remove Insignia',1),(1,2,22810,'Opening - No Text',1),(1,2,27762,'Libram',1),(1,4,81,'Dodge',1),(1,4,203,'Unarmed',1),(1,4,204,'Defense',1),(1,4,522,'SPELLDEFENSE(DND)',1),(1,4,668,'Language Common',1),(1,4,1180,'Daggers',1),(1,4,1752,'Sinister Strike',1),(1,4,2098,'Eviscerate',1),(1,4,2382,'Generic',1),(1,4,2479,'Honorless Target',1),(1,4,2567,'Thrown',1),(1,4,2764,'Throw',1),(1,4,3050,'Detect',1),(1,4,3365,'Opening',1),(1,4,6233,'Closing',1),(1,4,6246,'Closing',1),(1,4,6247,'Opening',1),(1,4,6477,'Opening',1),(1,4,6478,'Opening',1),(1,4,6603,'Attack',1),(1,4,7266,'Duel',1),(1,4,7267,'Grovel',1),(1,4,7355,'Stuck',1),(1,4,8386,'Attacking',1),(1,4,9077,'Leather',1),(1,4,9078,'Cloth',1),(1,4,9125,'Generic',1),(1,4,16092,'Defensive State(DND)',1),(1,4,20597,'Sword Specialization',1),(1,4,20598,'The Human Spirit',1),(1,4,20599,'Diplomacy',1),(1,4,20600,'Perception',1),(1,4,20864,'Mace Specialization',1),(1,4,21184,'Rogue Passive(DND)',1),(1,4,21651,'Opening',1),(1,4,21652,'Closing',1),(1,4,22027,'Remove Insignia',1),(1,4,22810,'Opening - No Text',1),(1,5,81,'Dodge',1),(1,5,198,'One-Handed Maces',1),(1,5,203,'Unarmed',1),(1,5,204,'Defense',1),(1,5,522,'SPELLDEFENSE(DND)',1),(1,5,585,'Smite',1),(1,5,668,'Language Common',1),(1,5,2050,'Lesser Heal',1),(1,5,2382,'Generic',1),(1,5,2479,'Honorless Target',1),(1,5,3050,'Detect',1),(1,5,3365,'Opening',1),(1,5,5009,'Wands',1),(1,5,5019,'Shoot',1),(1,5,6233,'Closing',1),(1,5,6246,'Closing',1),(1,5,6247,'Opening',1),(1,5,6477,'Opening',1),(1,5,6478,'Opening',1),(1,5,6603,'Attack',1),(1,5,7266,'Duel',1),(1,5,7267,'Grovel',1),(1,5,7355,'Stuck',1),(1,5,8386,'Attacking',1),(1,5,9078,'Cloth',1),(1,5,9125,'Generic',1),(1,5,20597,'Sword Specialization',1),(1,5,20598,'The Human Spirit',1),(1,5,20599,'Diplomacy',1),(1,5,20600,'Perception',1),(1,5,20864,'Mace Specialization',1),(1,5,21651,'Opening',1),(1,5,21652,'Closing',1),(1,5,22027,'Remove Insignia',1),(1,5,22810,'Opening - No Text',1),(1,8,81,'Dodge',1),(1,8,133,'Fireball',1),(1,8,168,'Frost Armor',1),(1,8,203,'Unarmed',1),(1,8,204,'Defense',1),(1,8,227,'Staves',1),(1,8,522,'SPELLDEFENSE(DND)',1),(1,8,668,'Language Common',1),(1,8,2382,'Generic',1),(1,8,2479,'Honorless Target',1),(1,8,3050,'Detect',1),(1,8,3365,'Opening',1),(1,8,5009,'Wands',1),(1,8,5019,'Shoot',1),(1,8,6233,'Closing',1),(1,8,6246,'Closing',1),(1,8,6247,'Opening',1),(1,8,6477,'Opening',1),(1,8,6478,'Opening',1),(1,8,6603,'Attack',1),(1,8,7266,'Duel',1),(1,8,7267,'Grovel',1),(1,8,7355,'Stuck',1),(1,8,8386,'Attacking',1),(1,8,9078,'Cloth',1),(1,8,9125,'Generic',1),(1,8,20597,'Sword Specialization',1),(1,8,20598,'The Human Spirit',1),(1,8,20599,'Diplomacy',1),(1,8,20600,'Perception',1),(1,8,20864,'Mace Specialization',1),(1,8,21651,'Opening',1),(1,8,21652,'Closing',1),(1,8,22027,'Remove Insignia',1),(1,8,22810,'Opening - No Text',1),(1,9,81,'Dodge',1),(1,9,203,'Unarmed',1),(1,9,204,'Defense',1),(1,9,522,'SPELLDEFENSE(DND)',1),(1,9,668,'Language Common',1),(1,9,686,'Shadow Bolt',1),(1,9,687,'Demon Skin',1),(1,9,1180,'Daggers',1),(1,9,2382,'Generic',1),(1,9,2479,'Honorless Target',1),(1,9,3050,'Detect',1),(1,9,3365,'Opening',1),(1,9,5009,'Wands',1),(1,9,5019,'Shoot',1),(1,9,6233,'Closing',1),(1,9,6246,'Closing',1),(1,9,6247,'Opening',1),(1,9,6477,'Opening',1),(1,9,6478,'Opening',1),(1,9,6603,'Attack',1),(1,9,7266,'Duel',1),(1,9,7267,'Grovel',1),(1,9,7355,'Stuck',1),(1,9,8386,'Attacking',1),(1,9,9078,'Cloth',1),(1,9,9125,'Generic',1),(1,9,20597,'Sword Specialization',1),(1,9,20598,'The Human Spirit',1),(1,9,20599,'Diplomacy',1),(1,9,20600,'Perception',1),(1,9,20864,'Mace Specialization',1),(1,9,21651,'Opening',1),(1,9,21652,'Closing',1),(1,9,22027,'Remove Insignia',1),(1,9,22810,'Opening - No Text',1),(2,1,78,'Heroic Strike',1),(2,1,81,'Dodge',1),(2,1,107,'Block',1),(2,1,196,'One-Handed Axes',1),(2,1,197,'Two-Handed Axes',1),(2,1,201,'One-Handed Swords',1),(2,1,203,'Unarmed',1),(2,1,204,'Defense',1),(2,1,522,'SPELLDEFENSE(DND)',1),(2,1,669,'Language Orcish',1),(2,1,2382,'Generic',1),(2,1,2457,'Battle Stance',1),(2,1,2479,'Honorless Target',1),(2,1,3050,'Detect',1),(2,1,3365,'Opening',1),(2,1,5301,'Defensive State(DND)',1),(2,1,6233,'Closing',1),(2,1,6246,'Closing',1),(2,1,6247,'Opening',1),(2,1,6477,'Opening',1),(2,1,6478,'Opening',1),(2,1,6603,'Attack',1),(2,1,7266,'Duel',1),(2,1,7267,'Grovel',1),(2,1,7355,'Stuck',1),(2,1,7376,'Defensive Stance Passive',0),(2,1,7381,'Berserker Stance Passive',0),(2,1,8386,'Attacking',1),(2,1,8737,'Mail',1),(2,1,9077,'Leather',1),(2,1,9078,'Cloth',1),(2,1,9116,'Shield',1),(2,1,9125,'Generic',1),(2,1,20572,'Blood Fury',1),(2,1,20573,'Hardiness',1),(2,1,20574,'Axe Specialization',1),(2,1,21156,'Battle Stance Passive',0),(2,1,21563,'Command',1),(2,1,21651,'Opening',1),(2,1,21652,'Closing',1),(2,1,22027,'Remove Insignia',1),(2,1,22810,'Opening - No Text',1),(2,1,32215,'Victorious State',1),(2,3,75,'Auto Shot',1),(2,3,81,'Dodge',1),(2,3,196,'One-Handed Axes',1),(2,3,203,'Unarmed',1),(2,3,204,'Defense',1),(2,3,264,'Bows',1),(2,3,522,'SPELLDEFENSE(DND)',1),(2,3,669,'Language Orcish',1),(2,3,2382,'Generic',1),(2,3,2479,'Honorless Target',1),(2,3,2973,'Raptor Strike',1),(2,3,3050,'Detect',1),(2,3,3365,'Opening',1),(2,3,6233,'Closing',1),(2,3,6246,'Closing',1),(2,3,6247,'Opening',1),(2,3,6477,'Opening',1),(2,3,6478,'Opening',1),(2,3,6603,'Attack',1),(2,3,7266,'Duel',1),(2,3,7267,'Grovel',1),(2,3,7355,'Stuck',1),(2,3,8386,'Attacking',1),(2,3,9077,'Leather',1),(2,3,9078,'Cloth',1),(2,3,9125,'Generic',1),(2,3,13358,'Defensive State(DND)',1),(2,3,20572,'Blood Fury',1),(2,3,20573,'Hardiness',1),(2,3,20574,'Axe Specialization',1),(2,3,20576,'Command',1),(2,3,21651,'Opening',1),(2,3,21652,'Closing',1),(2,3,22027,'Remove Insignia',1),(2,3,22810,'Opening - No Text',1),(2,3,24949,'Defensive State 2(DND)',1),(2,3,34082,'Advantaged State(DND)',1),(2,4,81,'Dodge',1),(2,4,203,'Unarmed',1),(2,4,204,'Defense',1),(2,4,522,'SPELLDEFENSE(DND)',1),(2,4,669,'Language Orcish',1),(2,4,1180,'Daggers',1),(2,4,1752,'Sinister Strike',1),(2,4,2098,'Eviscerate',1),(2,4,2382,'Generic',1),(2,4,2479,'Honorless Target',1),(2,4,2567,'Thrown',1),(2,4,2764,'Throw',1),(2,4,3050,'Detect',1),(2,4,3365,'Opening',1),(2,4,6233,'Closing',1),(2,4,6246,'Closing',1),(2,4,6247,'Opening',1),(2,4,6477,'Opening',1),(2,4,6478,'Opening',1),(2,4,6603,'Attack',1),(2,4,7266,'Duel',1),(2,4,7267,'Grovel',1),(2,4,7355,'Stuck',1),(2,4,8386,'Attacking',1),(2,4,9077,'Leather',1),(2,4,9078,'Cloth',1),(2,4,9125,'Generic',1),(2,4,16092,'Defensive State(DND)',1),(2,4,20572,'Blood Fury',1),(2,4,20573,'Hardiness',1),(2,4,20574,'Axe Specialization',1),(2,4,21184,'Rogue Passive(DND)',1),(2,4,21563,'Command',1),(2,4,21651,'Opening',1),(2,4,21652,'Closing',1),(2,4,22027,'Remove Insignia',1),(2,4,22810,'Opening - No Text',1),(2,7,81,'Dodge',1),(2,7,107,'Block',1),(2,7,198,'One-Handed Maces',1),(2,7,203,'Unarmed',1),(2,7,204,'Defense',1),(2,7,227,'Staves',1),(2,7,331,'Healing Wave',1),(2,7,403,'Lightning Bolt',1),(2,7,522,'SPELLDEFENSE(DND)',1),(2,7,669,'Language Orcish',1),(2,7,2382,'Generic',1),(2,7,2479,'Honorless Target',1),(2,7,3050,'Detect',1),(2,7,3365,'Opening',1),(2,7,6233,'Closing',1),(2,7,6246,'Closing',1),(2,7,6247,'Opening',1),(2,7,6477,'Opening',1),(2,7,6478,'Opening',1),(2,7,6603,'Attack',1),(2,7,7266,'Duel',1),(2,7,7267,'Grovel',1),(2,7,7355,'Stuck',1),(2,7,8386,'Attacking',1),(2,7,9077,'Leather',1),(2,7,9078,'Cloth',1),(2,7,9116,'Shield',1),(2,7,9125,'Generic',1),(2,7,20573,'Hardiness',1),(2,7,20574,'Axe Specialization',1),(2,7,21563,'Command',1),(2,7,21651,'Opening',1),(2,7,21652,'Closing',1),(2,7,22027,'Remove Insignia',1),(2,7,22810,'Opening - No Text',1),(2,7,27763,'Totem',1),(2,7,33697,'Blood Fury',1),(2,9,81,'Dodge',1),(2,9,203,'Unarmed',1),(2,9,204,'Defense',1),(2,9,522,'SPELLDEFENSE(DND)',1),(2,9,669,'Language Orcish',1),(2,9,686,'Shadow Bolt',1),(2,9,687,'Demon Skin',1),(2,9,1180,'Daggers',1),(2,9,2382,'Generic',1),(2,9,2479,'Honorless Target',1),(2,9,3050,'Detect',1),(2,9,3365,'Opening',1),(2,9,5009,'Wands',1),(2,9,5019,'Shoot',1),(2,9,6233,'Closing',1),(2,9,6246,'Closing',1),(2,9,6247,'Opening',1),(2,9,6477,'Opening',1),(2,9,6478,'Opening',1),(2,9,6603,'Attack',1),(2,9,7266,'Duel',1),(2,9,7267,'Grovel',1),(2,9,7355,'Stuck',1),(2,9,8386,'Attacking',1),(2,9,9078,'Cloth',1),(2,9,9125,'Generic',1),(2,9,20573,'Hardiness',1),(2,9,20574,'Axe Specialization',1),(2,9,20575,'Command',1),(2,9,21651,'Opening',1),(2,9,21652,'Closing',1),(2,9,22027,'Remove Insignia',1),(2,9,22810,'Opening - No Text',1),(2,9,33702,'Blood Fury',1),(3,1,78,'Heroic Strike',1),(3,1,81,'Dodge',1),(3,1,107,'Block',1),(3,1,196,'One-Handed Axes',1),(3,1,197,'Two-Handed Axes',1),(3,1,198,'One-Handed Maces',1),(3,1,203,'Unarmed',1),(3,1,204,'Defense',1),(3,1,522,'SPELLDEFENSE(DND)',1),(3,1,668,'Language Common',1),(3,1,672,'Language Dwarven',1),(3,1,2382,'Generic',1),(3,1,2457,'Battle Stance',1),(3,1,2479,'Honorless Target',1),(3,1,2481,'Find Treasure',1),(3,1,3050,'Detect',1),(3,1,3365,'Opening',1),(3,1,5301,'Defensive State(DND)',1),(3,1,6233,'Closing',1),(3,1,6246,'Closing',1),(3,1,6247,'Opening',1),(3,1,6477,'Opening',1),(3,1,6478,'Opening',1),(3,1,6603,'Attack',1),(3,1,7266,'Duel',1),(3,1,7267,'Grovel',1),(3,1,7355,'Stuck',1),(3,1,7376,'Defensive Stance Passive',0),(3,1,7381,'Berserker Stance Passive',0),(3,1,8386,'Attacking',1),(3,1,8737,'Mail',1),(3,1,9077,'Leather',1),(3,1,9078,'Cloth',1),(3,1,9116,'Shield',1),(3,1,9125,'Generic',1),(3,1,20594,'Stoneform',1),(3,1,20595,'Gun Specialization',1),(3,1,20596,'Frost Resistance',1),(3,1,21156,'Battle Stance Passive',0),(3,1,21651,'Opening',1),(3,1,21652,'Closing',1),(3,1,22027,'Remove Insignia',1),(3,1,22810,'Opening - No Text',1),(3,1,32215,'Victorious State',1),(3,2,81,'Dodge',1),(3,2,107,'Block',1),(3,2,198,'One-Handed Maces',1),(3,2,199,'Two-Handed Maces',1),(3,2,203,'Unarmed',1),(3,2,204,'Defense',1),(3,2,522,'SPELLDEFENSE(DND)',1),(3,2,635,'Holy Light',1),(3,2,668,'Language Common',1),(3,2,672,'Language Dwarven',1),(3,2,2382,'Generic',1),(3,2,2479,'Honorless Target',1),(3,2,2481,'Find Treasure',1),(3,2,3050,'Detect',1),(3,2,3365,'Opening',1),(3,2,6233,'Closing',1),(3,2,6246,'Closing',1),(3,2,6247,'Opening',1),(3,2,6477,'Opening',1),(3,2,6478,'Opening',1),(3,2,6603,'Attack',1),(3,2,7266,'Duel',1),(3,2,7267,'Grovel',1),(3,2,7355,'Stuck',1),(3,2,8386,'Attacking',1),(3,2,8737,'Mail',1),(3,2,9077,'Leather',1),(3,2,9078,'Cloth',1),(3,2,9116,'Shield',1),(3,2,9125,'Generic',1),(3,2,21084,'Seal of Righteousness',1),(3,2,20594,'Stoneform',1),(3,2,20595,'Gun Specialization',1),(3,2,20596,'Frost Resistance',1),(3,2,21651,'Opening',1),(3,2,21652,'Closing',1),(3,2,22027,'Remove Insignia',1),(3,2,22810,'Opening - No Text',1),(3,2,27762,'Libram',1),(3,3,75,'Auto Shot',1),(3,3,81,'Dodge',1),(3,3,196,'One-Handed Axes',1),(3,3,203,'Unarmed',1),(3,3,204,'Defense',1),(3,3,266,'Guns',1),(3,3,522,'SPELLDEFENSE(DND)',1),(3,3,668,'Language Common',1),(3,3,672,'Language Dwarven',1),(3,3,2382,'Generic',1),(3,3,2479,'Honorless Target',1),(3,3,2481,'Find Treasure',1),(3,3,2973,'Raptor Strike',1),(3,3,3050,'Detect',1),(3,3,3365,'Opening',1),(3,3,6233,'Closing',1),(3,3,6246,'Closing',1),(3,3,6247,'Opening',1),(3,3,6477,'Opening',1),(3,3,6478,'Opening',1),(3,3,6603,'Attack',1),(3,3,7266,'Duel',1),(3,3,7267,'Grovel',1),(3,3,7355,'Stuck',1),(3,3,8386,'Attacking',1),(3,3,9077,'Leather',1),(3,3,9078,'Cloth',1),(3,3,9125,'Generic',1),(3,3,13358,'Defensive State(DND)',1),(3,3,20594,'Stoneform',1),(3,3,20595,'Gun Specialization',1),(3,3,20596,'Frost Resistance',1),(3,3,21651,'Opening',1),(3,3,21652,'Closing',1),(3,3,22027,'Remove Insignia',1),(3,3,22810,'Opening - No Text',1),(3,3,24949,'Defensive State 2(DND)',1),(3,3,34082,'Advantaged State(DND)',1),(3,4,81,'Dodge',1),(3,4,203,'Unarmed',1),(3,4,204,'Defense',1),(3,4,522,'SPELLDEFENSE(DND)',1),(3,4,668,'Language Common',1),(3,4,672,'Language Dwarven',1),(3,4,1180,'Daggers',1),(3,4,1752,'Sinister Strike',1),(3,4,2098,'Eviscerate',1),(3,4,2382,'Generic',1),(3,4,2479,'Honorless Target',1),(3,4,2481,'Find Treasure',1),(3,4,2567,'Thrown',1),(3,4,2764,'Throw',1),(3,4,3050,'Detect',1),(3,4,3365,'Opening',1),(3,4,6233,'Closing',1),(3,4,6246,'Closing',1),(3,4,6247,'Opening',1),(3,4,6477,'Opening',1),(3,4,6478,'Opening',1),(3,4,6603,'Attack',1),(3,4,7266,'Duel',1),(3,4,7267,'Grovel',1),(3,4,7355,'Stuck',1),(3,4,8386,'Attacking',1),(3,4,9077,'Leather',1),(3,4,9078,'Cloth',1),(3,4,9125,'Generic',1),(3,4,16092,'Defensive State(DND)',1),(3,4,20594,'Stoneform',1),(3,4,20595,'Gun Specialization',1),(3,4,20596,'Frost Resistance',1),(3,4,21184,'Rogue Passive(DND)',1),(3,4,21651,'Opening',1),(3,4,21652,'Closing',1),(3,4,22027,'Remove Insignia',1),(3,4,22810,'Opening - No Text',1),(3,5,81,'Dodge',1),(3,5,198,'One-Handed Maces',1),(3,5,203,'Unarmed',1),(3,5,204,'Defense',1),(3,5,522,'SPELLDEFENSE(DND)',1),(3,5,585,'Smite',1),(3,5,668,'Language Common',1),(3,5,672,'Language Dwarven',1),(3,5,2050,'Lesser Heal',1),(3,5,2382,'Generic',1),(3,5,2479,'Honorless Target',1),(3,5,2481,'Find Treasure',1),(3,5,3050,'Detect',1),(3,5,3365,'Opening',1),(3,5,5009,'Wands',1),(3,5,5019,'Shoot',1),(3,5,6233,'Closing',1),(3,5,6246,'Closing',1),(3,5,6247,'Opening',1),(3,5,6477,'Opening',1),(3,5,6478,'Opening',1),(3,5,6603,'Attack',1),(3,5,7266,'Duel',1),(3,5,7267,'Grovel',1),(3,5,7355,'Stuck',1),(3,5,8386,'Attacking',1),(3,5,9078,'Cloth',1),(3,5,9125,'Generic',1),(3,5,20594,'Stoneform',1),(3,5,20595,'Gun Specialization',1),(3,5,20596,'Frost Resistance',1),(3,5,21651,'Opening',1),(3,5,21652,'Closing',1),(3,5,22027,'Remove Insignia',1),(3,5,22810,'Opening - No Text',1),(4,1,78,'Heroic Strike',1),(4,1,81,'Dodge',1),(4,1,107,'Block',1),(4,1,198,'One-Handed Maces',1),(4,1,201,'One-Handed Swords',1),(4,1,203,'Unarmed',1),(4,1,204,'Defense',1),(4,1,522,'SPELLDEFENSE(DND)',1),(4,1,668,'Language Common',1),(4,1,671,'Language Darnassian',1),(4,1,1180,'Daggers',1),(4,1,2382,'Generic',1),(4,1,2457,'Battle Stance',1),(4,1,2479,'Honorless Target',1),(4,1,3050,'Detect',1),(4,1,3365,'Opening',1),(4,1,5301,'Defensive State(DND)',1),(4,1,6233,'Closing',1),(4,1,6246,'Closing',1),(4,1,6247,'Opening',1),(4,1,6477,'Opening',1),(4,1,6478,'Opening',1),(4,1,6603,'Attack',1),(4,1,7266,'Duel',1),(4,1,7267,'Grovel',1),(4,1,7355,'Stuck',1),(4,1,7376,'Defensive Stance Passive',0),(4,1,7381,'Berserker Stance Passive',0),(4,1,8386,'Attacking',1),(4,1,8737,'Mail',1),(4,1,9077,'Leather',1),(4,1,9078,'Cloth',1),(4,1,9116,'Shield',1),(4,1,9125,'Generic',1),(4,1,20580,'Shadowmeld',1),(4,1,20582,'Quickness',1),(4,1,20583,'Nature Resistance',1),(4,1,20585,'Wisp Spirit',1),(4,1,21009,'Shadowmeld Passive',1),(4,1,21156,'Battle Stance Passive',0),(4,1,21651,'Opening',1),(4,1,21652,'Closing',1),(4,1,22027,'Remove Insignia',1),(4,1,22810,'Opening - No Text',1),(4,1,32215,'Victorious State',1),(4,3,75,'Auto Shot',1),(4,3,81,'Dodge',1),(4,3,203,'Unarmed',1),(4,3,204,'Defense',1),(4,3,264,'Bows',1),(4,3,522,'SPELLDEFENSE(DND)',1),(4,3,668,'Language Common',1),(4,3,671,'Language Darnassian',1),(4,3,1180,'Daggers',1),(4,3,2382,'Generic',1),(4,3,2479,'Honorless Target',1),(4,3,2973,'Raptor Strike',1),(4,3,3050,'Detect',1),(4,3,3365,'Opening',1),(4,3,6233,'Closing',1),(4,3,6246,'Closing',1),(4,3,6247,'Opening',1),(4,3,6477,'Opening',1),(4,3,6478,'Opening',1),(4,3,6603,'Attack',1),(4,3,7266,'Duel',1),(4,3,7267,'Grovel',1),(4,3,7355,'Stuck',1),(4,3,8386,'Attacking',1),(4,3,9077,'Leather',1),(4,3,9078,'Cloth',1),(4,3,9125,'Generic',1),(4,3,13358,'Defensive State(DND)',1),(4,3,20580,'Shadowmeld',1),(4,3,20582,'Quickness',1),(4,3,20583,'Nature Resistance',1),(4,3,20585,'Wisp Spirit',1),(4,3,21009,'Shadowmeld Passive',1),(4,3,21651,'Opening',1),(4,3,21652,'Closing',1),(4,3,22027,'Remove Insignia',1),(4,3,22810,'Opening - No Text',1),(4,3,24949,'Defensive State 2(DND)',1),(4,3,34082,'Advantaged State(DND)',1),(4,4,81,'Dodge',1),(4,4,203,'Unarmed',1),(4,4,204,'Defense',1),(4,4,522,'SPELLDEFENSE(DND)',1),(4,4,668,'Language Common',1),(4,4,671,'Language Darnassian',1),(4,4,1180,'Daggers',1),(4,4,1752,'Sinister Strike',1),(4,4,2098,'Eviscerate',1),(4,4,2382,'Generic',1),(4,4,2479,'Honorless Target',1),(4,4,2567,'Thrown',1),(4,4,2764,'Throw',1),(4,4,3050,'Detect',1),(4,4,3365,'Opening',1),(4,4,6233,'Closing',1),(4,4,6246,'Closing',1),(4,4,6247,'Opening',1),(4,4,6477,'Opening',1),(4,4,6478,'Opening',1),(4,4,6603,'Attack',1),(4,4,7266,'Duel',1),(4,4,7267,'Grovel',1),(4,4,7355,'Stuck',1),(4,4,8386,'Attacking',1),(4,4,9077,'Leather',1),(4,4,9078,'Cloth',1),(4,4,9125,'Generic',1),(4,4,16092,'Defensive State(DND)',1),(4,4,20580,'Shadowmeld',1),(4,4,20582,'Quickness',1),(4,4,20583,'Nature Resistance',1),(4,4,20585,'Wisp Spirit',1),(4,4,21009,'Shadowmeld Passive',1),(4,4,21184,'Rogue Passive(DND)',1),(4,4,21651,'Opening',1),(4,4,21652,'Closing',1),(4,4,22027,'Remove Insignia',1),(4,4,22810,'Opening - No Text',1),(4,5,81,'Dodge',1),(4,5,198,'One-Handed Maces',1),(4,5,203,'Unarmed',1),(4,5,204,'Defense',1),(4,5,522,'SPELLDEFENSE(DND)',1),(4,5,585,'Smite',1),(4,5,668,'Language Common',1),(4,5,671,'Language Darnassian',1),(4,5,2050,'Lesser Heal',1),(4,5,2382,'Generic',1),(4,5,2479,'Honorless Target',1),(4,5,3050,'Detect',1),(4,5,3365,'Opening',1),(4,5,5009,'Wands',1),(4,5,5019,'Shoot',1),(4,5,6233,'Closing',1),(4,5,6246,'Closing',1),(4,5,6247,'Opening',1),(4,5,6477,'Opening',1),(4,5,6478,'Opening',1),(4,5,6603,'Attack',1),(4,5,7266,'Duel',1),(4,5,7267,'Grovel',1),(4,5,7355,'Stuck',1),(4,5,8386,'Attacking',1),(4,5,9078,'Cloth',1),(4,5,9125,'Generic',1),(4,5,20580,'Shadowmeld',1),(4,5,20582,'Quickness',1),(4,5,20583,'Nature Resistance',1),(4,5,20585,'Wisp Spirit',1),(4,5,21009,'Shadowmeld Passive',1),(4,5,21651,'Opening',1),(4,5,21652,'Closing',1),(4,5,22027,'Remove Insignia',1),(4,5,22810,'Opening - No Text',1),(4,11,81,'Dodge',1),(4,11,203,'Unarmed',1),(4,11,204,'Defense',1),(4,11,227,'Staves',1),(4,11,522,'SPELLDEFENSE(DND)',1),(4,11,668,'Language Common',1),(4,11,671,'Language Darnassian',1),(4,11,1178,'Bear Form(Passive)',0),(4,11,1180,'Daggers',1),(4,11,2382,'Generic',1),(4,11,2479,'Honorless Target',1),(4,11,3025,'Cat Form(Passive)',0),(4,11,3050,'Detect',1),(4,11,3365,'Opening',1),(4,11,5176,'Wrath',1),(4,11,5185,'Healing Touch',1),(4,11,5419,'Travel Form(Passive)',0),(4,11,5420,'Tree of Life',0),(4,11,5421,'Aquatic Form(Passive)',0),(4,11,6233,'Closing',1),(4,11,6246,'Closing',1),(4,11,6247,'Opening',1),(4,11,6477,'Opening',1),(4,11,6478,'Opening',1),(4,11,6603,'Attack',1),(4,11,7266,'Duel',1),(4,11,7267,'Grovel',1),(4,11,7355,'Stuck',1),(4,11,8386,'Attacking',1),(4,11,9077,'Leather',1),(4,11,9078,'Cloth',1),(4,11,9125,'Generic',1),(4,11,9635,'Dire Bear Form(Passive)',0),(4,11,20580,'Shadowmeld',1),(4,11,20582,'Quickness',1),(4,11,20583,'Nature Resistance',1),(4,11,20585,'Wisp Spirit',1),(4,11,21009,'Shadowmeld Passive',1),(4,11,21178,'Bear Form(Passive2)',0),(4,11,21651,'Opening',1),(4,11,21652,'Closing',1),(4,11,22027,'Remove Insignia',1),(4,11,22810,'Opening - No Text',1),(4,11,24905,'Moonkin Form(Passive)',0),(4,11,27764,'Fetish',1),(4,11,33948,'Flight Form(Passive)',0),(4,11,34123,'Tree of Life(Passive)',0),(4,11,40121,'Swift Flight Form(Passive)',0),(5,1,78,'Heroic Strike',1),(5,1,81,'Dodge',1),(5,1,107,'Block',1),(5,1,201,'One-Handed Swords',1),(5,1,202,'Two-Handed Swords',1),(5,1,203,'Unarmed',1),(5,1,204,'Defense',1),(5,1,522,'SPELLDEFENSE(DND)',1),(5,1,669,'Language Orcish',1),(5,1,1180,'Daggers',1),(5,1,2382,'Generic',1),(5,1,2457,'Battle Stance',1),(5,1,2479,'Honorless Target',1),(5,1,3050,'Detect',1),(5,1,3365,'Opening',1),(5,1,5227,'Underwater Breathing',1),(5,1,5301,'Defensive State(DND)',1),(5,1,6233,'Closing',1),(5,1,6246,'Closing',1),(5,1,6247,'Opening',1),(5,1,6477,'Opening',1),(5,1,6478,'Opening',1),(5,1,6603,'Attack',1),(5,1,7266,'Duel',1),(5,1,7267,'Grovel',1),(5,1,7355,'Stuck',1),(5,1,7376,'Defensive Stance Passive',0),(5,1,7381,'Berserker Stance Passive',0),(5,1,7744,'Will of the Forsaken',1),(5,1,8386,'Attacking',1),(5,1,8737,'Mail',1),(5,1,9077,'Leather',1),(5,1,9078,'Cloth',1),(5,1,9116,'Shield',1),(5,1,9125,'Generic',1),(5,1,17737,'Language Gutterspeak',1),(5,1,20577,'Cannibalize',1),(5,1,20579,'Shadow Resistance',1),(5,1,21156,'Battle Stance Passive',0),(5,1,21651,'Opening',1),(5,1,21652,'Closing',1),(5,1,22027,'Remove Insignia',1),(5,1,22810,'Opening - No Text',1),(5,1,32215,'Victorious State',1),(5,4,81,'Dodge',1),(5,4,203,'Unarmed',1),(5,4,204,'Defense',1),(5,4,522,'SPELLDEFENSE(DND)',1),(5,4,669,'Language Orcish',1),(5,4,1180,'Daggers',1),(5,4,1752,'Sinister Strike',1),(5,4,2098,'Eviscerate',1),(5,4,2382,'Generic',1),(5,4,2479,'Honorless Target',1),(5,4,2567,'Thrown',1),(5,4,2764,'Throw',1),(5,4,3050,'Detect',1),(5,4,3365,'Opening',1),(5,4,5227,'Underwater Breathing',1),(5,4,6233,'Closing',1),(5,4,6246,'Closing',1),(5,4,6247,'Opening',1),(5,4,6477,'Opening',1),(5,4,6478,'Opening',1),(5,4,6603,'Attack',1),(5,4,7266,'Duel',1),(5,4,7267,'Grovel',1),(5,4,7355,'Stuck',1),(5,4,7744,'Will of the Forsaken',1),(5,4,8386,'Attacking',1),(5,4,9077,'Leather',1),(5,4,9078,'Cloth',1),(5,4,9125,'Generic',1),(5,4,16092,'Defensive State(DND)',1),(5,4,17737,'Language Gutterspeak',1),(5,4,20577,'Cannibalize',1),(5,4,20579,'Shadow Resistance',1),(5,4,21184,'Rogue Passive(DND)',1),(5,4,21651,'Opening',1),(5,4,21652,'Closing',1),(5,4,22027,'Remove Insignia',1),(5,4,22810,'Opening - No Text',1),(5,5,81,'Dodge',1),(5,5,198,'One-Handed Maces',1),(5,5,203,'Unarmed',1),(5,5,204,'Defense',1),(5,5,522,'SPELLDEFENSE(DND)',1),(5,5,585,'Smite',1),(5,5,669,'Language Orcish',1),(5,5,2050,'Lesser Heal',1),(5,5,2382,'Generic',1),(5,5,2479,'Honorless Target',1),(5,5,3050,'Detect',1),(5,5,3365,'Opening',1),(5,5,5009,'Wands',1),(5,5,5019,'Shoot',1),(5,5,5227,'Underwater Breathing',1),(5,5,6233,'Closing',1),(5,5,6246,'Closing',1),(5,5,6247,'Opening',1),(5,5,6477,'Opening',1),(5,5,6478,'Opening',1),(5,5,6603,'Attack',1),(5,5,7266,'Duel',1),(5,5,7267,'Grovel',1),(5,5,7355,'Stuck',1),(5,5,7744,'Will of the Forsaken',1),(5,5,8386,'Attacking',1),(5,5,9078,'Cloth',1),(5,5,9125,'Generic',1),(5,5,17737,'Language Gutterspeak',1),(5,5,20577,'Cannibalize',1),(5,5,20579,'Shadow Resistance',1),(5,5,21651,'Opening',1),(5,5,21652,'Closing',1),(5,5,22027,'Remove Insignia',1),(5,5,22810,'Opening - No Text',1),(5,8,81,'Dodge',1),(5,8,133,'Fireball',1),(5,8,168,'Frost Armor',1),(5,8,203,'Unarmed',1),(5,8,204,'Defense',1),(5,8,227,'Staves',1),(5,8,522,'SPELLDEFENSE(DND)',1),(5,8,669,'Language Orcish',1),(5,8,2382,'Generic',1),(5,8,2479,'Honorless Target',1),(5,8,3050,'Detect',1),(5,8,3365,'Opening',1),(5,8,5009,'Wands',1),(5,8,5019,'Shoot',1),(5,8,5227,'Underwater Breathing',1),(5,8,6233,'Closing',1),(5,8,6246,'Closing',1),(5,8,6247,'Opening',1),(5,8,6477,'Opening',1),(5,8,6478,'Opening',1),(5,8,6603,'Attack',1),(5,8,7266,'Duel',1),(5,8,7267,'Grovel',1),(5,8,7355,'Stuck',1),(5,8,7744,'Will of the Forsaken',1),(5,8,8386,'Attacking',1),(5,8,9078,'Cloth',1),(5,8,9125,'Generic',1),(5,8,17737,'Language Gutterspeak',1),(5,8,20577,'Cannibalize',1),(5,8,20579,'Shadow Resistance',1),(5,8,21651,'Opening',1),(5,8,21652,'Closing',1),(5,8,22027,'Remove Insignia',1),(5,8,22810,'Opening - No Text',1),(5,9,81,'Dodge',1),(5,9,203,'Unarmed',1),(5,9,204,'Defense',1),(5,9,522,'SPELLDEFENSE(DND)',1),(5,9,669,'Language Orcish',1),(5,9,686,'Shadow Bolt',1),(5,9,687,'Demon Skin',1),(5,9,1180,'Daggers',1),(5,9,2382,'Generic',1),(5,9,2479,'Honorless Target',1),(5,9,3050,'Detect',1),(5,9,3365,'Opening',1),(5,9,5009,'Wands',1),(5,9,5019,'Shoot',1),(5,9,5227,'Underwater Breathing',1),(5,9,6233,'Closing',1),(5,9,6246,'Closing',1),(5,9,6247,'Opening',1),(5,9,6477,'Opening',1),(5,9,6478,'Opening',1),(5,9,6603,'Attack',1),(5,9,7266,'Duel',1),(5,9,7267,'Grovel',1),(5,9,7355,'Stuck',1),(5,9,7744,'Will of the Forsaken',1),(5,9,8386,'Attacking',1),(5,9,9078,'Cloth',1),(5,9,9125,'Generic',1),(5,9,17737,'Language Gutterspeak',1),(5,9,20577,'Cannibalize',1),(5,9,20579,'Shadow Resistance',1),(5,9,21651,'Opening',1),(5,9,21652,'Closing',1),(5,9,22027,'Remove Insignia',1),(5,9,22810,'Opening - No Text',1),(6,1,78,'Heroic Strike',1),(6,1,81,'Dodge',1),(6,1,107,'Block',1),(6,1,196,'One-Handed Axes',1),(6,1,198,'One-Handed Maces',1),(6,1,199,'Two-Handed Maces',1),(6,1,203,'Unarmed',1),(6,1,204,'Defense',1),(6,1,522,'SPELLDEFENSE(DND)',1),(6,1,669,'Language Orcish',1),(6,1,670,'Language Taurahe',1),(6,1,2382,'Generic',1),(6,1,2457,'Battle Stance',1),(6,1,2479,'Honorless Target',1),(6,1,3050,'Detect',1),(6,1,3365,'Opening',1),(6,1,5301,'Defensive State(DND)',1),(6,1,6233,'Closing',1),(6,1,6246,'Closing',1),(6,1,6247,'Opening',1),(6,1,6477,'Opening',1),(6,1,6478,'Opening',1),(6,1,6603,'Attack',1),(6,1,7266,'Duel',1),(6,1,7267,'Grovel',1),(6,1,7355,'Stuck',1),(6,1,7376,'Defensive Stance Passive',0),(6,1,7381,'Berserker Stance Passive',0),(6,1,8386,'Attacking',1),(6,1,8737,'Mail',1),(6,1,9077,'Leather',1),(6,1,9078,'Cloth',1),(6,1,9116,'Shield',1),(6,1,9125,'Generic',1),(6,1,20549,'War Stomp',1),(6,1,20550,'Endurance',1),(6,1,20551,'Nature Resistance',1),(6,1,20552,'Cultivation',1),(6,1,21156,'Battle Stance Passive',0),(6,1,21651,'Opening',1),(6,1,21652,'Closing',1),(6,1,22027,'Remove Insignia',1),(6,1,22810,'Opening - No Text',1),(6,1,32215,'Victorious State',1),(6,3,75,'Auto Shot',1),(6,3,81,'Dodge',1),(6,3,196,'One-Handed Axes',1),(6,3,203,'Unarmed',1),(6,3,204,'Defense',1),(6,3,266,'Guns',1),(6,3,522,'SPELLDEFENSE(DND)',1),(6,3,669,'Language Orcish',1),(6,3,670,'Language Taurahe',1),(6,3,2382,'Generic',1),(6,3,2479,'Honorless Target',1),(6,3,2973,'Raptor Strike',1),(6,3,3050,'Detect',1),(6,3,3365,'Opening',1),(6,3,6233,'Closing',1),(6,3,6246,'Closing',1),(6,3,6247,'Opening',1),(6,3,6477,'Opening',1),(6,3,6478,'Opening',1),(6,3,6603,'Attack',1),(6,3,7266,'Duel',1),(6,3,7267,'Grovel',1),(6,3,7355,'Stuck',1),(6,3,8386,'Attacking',1),(6,3,9077,'Leather',1),(6,3,9078,'Cloth',1),(6,3,9125,'Generic',1),(6,3,13358,'Defensive State(DND)',1),(6,3,20549,'War Stomp',1),(6,3,20550,'Endurance',1),(6,3,20551,'Nature Resistance',1),(6,3,20552,'Cultivation',1),(6,3,21651,'Opening',1),(6,3,21652,'Closing',1),(6,3,22027,'Remove Insignia',1),(6,3,22810,'Opening - No Text',1),(6,3,24949,'Defensive State 2(DND)',1),(6,3,34082,'Advantaged State(DND)',1),(6,7,81,'Dodge',1),(6,7,107,'Block',1),(6,7,198,'One-Handed Maces',1),(6,7,203,'Unarmed',1),(6,7,204,'Defense',1),(6,7,227,'Staves',1),(6,7,331,'Healing Wave',1),(6,7,403,'Lightning Bolt',1),(6,7,522,'SPELLDEFENSE(DND)',1),(6,7,669,'Language Orcish',1),(6,7,670,'Language Taurahe',1),(6,7,2382,'Generic',1),(6,7,2479,'Honorless Target',1),(6,7,3050,'Detect',1),(6,7,3365,'Opening',1),(6,7,6233,'Closing',1),(6,7,6246,'Closing',1),(6,7,6247,'Opening',1),(6,7,6477,'Opening',1),(6,7,6478,'Opening',1),(6,7,6603,'Attack',1),(6,7,7266,'Duel',1),(6,7,7267,'Grovel',1),(6,7,7355,'Stuck',1),(6,7,8386,'Attacking',1),(6,7,9077,'Leather',1),(6,7,9078,'Cloth',1),(6,7,9116,'Shield',1),(6,7,9125,'Generic',1),(6,7,20549,'War Stomp',1),(6,7,20550,'Endurance',1),(6,7,20551,'Nature Resistance',1),(6,7,20552,'Cultivation',1),(6,7,21651,'Opening',1),(6,7,21652,'Closing',1),(6,7,22027,'Remove Insignia',1),(6,7,22810,'Opening - No Text',1),(6,7,27763,'Totem',1),(6,11,81,'Dodge',1),(6,11,198,'One-Handed Maces',1),(6,11,203,'Unarmed',1),(6,11,204,'Defense',1),(6,11,227,'Staves',1),(6,11,522,'SPELLDEFENSE(DND)',1),(6,11,669,'Language Orcish',1),(6,11,670,'Language Taurahe',1),(6,11,1178,'Bear Form(Passive)',0),(6,11,2382,'Generic',1),(6,11,2479,'Honorless Target',1),(6,11,3025,'Cat Form(Passive)',0),(6,11,3050,'Detect',1),(6,11,3365,'Opening',1),(6,11,5176,'Wrath',1),(6,11,5185,'Healing Touch',1),(6,11,5419,'Travel Form(Passive)',0),(6,11,5420,'Tree of Life',0),(6,11,5421,'Aquatic Form(Passive)',0),(6,11,6233,'Closing',1),(6,11,6246,'Closing',1),(6,11,6247,'Opening',1),(6,11,6477,'Opening',1),(6,11,6478,'Opening',1),(6,11,6603,'Attack',1),(6,11,7266,'Duel',1),(6,11,7267,'Grovel',1),(6,11,7355,'Stuck',1),(6,11,8386,'Attacking',1),(6,11,9077,'Leather',1),(6,11,9078,'Cloth',1),(6,11,9125,'Generic',1),(6,11,9635,'Dire Bear Form(Passive)',0),(6,11,20549,'War Stomp',1),(6,11,20550,'Endurance',1),(6,11,20551,'Nature Resistance',1),(6,11,20552,'Cultivation',1),(6,11,21178,'Bear Form(Passive2)',0),(6,11,21651,'Opening',1),(6,11,21652,'Closing',1),(6,11,22027,'Remove Insignia',1),(6,11,22810,'Opening - No Text',1),(6,11,24905,'Moonkin Form(Passive)',0),(6,11,27764,'Fetish',1),(6,11,33948,'Flight Form(Passive)',0),(6,11,34123,'Tree of Life(Passive)',0),(6,11,40121,'Swift Flight Form(Passive)',0),(7,1,78,'Heroic Strike',1),(7,1,81,'Dodge',1),(7,1,107,'Block',1),(7,1,198,'One-Handed Maces',1),(7,1,201,'One-Handed Swords',1),(7,1,203,'Unarmed',1),(7,1,204,'Defense',1),(7,1,522,'SPELLDEFENSE(DND)',1),(7,1,668,'Language Common',1),(7,1,1180,'Daggers',1),(7,1,2382,'Generic',1),(7,1,2457,'Battle Stance',1),(7,1,2479,'Honorless Target',1),(7,1,3050,'Detect',1),(7,1,3365,'Opening',1),(7,1,5301,'Defensive State(DND)',1),(7,1,6233,'Closing',1),(7,1,6246,'Closing',1),(7,1,6247,'Opening',1),(7,1,6477,'Opening',1),(7,1,6478,'Opening',1),(7,1,6603,'Attack',1),(7,1,7266,'Duel',1),(7,1,7267,'Grovel',1),(7,1,7340,'Language Gnomish',1),(7,1,7355,'Stuck',1),(7,1,7376,'Defensive Stance Passive',0),(7,1,7381,'Berserker Stance Passive',0),(7,1,8386,'Attacking',1),(7,1,8737,'Mail',1),(7,1,9077,'Leather',1),(7,1,9078,'Cloth',1),(7,1,9116,'Shield',1),(7,1,9125,'Generic',1),(7,1,20589,'Escape Artist',1),(7,1,20591,'Expansive Mind',1),(7,1,20592,'Arcane Resistance',1),(7,1,20593,'Engineering Specialization',1),(7,1,21156,'Battle Stance Passive',0),(7,1,21651,'Opening',1),(7,1,21652,'Closing',1),(7,1,22027,'Remove Insignia',1),(7,1,22810,'Opening - No Text',1),(7,1,32215,'Victorious State',1),(7,4,81,'Dodge',1),(7,4,203,'Unarmed',1),(7,4,204,'Defense',1),(7,4,522,'SPELLDEFENSE(DND)',1),(7,4,668,'Language Common',1),(7,4,1180,'Daggers',1),(7,4,1752,'Sinister Strike',1),(7,4,2098,'Eviscerate',1),(7,4,2382,'Generic',1),(7,4,2479,'Honorless Target',1),(7,4,2567,'Thrown',1),(7,4,2764,'Throw',1),(7,4,3050,'Detect',1),(7,4,3365,'Opening',1),(7,4,6233,'Closing',1),(7,4,6246,'Closing',1),(7,4,6247,'Opening',1),(7,4,6477,'Opening',1),(7,4,6478,'Opening',1),(7,4,6603,'Attack',1),(7,4,7266,'Duel',1),(7,4,7267,'Grovel',1),(7,4,7340,'Language Gnomish',1),(7,4,7355,'Stuck',1),(7,4,8386,'Attacking',1),(7,4,9077,'Leather',1),(7,4,9078,'Cloth',1),(7,4,9125,'Generic',1),(7,4,16092,'Defensive State(DND)',1),(7,4,20589,'Escape Artist',1),(7,4,20591,'Expansive Mind',1),(7,4,20592,'Arcane Resistance',1),(7,4,20593,'Engineering Specialization',1),(7,4,21184,'Rogue Passive(DND)',1),(7,4,21651,'Opening',1),(7,4,21652,'Closing',1),(7,4,22027,'Remove Insignia',1),(7,4,22810,'Opening - No Text',1),(7,8,81,'Dodge',1),(7,8,133,'Fireball',1),(7,8,168,'Frost Armor',1),(7,8,203,'Unarmed',1),(7,8,204,'Defense',1),(7,8,227,'Staves',1),(7,8,522,'SPELLDEFENSE(DND)',1),(7,8,668,'Language Common',1),(7,8,2382,'Generic',1),(7,8,2479,'Honorless Target',1),(7,8,3050,'Detect',1),(7,8,3365,'Opening',1),(7,8,5009,'Wands',1),(7,8,5019,'Shoot',1),(7,8,6233,'Closing',1),(7,8,6246,'Closing',1),(7,8,6247,'Opening',1),(7,8,6477,'Opening',1),(7,8,6478,'Opening',1),(7,8,6603,'Attack',1),(7,8,7266,'Duel',1),(7,8,7267,'Grovel',1),(7,8,7340,'Language Gnomish',1),(7,8,7355,'Stuck',1),(7,8,8386,'Attacking',1),(7,8,9078,'Cloth',1),(7,8,9125,'Generic',1),(7,8,20589,'Escape Artist',1),(7,8,20591,'Expansive Mind',1),(7,8,20592,'Arcane Resistance',1),(7,8,20593,'Engineering Specialization',1),(7,8,21651,'Opening',1),(7,8,21652,'Closing',1),(7,8,22027,'Remove Insignia',1),(7,8,22810,'Opening - No Text',1),(7,9,81,'Dodge',1),(7,9,203,'Unarmed',1),(7,9,204,'Defense',1),(7,9,522,'SPELLDEFENSE(DND)',1),(7,9,668,'Language Common',1),(7,9,686,'Shadow Bolt',1),(7,9,687,'Demon Skin',1),(7,9,1180,'Daggers',1),(7,9,2382,'Generic',1),(7,9,2479,'Honorless Target',1),(7,9,3050,'Detect',1),(7,9,3365,'Opening',1),(7,9,5009,'Wands',1),(7,9,5019,'Shoot',1),(7,9,6233,'Closing',1),(7,9,6246,'Closing',1),(7,9,6247,'Opening',1),(7,9,6477,'Opening',1),(7,9,6478,'Opening',1),(7,9,6603,'Attack',1),(7,9,7266,'Duel',1),(7,9,7267,'Grovel',1),(7,9,7340,'Language Gnomish',1),(7,9,7355,'Stuck',1),(7,9,8386,'Attacking',1),(7,9,9078,'Cloth',1),(7,9,9125,'Generic',1),(7,9,20589,'Escape Artist',1),(7,9,20591,'Expansive Mind',1),(7,9,20592,'Arcane Resistance',1),(7,9,20593,'Engineering Specialization',1),(7,9,21651,'Opening',1),(7,9,21652,'Closing',1),(7,9,22027,'Remove Insignia',1),(7,9,22810,'Opening - No Text',1),(8,1,78,'Heroic Strike',1),(8,1,81,'Dodge',1),(8,1,107,'Block',1),(8,1,196,'One-Handed Axes',1),(8,1,203,'Unarmed',1),(8,1,204,'Defense',1),(8,1,522,'SPELLDEFENSE(DND)',1),(8,1,669,'Language Orcish',1),(8,1,1180,'Daggers',1),(8,1,2382,'Generic',1),(8,1,2457,'Battle Stance',1),(8,1,2479,'Honorless Target',1),(8,1,2567,'Thrown',1),(8,1,2764,'Throw',1),(8,1,3050,'Detect',1),(8,1,3365,'Opening',1),(8,1,5301,'Defensive State(DND)',1),(8,1,6233,'Closing',1),(8,1,6246,'Closing',1),(8,1,6247,'Opening',1),(8,1,6477,'Opening',1),(8,1,6478,'Opening',1),(8,1,6603,'Attack',1),(8,1,7266,'Duel',1),(8,1,7267,'Grovel',1),(8,1,7341,'Language Troll',1),(8,1,7355,'Stuck',1),(8,1,7376,'Defensive Stance Passive',0),(8,1,7381,'Berserker Stance Passive',0),(8,1,8386,'Attacking',1),(8,1,8737,'Mail',1),(8,1,9077,'Leather',1),(8,1,9078,'Cloth',1),(8,1,9116,'Shield',1),(8,1,9125,'Generic',1),(8,1,20555,'Regeneration',1),(8,1,20557,'Beast Slaying',1),(8,1,20558,'Throwing Specialization',1),(8,1,21156,'Battle Stance Passive',0),(8,1,21651,'Opening',1),(8,1,21652,'Closing',1),(8,1,22027,'Remove Insignia',1),(8,1,22810,'Opening - No Text',1),(8,1,26290,'Bow Specialization',1),(8,1,26296,'Berserking',1),(8,1,32215,'Victorious State',1),(8,3,75,'Auto Shot',1),(8,3,81,'Dodge',1),(8,3,196,'One-Handed Axes',1),(8,3,203,'Unarmed',1),(8,3,204,'Defense',1),(8,3,264,'Bows',1),(8,3,522,'SPELLDEFENSE(DND)',1),(8,3,669,'Language Orcish',1),(8,3,2382,'Generic',1),(8,3,2479,'Honorless Target',1),(8,3,2973,'Raptor Strike',1),(8,3,3050,'Detect',1),(8,3,3365,'Opening',1),(8,3,6233,'Closing',1),(8,3,6246,'Closing',1),(8,3,6247,'Opening',1),(8,3,6477,'Opening',1),(8,3,6478,'Opening',1),(8,3,6603,'Attack',1),(8,3,7266,'Duel',1),(8,3,7267,'Grovel',1),(8,3,7341,'Language Troll',1),(8,3,7355,'Stuck',1),(8,3,8386,'Attacking',1),(8,3,9077,'Leather',1),(8,3,9078,'Cloth',1),(8,3,9125,'Generic',1),(8,3,13358,'Defensive State(DND)',1),(8,3,20554,'Berserking',1),(8,3,20555,'Regeneration',1),(8,3,20557,'Beast Slaying',1),(8,3,20558,'Throwing Specialization',1),(8,3,21651,'Opening',1),(8,3,21652,'Closing',1),(8,3,22027,'Remove Insignia',1),(8,3,22810,'Opening - No Text',1),(8,3,24949,'Defensive State 2(DND)',1),(8,3,26290,'Bow Specialization',1),(8,3,34082,'Advantaged State(DND)',1),(8,4,81,'Dodge',1),(8,4,203,'Unarmed',1),(8,4,204,'Defense',1),(8,4,522,'SPELLDEFENSE(DND)',1),(8,4,669,'Language Orcish',1),(8,4,1180,'Daggers',1),(8,4,1752,'Sinister Strike',1),(8,4,2098,'Eviscerate',1),(8,4,2382,'Generic',1),(8,4,2479,'Honorless Target',1),(8,4,2567,'Thrown',1),(8,4,2764,'Throw',1),(8,4,3050,'Detect',1),(8,4,3365,'Opening',1),(8,4,6233,'Closing',1),(8,4,6246,'Closing',1),(8,4,6247,'Opening',1),(8,4,6477,'Opening',1),(8,4,6478,'Opening',1),(8,4,6603,'Attack',1),(8,4,7266,'Duel',1),(8,4,7267,'Grovel',1),(8,4,7341,'Language Troll',1),(8,4,7355,'Stuck',1),(8,4,8386,'Attacking',1),(8,4,9077,'Leather',1),(8,4,9078,'Cloth',1),(8,4,9125,'Generic',1),(8,4,16092,'Defensive State(DND)',1),(8,4,20555,'Regeneration',1),(8,4,20557,'Beast Slaying',1),(8,4,20558,'Throwing Specialization',1),(8,4,21184,'Rogue Passive(DND)',1),(8,4,21651,'Opening',1),(8,4,21652,'Closing',1),(8,4,22027,'Remove Insignia',1),(8,4,22810,'Opening - No Text',1),(8,4,26290,'Bow Specialization',1),(8,4,26297,'Berserking',1),(8,5,81,'Dodge',1),(8,5,198,'One-Handed Maces',1),(8,5,203,'Unarmed',1),(8,5,204,'Defense',1),(8,5,522,'SPELLDEFENSE(DND)',1),(8,5,585,'Smite',1),(8,5,669,'Language Orcish',1),(8,5,2050,'Lesser Heal',1),(8,5,2382,'Generic',1),(8,5,2479,'Honorless Target',1),(8,5,3050,'Detect',1),(8,5,3365,'Opening',1),(8,5,5009,'Wands',1),(8,5,5019,'Shoot',1),(8,5,6233,'Closing',1),(8,5,6246,'Closing',1),(8,5,6247,'Opening',1),(8,5,6477,'Opening',1),(8,5,6478,'Opening',1),(8,5,6603,'Attack',1),(8,5,7266,'Duel',1),(8,5,7267,'Grovel',1),(8,5,7341,'Language Troll',1),(8,5,7355,'Stuck',1),(8,5,8386,'Attacking',1),(8,5,9078,'Cloth',1),(8,5,9125,'Generic',1),(8,5,20554,'Berserking',1),(8,5,20555,'Regeneration',1),(8,5,20557,'Beast Slaying',1),(8,5,20558,'Throwing Specialization',1),(8,5,21651,'Opening',1),(8,5,21652,'Closing',1),(8,5,22027,'Remove Insignia',1),(8,5,22810,'Opening - No Text',1),(8,5,26290,'Bow Specialization',1),(8,7,81,'Dodge',1),(8,7,107,'Block',1),(8,7,198,'One-Handed Maces',1),(8,7,203,'Unarmed',1),(8,7,204,'Defense',1),(8,7,227,'Staves',1),(8,7,331,'Healing Wave',1),(8,7,403,'Lightning Bolt',1),(8,7,522,'SPELLDEFENSE(DND)',1),(8,7,669,'Language Orcish',1),(8,7,2382,'Generic',1),(8,7,2479,'Honorless Target',1),(8,7,3050,'Detect',1),(8,7,3365,'Opening',1),(8,7,6233,'Closing',1),(8,7,6246,'Closing',1),(8,7,6247,'Opening',1),(8,7,6477,'Opening',1),(8,7,6478,'Opening',1),(8,7,6603,'Attack',1),(8,7,7266,'Duel',1),(8,7,7267,'Grovel',1),(8,7,7341,'Language Troll',1),(8,7,7355,'Stuck',1),(8,7,8386,'Attacking',1),(8,7,9077,'Leather',1),(8,7,9078,'Cloth',1),(8,7,9116,'Shield',1),(8,7,9125,'Generic',1),(8,7,20554,'Berserking',1),(8,7,20555,'Regeneration',1),(8,7,20557,'Beast Slaying',1),(8,7,20558,'Throwing Specialization',1),(8,7,21651,'Opening',1),(8,7,21652,'Closing',1),(8,7,22027,'Remove Insignia',1),(8,7,22810,'Opening - No Text',1),(8,7,26290,'Bow Specialization',1),(8,7,27763,'Totem',1),(8,8,81,'Dodge',1),(8,8,133,'Fireball',1),(8,8,168,'Frost Armor',1),(8,8,203,'Unarmed',1),(8,8,204,'Defense',1),(8,8,227,'Staves',1),(8,8,522,'SPELLDEFENSE(DND)',1),(8,8,669,'Language Orcish',1),(8,8,2382,'Generic',1),(8,8,2479,'Honorless Target',1),(8,8,3050,'Detect',1),(8,8,3365,'Opening',1),(8,8,5009,'Wands',1),(8,8,5019,'Shoot',1),(8,8,6233,'Closing',1),(8,8,6246,'Closing',1),(8,8,6247,'Opening',1),(8,8,6477,'Opening',1),(8,8,6478,'Opening',1),(8,8,6603,'Attack',1),(8,8,7266,'Duel',1),(8,8,7267,'Grovel',1),(8,8,7341,'Language Troll',1),(8,8,7355,'Stuck',1),(8,8,8386,'Attacking',1),(8,8,9078,'Cloth',1),(8,8,9125,'Generic',1),(8,8,20554,'Berserking',1),(8,8,20555,'Regeneration',1),(8,8,20557,'Beast Slaying',1),(8,8,20558,'Throwing Specialization',1),(8,8,21651,'Opening',1),(8,8,21652,'Closing',1),(8,8,22027,'Remove Insignia',1),(8,8,22810,'Opening - No Text',1),(8,8,26290,'Bow Specialization',1),(1,1,2048,NULL,1),(1,1,30324,NULL,1),(1,1,11578,NULL,1),(1,1,25208,NULL,1),(1,1,25264,NULL,1),(1,1,2687,NULL,1),(1,1,71,NULL,1),(1,1,25225,NULL,1),(1,1,355,NULL,1),(1,1,11585,NULL,1),(1,1,29704,NULL,1),(1,1,25203,NULL,1),(1,1,30357,NULL,1),(1,1,25266,NULL,1),(1,1,2565,NULL,1),(1,1,676,NULL,1),(1,1,25231,NULL,1),(1,1,20230,NULL,1),(1,1,5246,NULL,1),(1,1,25236,NULL,1),(1,1,1161,NULL,1),(1,1,871,NULL,1),(1,1,2458,NULL,1),(1,1,25275,NULL,1),(1,1,25242,NULL,1),(1,1,18499,NULL,1),(1,1,1680,NULL,1),(1,1,6554,NULL,1),(1,1,1719,NULL,1),(1,1,34428,NULL,1),(1,1,23920,NULL,1),(1,1,469,NULL,1),(1,1,3411,NULL,1),(2,1,2048,NULL,1),(2,1,30324,NULL,1),(2,1,11578,NULL,1),(2,1,25208,NULL,1),(2,1,25264,NULL,1),(2,1,2687,NULL,1),(2,1,71,NULL,1),(2,1,25225,NULL,1),(2,1,355,NULL,1),(2,1,11585,NULL,1),(2,1,29704,NULL,1),(2,1,25203,NULL,1),(2,1,30357,NULL,1),(2,1,25266,NULL,1),(2,1,2565,NULL,1),(2,1,676,NULL,1),(2,1,25231,NULL,1),(2,1,20230,NULL,1),(2,1,5246,NULL,1),(2,1,25236,NULL,1),(2,1,1161,NULL,1),(2,1,871,NULL,1),(2,1,2458,NULL,1),(2,1,25275,NULL,1),(2,1,25242,NULL,1),(2,1,18499,NULL,1),(2,1,1680,NULL,1),(2,1,6554,NULL,1),(2,1,1719,NULL,1),(2,1,34428,NULL,1),(2,1,23920,NULL,1),(2,1,469,NULL,1),(2,1,3411,NULL,1),(3,1,2048,NULL,1),(3,1,30324,NULL,1),(3,1,11578,NULL,1),(3,1,25208,NULL,1),(3,1,25264,NULL,1),(3,1,2687,NULL,1),(3,1,71,NULL,1),(3,1,25225,NULL,1),(3,1,355,NULL,1),(3,1,11585,NULL,1),(3,1,29704,NULL,1),(3,1,25203,NULL,1),(3,1,30357,NULL,1),(3,1,25266,NULL,1),(3,1,2565,NULL,1),(3,1,676,NULL,1),(3,1,25231,NULL,1),(3,1,20230,NULL,1),(3,1,5246,NULL,1),(3,1,25236,NULL,1),(3,1,1161,NULL,1),(3,1,871,NULL,1),(3,1,2458,NULL,1),(3,1,25275,NULL,1),(3,1,25242,NULL,1),(3,1,18499,NULL,1),(3,1,1680,NULL,1),(3,1,6554,NULL,1),(3,1,1719,NULL,1),(3,1,34428,NULL,1),(3,1,23920,NULL,1),(3,1,469,NULL,1),(3,1,3411,NULL,1),(4,1,2048,NULL,1),(4,1,30324,NULL,1),(4,1,11578,NULL,1),(4,1,25208,NULL,1),(4,1,25264,NULL,1),(4,1,2687,NULL,1),(4,1,71,NULL,1),(4,1,25225,NULL,1),(4,1,355,NULL,1),(4,1,11585,NULL,1),(4,1,29704,NULL,1),(4,1,25203,NULL,1),(4,1,30357,NULL,1),(4,1,25266,NULL,1),(4,1,2565,NULL,1),(4,1,676,NULL,1),(4,1,25231,NULL,1),(4,1,20230,NULL,1),(4,1,5246,NULL,1),(4,1,25236,NULL,1),(4,1,1161,NULL,1),(4,1,871,NULL,1),(4,1,2458,NULL,1),(4,1,25275,NULL,1),(4,1,25242,NULL,1),(4,1,18499,NULL,1),(4,1,1680,NULL,1),(4,1,6554,NULL,1),(4,1,1719,NULL,1),(4,1,34428,NULL,1),(4,1,23920,NULL,1),(4,1,469,NULL,1),(4,1,3411,NULL,1),(5,1,2048,NULL,1),(5,1,30324,NULL,1),(5,1,11578,NULL,1),(5,1,25208,NULL,1),(5,1,25264,NULL,1),(5,1,2687,NULL,1),(5,1,71,NULL,1),(5,1,25225,NULL,1),(5,1,355,NULL,1),(5,1,11585,NULL,1),(5,1,29704,NULL,1),(5,1,25203,NULL,1),(5,1,30357,NULL,1),(5,1,25266,NULL,1),(5,1,2565,NULL,1),(5,1,676,NULL,1),(5,1,25231,NULL,1),(5,1,20230,NULL,1),(5,1,5246,NULL,1),(5,1,25236,NULL,1),(5,1,1161,NULL,1),(5,1,871,NULL,1),(5,1,2458,NULL,1),(5,1,25275,NULL,1),(5,1,25242,NULL,1),(5,1,18499,NULL,1),(5,1,1680,NULL,1),(5,1,6554,NULL,1),(5,1,1719,NULL,1),(5,1,34428,NULL,1),(5,1,23920,NULL,1),(5,1,469,NULL,1),(5,1,3411,NULL,1),(6,1,2048,NULL,1),(6,1,30324,NULL,1),(6,1,11578,NULL,1),(6,1,25208,NULL,1),(6,1,25264,NULL,1),(6,1,2687,NULL,1),(6,1,71,NULL,1),(6,1,25225,NULL,1),(6,1,355,NULL,1),(6,1,11585,NULL,1),(6,1,29704,NULL,1),(6,1,25203,NULL,1),(6,1,30357,NULL,1),(6,1,25266,NULL,1),(6,1,2565,NULL,1),(6,1,676,NULL,1),(6,1,25231,NULL,1),(6,1,20230,NULL,1),(6,1,5246,NULL,1),(6,1,25236,NULL,1),(6,1,1161,NULL,1),(6,1,871,NULL,1),(6,1,2458,NULL,1),(6,1,25275,NULL,1),(6,1,25242,NULL,1),(6,1,18499,NULL,1),(6,1,1680,NULL,1),(6,1,6554,NULL,1),(6,1,1719,NULL,1),(6,1,34428,NULL,1),(6,1,23920,NULL,1),(6,1,469,NULL,1),(6,1,3411,NULL,1),(7,1,2048,NULL,1),(7,1,30324,NULL,1),(7,1,11578,NULL,1),(7,1,25208,NULL,1),(7,1,25264,NULL,1),(7,1,2687,NULL,1),(7,1,71,NULL,1),(7,1,25225,NULL,1),(7,1,355,NULL,1),(7,1,11585,NULL,1),(7,1,29704,NULL,1),(7,1,25203,NULL,1),(7,1,30357,NULL,1),(7,1,25266,NULL,1),(7,1,2565,NULL,1),(7,1,676,NULL,1),(7,1,25231,NULL,1),(7,1,20230,NULL,1),(7,1,5246,NULL,1),(7,1,25236,NULL,1),(7,1,1161,NULL,1),(7,1,871,NULL,1),(7,1,2458,NULL,1),(7,1,25275,NULL,1),(7,1,25242,NULL,1),(7,1,18499,NULL,1),(7,1,1680,NULL,1),(7,1,6554,NULL,1),(7,1,1719,NULL,1),(7,1,34428,NULL,1),(7,1,23920,NULL,1),(7,1,469,NULL,1),(7,1,3411,NULL,1),(8,1,2048,NULL,1),(8,1,30324,NULL,1),(8,1,11578,NULL,1),(8,1,25208,NULL,1),(8,1,25264,NULL,1),(8,1,2687,NULL,1),(8,1,71,NULL,1),(8,1,25225,NULL,1),(8,1,355,NULL,1),(8,1,11585,NULL,1),(8,1,29704,NULL,1),(8,1,25203,NULL,1),(8,1,30357,NULL,1),(8,1,25266,NULL,1),(8,1,2565,NULL,1),(8,1,676,NULL,1),(8,1,25231,NULL,1),(8,1,20230,NULL,1),(8,1,5246,NULL,1),(8,1,25236,NULL,1),(8,1,1161,NULL,1),(8,1,871,NULL,1),(8,1,2458,NULL,1),(8,1,25275,NULL,1),(8,1,25242,NULL,1),(8,1,18499,NULL,1),(8,1,1680,NULL,1),(8,1,6554,NULL,1),(8,1,1719,NULL,1),(8,1,34428,NULL,1),(8,1,23920,NULL,1),(8,1,469,NULL,1),(8,1,3411,NULL,1),(2,3,27014,NULL,1),(2,3,1494,NULL,1),(2,3,13163,NULL,1),(2,3,27016,NULL,1),(2,3,27019,NULL,1),(2,3,14325,NULL,1),(2,3,5116,NULL,1),(2,3,27044,NULL,1),(2,3,883,NULL,1),(2,3,2641,NULL,1),(2,3,6991,NULL,1),(2,3,982,NULL,1),(2,3,1515,NULL,1),(2,3,19883,NULL,1),(2,3,27020,NULL,1),(2,3,27046,NULL,1),(2,3,14268,NULL,1),(2,3,6197,NULL,1),(2,3,1002,NULL,1),(2,3,14327,NULL,1),(2,3,27023,NULL,1),(2,3,36916,NULL,1),(2,3,27021,NULL,1),(2,3,19884,NULL,1),(2,3,5118,NULL,1),(2,3,27015,NULL,1),(2,3,14311,NULL,1),(2,3,3043,NULL,1),(2,3,1462,NULL,1),(2,3,19885,NULL,1),(2,3,3045,NULL,1),(2,3,19880,NULL,1),(2,3,13809,NULL,1),(2,3,13161,NULL,1),(2,3,5384,NULL,1),(2,3,1543,NULL,1),(2,3,19878,NULL,1),(2,3,27025,NULL,1),(2,3,27018,NULL,1),(2,3,13159,NULL,1),(2,3,19882,NULL,1),(2,3,27022,NULL,1),(2,3,27045,NULL,1),(2,3,19879,NULL,1),(2,3,19801,NULL,1),(2,3,34120,NULL,1),(2,3,34074,NULL,1),(2,3,34026,NULL,1),(2,3,34600,NULL,1),(2,3,34477,NULL,1),(3,3,27014,NULL,1),(3,3,1494,NULL,1),(3,3,13163,NULL,1),(3,3,27016,NULL,1),(3,3,27019,NULL,1),(3,3,14325,NULL,1),(3,3,5116,NULL,1),(3,3,27044,NULL,1),(3,3,883,NULL,1),(3,3,2641,NULL,1),(3,3,6991,NULL,1),(3,3,982,NULL,1),(3,3,1515,NULL,1),(3,3,19883,NULL,1),(3,3,27020,NULL,1),(3,3,27046,NULL,1),(3,3,14268,NULL,1),(3,3,6197,NULL,1),(3,3,1002,NULL,1),(3,3,14327,NULL,1),(3,3,27023,NULL,1),(3,3,36916,NULL,1),(3,3,27021,NULL,1),(3,3,19884,NULL,1),(3,3,5118,NULL,1),(3,3,27015,NULL,1),(3,3,14311,NULL,1),(3,3,3043,NULL,1),(3,3,1462,NULL,1),(3,3,19885,NULL,1),(3,3,3045,NULL,1),(3,3,19880,NULL,1),(3,3,13809,NULL,1),(3,3,13161,NULL,1),(3,3,5384,NULL,1),(3,3,1543,NULL,1),(3,3,19878,NULL,1),(3,3,27025,NULL,1),(3,3,27018,NULL,1),(3,3,13159,NULL,1),(3,3,19882,NULL,1),(3,3,27022,NULL,1),(3,3,27045,NULL,1),(3,3,19879,NULL,1),(3,3,19801,NULL,1),(3,3,34120,NULL,1),(3,3,34074,NULL,1),(3,3,34026,NULL,1),(3,3,34600,NULL,1),(3,3,34477,NULL,1),(4,3,27014,NULL,1),(4,3,1494,NULL,1),(4,3,13163,NULL,1),(4,3,27016,NULL,1),(4,3,27019,NULL,1),(4,3,14325,NULL,1),(4,3,5116,NULL,1),(4,3,27044,NULL,1),(4,3,883,NULL,1),(4,3,2641,NULL,1),(4,3,6991,NULL,1),(4,3,982,NULL,1),(4,3,1515,NULL,1),(4,3,19883,NULL,1),(4,3,27020,NULL,1),(4,3,27046,NULL,1),(4,3,14268,NULL,1),(4,3,6197,NULL,1),(4,3,1002,NULL,1),(4,3,14327,NULL,1),(4,3,27023,NULL,1),(4,3,36916,NULL,1),(4,3,27021,NULL,1),(4,3,19884,NULL,1),(4,3,5118,NULL,1),(4,3,27015,NULL,1),(4,3,14311,NULL,1),(4,3,3043,NULL,1),(4,3,1462,NULL,1),(4,3,19885,NULL,1),(4,3,3045,NULL,1),(4,3,19880,NULL,1),(4,3,13809,NULL,1),(4,3,13161,NULL,1),(4,3,5384,NULL,1),(4,3,1543,NULL,1),(4,3,19878,NULL,1),(4,3,27025,NULL,1),(4,3,27018,NULL,1),(4,3,13159,NULL,1),(4,3,19882,NULL,1),(4,3,27022,NULL,1),(4,3,27045,NULL,1),(4,3,19879,NULL,1),(4,3,19801,NULL,1),(4,3,34120,NULL,1),(4,3,34074,NULL,1),(4,3,34026,NULL,1),(4,3,34600,NULL,1),(4,3,34477,NULL,1),(6,3,27014,NULL,1),(6,3,1494,NULL,1),(6,3,13163,NULL,1),(6,3,27016,NULL,1),(6,3,27019,NULL,1),(6,3,14325,NULL,1),(6,3,5116,NULL,1),(6,3,27044,NULL,1),(6,3,883,NULL,1),(6,3,2641,NULL,1),(6,3,6991,NULL,1),(6,3,982,NULL,1),(6,3,1515,NULL,1),(6,3,19883,NULL,1),(6,3,27020,NULL,1),(6,3,27046,NULL,1),(6,3,14268,NULL,1),(6,3,6197,NULL,1),(6,3,1002,NULL,1),(6,3,14327,NULL,1),(6,3,27023,NULL,1),(6,3,36916,NULL,1),(6,3,27021,NULL,1),(6,3,19884,NULL,1),(6,3,5118,NULL,1),(6,3,27015,NULL,1),(6,3,14311,NULL,1),(6,3,3043,NULL,1),(6,3,1462,NULL,1),(6,3,19885,NULL,1),(6,3,3045,NULL,1),(6,3,19880,NULL,1),(6,3,13809,NULL,1),(6,3,13161,NULL,1),(6,3,5384,NULL,1),(6,3,1543,NULL,1),(6,3,19878,NULL,1),(6,3,27025,NULL,1),(6,3,27018,NULL,1),(6,3,13159,NULL,1),(6,3,19882,NULL,1),(6,3,27022,NULL,1),(6,3,27045,NULL,1),(6,3,19879,NULL,1),(6,3,19801,NULL,1),(6,3,34120,NULL,1),(6,3,34074,NULL,1),(6,3,34026,NULL,1),(6,3,34600,NULL,1),(6,3,34477,NULL,1),(8,3,27014,NULL,1),(8,3,1494,NULL,1),(8,3,13163,NULL,1),(8,3,27016,NULL,1),(8,3,27019,NULL,1),(8,3,14325,NULL,1),(8,3,5116,NULL,1),(8,3,27044,NULL,1),(8,3,883,NULL,1),(8,3,2641,NULL,1),(8,3,6991,NULL,1),(8,3,982,NULL,1),(8,3,1515,NULL,1),(8,3,19883,NULL,1),(8,3,27020,NULL,1),(8,3,27046,NULL,1),(8,3,14268,NULL,1),(8,3,6197,NULL,1),(8,3,1002,NULL,1),(8,3,14327,NULL,1),(8,3,27023,NULL,1),(8,3,36916,NULL,1),(8,3,27021,NULL,1),(8,3,19884,NULL,1),(8,3,5118,NULL,1),(8,3,27015,NULL,1),(8,3,14311,NULL,1),(8,3,3043,NULL,1),(8,3,1462,NULL,1),(8,3,19885,NULL,1),(8,3,3045,NULL,1),(8,3,19880,NULL,1),(8,3,13809,NULL,1),(8,3,13161,NULL,1),(8,3,5384,NULL,1),(8,3,1543,NULL,1),(8,3,19878,NULL,1),(8,3,27025,NULL,1),(8,3,27018,NULL,1),(8,3,13159,NULL,1),(8,3,19882,NULL,1),(8,3,27022,NULL,1),(8,3,27045,NULL,1),(8,3,19879,NULL,1),(8,3,19801,NULL,1),(8,3,34120,NULL,1),(8,3,34074,NULL,1),(8,3,34026,NULL,1),(8,3,34600,NULL,1),(8,3,34477,NULL,1),(1,2,27149,NULL,1),(1,2,27136,NULL,1),(1,2,27155,NULL,1),(1,2,27140,NULL,1),(1,2,20271,NULL,1),(1,2,27158,NULL,1),(1,2,10308,NULL,1),(1,2,10278,NULL,1),(1,2,27154,NULL,1),(1,2,20773,NULL,1),(1,2,27142,NULL,1),(1,2,31789,NULL,1),(1,2,27150,NULL,1),(1,2,25780,NULL,1),(1,2,1044,NULL,1),(1,2,33776,NULL,1),(1,2,27173,NULL,1),(1,2,27138,NULL,1),(1,2,27137,NULL,1),(1,2,5502,NULL,1),(1,2,19746,NULL,1),(1,2,31895,NULL,1),(1,2,5627,NULL,1),(1,2,1038,NULL,1),(1,2,27151,NULL,1),(1,2,19752,NULL,1),(1,2,27160,NULL,1),(1,2,27152,NULL,1),(1,2,1020,NULL,1),(1,2,27153,NULL,1),(1,2,27166,NULL,1),(1,2,27144,NULL,1),(1,2,4987,NULL,1),(1,2,27180,NULL,1),(1,2,27148,NULL,1),(1,2,27139,NULL,1),(1,2,27141,NULL,1),(1,2,10326,NULL,1),(1,2,27143,NULL,1),(1,2,25898,NULL,1),(1,2,27145,NULL,1),(1,2,25895,NULL,1),(1,2,32223,NULL,1),(1,2,27169,NULL,1),(1,2,31884,NULL,1),(3,2,27149,NULL,1),(3,2,27136,NULL,1),(3,2,27155,NULL,1),(3,2,27140,NULL,1),(3,2,20271,NULL,1),(3,2,27158,NULL,1),(3,2,10308,NULL,1),(3,2,10278,NULL,1),(3,2,27154,NULL,1),(3,2,20773,NULL,1),(3,2,27142,NULL,1),(3,2,31789,NULL,1),(3,2,27150,NULL,1),(3,2,25780,NULL,1),(3,2,1044,NULL,1),(3,2,33776,NULL,1),(3,2,27173,NULL,1),(3,2,27138,NULL,1),(3,2,27137,NULL,1),(3,2,5502,NULL,1),(3,2,19746,NULL,1),(3,2,31895,NULL,1),(3,2,5627,NULL,1),(3,2,1038,NULL,1),(3,2,27151,NULL,1),(3,2,19752,NULL,1),(3,2,27160,NULL,1),(3,2,27152,NULL,1),(3,2,1020,NULL,1),(3,2,27153,NULL,1),(3,2,27166,NULL,1),(3,2,27144,NULL,1),(3,2,4987,NULL,1),(3,2,27180,NULL,1),(3,2,27148,NULL,1),(3,2,27139,NULL,1),(3,2,27141,NULL,1),(3,2,10326,NULL,1),(3,2,27143,NULL,1),(3,2,25898,NULL,1),(3,2,27145,NULL,1),(3,2,25895,NULL,1),(3,2,32223,NULL,1),(3,2,27169,NULL,1),(3,2,31884,NULL,1),(1,4,26865,NULL,1),(1,4,26862,NULL,1),(1,4,1787,NULL,1),(1,4,26863,NULL,1),(1,4,921,NULL,1),(1,4,38764,NULL,1),(1,4,26669,NULL,1),(1,4,11297,NULL,1),(1,4,6774,NULL,1),(1,4,11305,NULL,1),(1,4,38768,NULL,1),(1,4,26866,NULL,1),(1,4,26884,NULL,1),(1,4,27448,NULL,1),(1,4,1804,NULL,1),(1,4,27441,NULL,1),(1,4,2842,NULL,1),(1,4,1725,NULL,1),(1,4,26867,NULL,1),(1,4,26889,NULL,1),(1,4,1833,NULL,1),(1,4,1842,NULL,1),(1,4,408,NULL,1),(1,4,2094,NULL,1),(1,4,32684,NULL,1),(1,4,26679,NULL,1),(1,4,31224,NULL,1),(1,4,5938,NULL,1),(2,4,26865,NULL,1),(2,4,26862,NULL,1),(2,4,1787,NULL,1),(2,4,26863,NULL,1),(2,4,921,NULL,1),(2,4,38764,NULL,1),(2,4,26669,NULL,1),(2,4,11297,NULL,1),(2,4,6774,NULL,1),(2,4,11305,NULL,1),(2,4,38768,NULL,1),(2,4,26866,NULL,1),(2,4,26884,NULL,1),(2,4,27448,NULL,1),(2,4,1804,NULL,1),(2,4,27441,NULL,1),(2,4,2842,NULL,1),(2,4,1725,NULL,1),(2,4,26867,NULL,1),(2,4,26889,NULL,1),(2,4,1833,NULL,1),(2,4,1842,NULL,1),(2,4,408,NULL,1),(2,4,2094,NULL,1),(2,4,32684,NULL,1),(2,4,26679,NULL,1),(2,4,31224,NULL,1),(2,4,5938,NULL,1),(3,4,26865,NULL,1),(3,4,26862,NULL,1),(3,4,1787,NULL,1),(3,4,26863,NULL,1),(3,4,921,NULL,1),(3,4,38764,NULL,1),(3,4,26669,NULL,1),(3,4,11297,NULL,1),(3,4,6774,NULL,1),(3,4,11305,NULL,1),(3,4,38768,NULL,1),(3,4,26866,NULL,1),(3,4,26884,NULL,1),(3,4,27448,NULL,1),(3,4,1804,NULL,1),(3,4,27441,NULL,1),(3,4,2842,NULL,1),(3,4,1725,NULL,1),(3,4,26867,NULL,1),(3,4,26889,NULL,1),(3,4,1833,NULL,1),(3,4,1842,NULL,1),(3,4,408,NULL,1),(3,4,2094,NULL,1),(3,4,32684,NULL,1),(3,4,26679,NULL,1),(3,4,31224,NULL,1),(3,4,5938,NULL,1),(4,4,26865,NULL,1),(4,4,26862,NULL,1),(4,4,1787,NULL,1),(4,4,26863,NULL,1),(4,4,921,NULL,1),(4,4,38764,NULL,1),(4,4,26669,NULL,1),(4,4,11297,NULL,1),(4,4,6774,NULL,1),(4,4,11305,NULL,1),(4,4,38768,NULL,1),(4,4,26866,NULL,1),(4,4,426884,NULL,1),(4,4,427448,NULL,1),(4,4,1804,NULL,1),(4,4,27441,NULL,1),(4,4,2842,NULL,1),(4,4,1725,NULL,1),(4,4,26867,NULL,1),(4,4,26889,NULL,1),(4,4,1833,NULL,1),(4,4,1842,NULL,1),(4,4,408,NULL,1),(4,4,2094,NULL,1),(4,4,32684,NULL,1),(4,4,26679,NULL,1),(4,4,31224,NULL,1),(4,4,5938,NULL,1),(5,4,26865,NULL,1),(5,4,26862,NULL,1),(5,4,1787,NULL,1),(5,4,26863,NULL,1),(5,4,921,NULL,1),(5,4,38764,NULL,1),(5,4,26669,NULL,1),(5,4,11297,NULL,1),(5,4,6774,NULL,1),(5,4,11305,NULL,1),(5,4,38768,NULL,1),(5,4,26866,NULL,1),(5,4,26884,NULL,1),(5,4,27448,NULL,1),(5,4,1804,NULL,1),(5,4,27441,NULL,1),(5,4,2842,NULL,1),(5,4,1725,NULL,1),(5,4,26867,NULL,1),(5,4,26889,NULL,1),(5,4,1833,NULL,1),(5,4,1842,NULL,1),(5,4,408,NULL,1),(5,4,2094,NULL,1),(5,4,32684,NULL,1),(5,4,26679,NULL,1),(5,4,31224,NULL,1),(5,4,5938,NULL,1),(7,4,26865,NULL,1),(7,4,26862,NULL,1),(7,4,1787,NULL,1),(7,4,26863,NULL,1),(7,4,921,NULL,1),(7,4,38764,NULL,1),(7,4,26669,NULL,1),(7,4,11297,NULL,1),(7,4,6774,NULL,1),(7,4,11305,NULL,1),(7,4,38768,NULL,1),(7,4,26866,NULL,1),(7,4,26884,NULL,1),(7,4,27448,NULL,1),(7,4,1804,NULL,1),(7,4,27441,NULL,1),(7,4,2842,NULL,1),(7,4,1725,NULL,1),(7,4,26867,NULL,1),(7,4,26889,NULL,1),(7,4,1833,NULL,1),(7,4,1842,NULL,1),(7,4,408,NULL,1),(7,4,2094,NULL,1),(7,4,32684,NULL,1),(7,4,26679,NULL,1),(7,4,31224,NULL,1),(7,4,5938,NULL,1),(8,4,26865,NULL,1),(8,4,26862,NULL,1),(8,4,1787,NULL,1),(8,4,26863,NULL,1),(8,4,921,NULL,1),(8,4,38764,NULL,1),(8,4,26669,NULL,1),(8,4,11297,NULL,1),(8,4,6774,NULL,1),(8,4,11305,NULL,1),(8,4,38768,NULL,1),(8,4,26866,NULL,1),(8,4,26884,NULL,1),(8,4,27448,NULL,1),(8,4,1804,NULL,1),(8,4,27441,NULL,1),(8,4,2842,NULL,1),(8,4,1725,NULL,1),(8,4,26867,NULL,1),(8,4,26889,NULL,1),(8,4,1833,NULL,1),(8,4,1842,NULL,1),(8,4,408,NULL,1),(8,4,2094,NULL,1),(8,4,32684,NULL,1),(8,4,26679,NULL,1),(8,4,31224,NULL,1),(8,4,5938,NULL,1),(1,9,27215,NULL,1),(1,9,27209,NULL,1),(1,9,27216,NULL,1),(1,9,30909,NULL,1),(1,9,27222,NULL,1),(1,9,27218,NULL,1),(1,9,6215,NULL,1),(1,9,27230,NULL,1),(1,9,27217,NULL,1),(1,9,27259,NULL,1),(1,9,27226,NULL,1),(1,9,27220,NULL,1),(1,9,5697,NULL,1),(1,9,27238,NULL,1),(1,9,30459,NULL,1),(1,9,27260,NULL,1),(1,9,27212,NULL,1),(1,9,698,NULL,1),(1,9,5500,NULL,1),(1,9,30908,NULL,1),(1,9,11719,NULL,1),(1,9,132,NULL,1),(1,9,18647,NULL,1),(1,9,27213,NULL,1),(1,9,11726,NULL,1),(1,9,27228,NULL,1),(1,9,28610,NULL,1),(1,9,28172,NULL,1),(1,9,27250,NULL,1),(1,9,17928,NULL,1),(1,9,27223,NULL,1),(1,9,27229,NULL,1),(1,9,30545,NULL,1),(1,9,30910,NULL,1),(1,9,18540,NULL,1),(1,9,28189,NULL,1),(1,9,32231,NULL,1),(1,9,29858,NULL,1),(1,9,29893,NULL,1),(1,9,27243,NULL,1),(2,9,27215,NULL,1),(2,9,27209,NULL,1),(2,9,27216,NULL,1),(2,9,30909,NULL,1),(2,9,27222,NULL,1),(2,9,27218,NULL,1),(2,9,6215,NULL,1),(2,9,27230,NULL,1),(2,9,27217,NULL,1),(2,9,27259,NULL,1),(2,9,27226,NULL,1),(2,9,27220,NULL,1),(2,9,5697,NULL,1),(2,9,27238,NULL,1),(2,9,30459,NULL,1),(2,9,27260,NULL,1),(2,9,27212,NULL,1),(2,9,698,NULL,1),(2,9,5500,NULL,1),(2,9,30908,NULL,1),(2,9,11719,NULL,1),(2,9,132,NULL,1),(2,9,18647,NULL,1),(2,9,27213,NULL,1),(2,9,11726,NULL,1),(2,9,27228,NULL,1),(2,9,28610,NULL,1),(2,9,28172,NULL,1),(2,9,27250,NULL,1),(2,9,17928,NULL,1),(2,9,27223,NULL,1),(2,9,27229,NULL,1),(2,9,30545,NULL,1),(2,9,30910,NULL,1),(2,9,18540,NULL,1),(2,9,28189,NULL,1),(2,9,32231,NULL,1),(2,9,29858,NULL,1),(2,9,29893,NULL,1),(2,9,27243,NULL,1),(5,9,27215,NULL,1),(5,9,27209,NULL,1),(5,9,27216,NULL,1),(5,9,30909,NULL,1),(5,9,27222,NULL,1),(5,9,27218,NULL,1),(5,9,6215,NULL,1),(5,9,27230,NULL,1),(5,9,27217,NULL,1),(5,9,27259,NULL,1),(5,9,27226,NULL,1),(5,9,27220,NULL,1),(5,9,5697,NULL,1),(5,9,27238,NULL,1),(5,9,30459,NULL,1),(5,9,27260,NULL,1),(5,9,27212,NULL,1),(5,9,698,NULL,1),(5,9,5500,NULL,1),(5,9,30908,NULL,1),(5,9,11719,NULL,1),(5,9,132,NULL,1),(5,9,18647,NULL,1),(5,9,27213,NULL,1),(5,9,11726,NULL,1),(5,9,27228,NULL,1),(5,9,28610,NULL,1),(5,9,28172,NULL,1),(5,9,27250,NULL,1),(5,9,17928,NULL,1),(5,9,27223,NULL,1),(5,9,27229,NULL,1),(5,9,30545,NULL,1),(5,9,30910,NULL,1),(5,9,18540,NULL,1),(5,9,28189,NULL,1),(5,9,32231,NULL,1),(5,9,29858,NULL,1),(5,9,29893,NULL,1),(5,9,27243,NULL,1),(7,9,27215,NULL,1),(7,9,27209,NULL,1),(7,9,27216,NULL,1),(7,9,30909,NULL,1),(7,9,27222,NULL,1),(7,9,27218,NULL,1),(7,9,6215,NULL,1),(7,9,27230,NULL,1),(7,9,27217,NULL,1),(7,9,27259,NULL,1),(7,9,27226,NULL,1),(7,9,27220,NULL,1),(7,9,5697,NULL,1),(7,9,27238,NULL,1),(7,9,30459,NULL,1),(7,9,27260,NULL,1),(7,9,27212,NULL,1),(7,9,698,NULL,1),(7,9,5500,NULL,1),(7,9,30908,NULL,1),(7,9,11719,NULL,1),(7,9,132,NULL,1),(7,9,18647,NULL,1),(7,9,27213,NULL,1),(7,9,11726,NULL,1),(7,9,27228,NULL,1),(7,9,28610,NULL,1),(7,9,28172,NULL,1),(7,9,27250,NULL,1),(7,9,17928,NULL,1),(7,9,27223,NULL,1),(7,9,27229,NULL,1),(7,9,30545,NULL,1),(7,9,30910,NULL,1),(7,9,18540,NULL,1),(7,9,28189,NULL,1),(7,9,32231,NULL,1),(7,9,29858,NULL,1),(7,9,29893,NULL,1),(7,9,27243,NULL,1),(4,11,26979,NULL,1),(4,11,26990,NULL,1),(4,11,26985,NULL,1),(4,11,26988,NULL,1),(4,11,26982,NULL,1),(4,11,26992,NULL,1),(4,11,26989,NULL,1),(4,11,26998,NULL,1),(4,11,6795,NULL,1),(4,11,26996,NULL,1),(4,11,18960,NULL,1),(4,11,9634,NULL,1),(4,11,768,NULL,1),(4,11,783,NULL,1),(4,11,1066,NULL,1),(4,11,40120,NULL,1),(4,11,5229,NULL,1),(4,11,26980,NULL,1),(4,11,8983,NULL,1),(4,11,8946,NULL,1),(4,11,26997,NULL,1),(4,11,26993,NULL,1),(4,11,18658,NULL,1),(4,11,27000,NULL,1),(4,11,9913,NULL,1),(4,11,26994,NULL,1),(4,11,27008,NULL,1),(4,11,26986,NULL,1),(4,11,27002,NULL,1),(4,11,26995,NULL,1),(4,11,27003,NULL,1),(4,11,2782,NULL,1),(4,11,9846,NULL,1),(4,11,2893,NULL,1),(4,11,33357,NULL,1),(4,11,5209,NULL,1),(4,11,27004,NULL,1),(4,11,26983,NULL,1),(4,11,24248,NULL,1),(4,11,27005,NULL,1),(4,11,5225,NULL,1),(4,11,26999,NULL,1),(4,11,27012,NULL,1),(4,11,27006,NULL,1),(4,11,29166,NULL,1),(4,11,22812,NULL,1),(4,11,26991,NULL,1),(4,11,22570,NULL,1),(4,11,33763,NULL,1),(4,11,33745,NULL,1),(4,11,33786,NULL,1),(6,11,26979,NULL,1),(6,11,26990,NULL,1),(6,11,26985,NULL,1),(6,11,26988,NULL,1),(6,11,26982,NULL,1),(6,11,26992,NULL,1),(6,11,26989,NULL,1),(6,11,26998,NULL,1),(6,11,6795,NULL,1),(6,11,26996,NULL,1),(6,11,18960,NULL,1),(6,11,9634,NULL,1),(6,11,768,NULL,1),(6,11,783,NULL,1),(6,11,1066,NULL,1),(6,11,40120,NULL,1),(6,11,5229,NULL,1),(6,11,26980,NULL,1),(6,11,8983,NULL,1),(6,11,8946,NULL,1),(6,11,26997,NULL,1),(6,11,26993,NULL,1),(6,11,18658,NULL,1),(6,11,27000,NULL,1),(6,11,9913,NULL,1),(6,11,26994,NULL,1),(6,11,27008,NULL,1),(6,11,26986,NULL,1),(6,11,27002,NULL,1),(6,11,26995,NULL,1),(6,11,27003,NULL,1),(6,11,2782,NULL,1),(6,11,9846,NULL,1),(6,11,2893,NULL,1),(6,11,33357,NULL,1),(6,11,5209,NULL,1),(6,11,27004,NULL,1),(6,11,26983,NULL,1),(6,11,24248,NULL,1),(6,11,27005,NULL,1),(6,11,5225,NULL,1),(6,11,26999,NULL,1),(6,11,27012,NULL,1),(6,11,27006,NULL,1),(6,11,29166,NULL,1),(6,11,22812,NULL,1),(6,11,26991,NULL,1),(6,11,22570,NULL,1),(6,11,33763,NULL,1),(6,11,33745,NULL,1),(6,11,33786,NULL,1),(1,8,27126,NULL,1),(1,8,27070,NULL,1),(1,8,22018,NULL,1),(1,8,27072,NULL,1),(1,8,22019,NULL,1),(1,8,27079,NULL,1),(1,8,38704,NULL,1),(1,8,28272,NULL,1),(1,8,28271,NULL,1),(1,8,12826,NULL,1),(1,8,27088,NULL,1),(1,8,33944,NULL,1),(1,8,130,NULL,1),(1,8,27082,NULL,1),(1,8,27086,NULL,1),(1,8,33946,NULL,1),(1,8,475,NULL,1),(1,8,1953,NULL,1),(1,8,27085,NULL,1),(1,8,12051,NULL,1),(1,8,27128,NULL,1),(1,8,27131,NULL,1),(1,8,32796,NULL,1),(1,8,27074,NULL,1),(1,8,2139,NULL,1),(1,8,27101,NULL,1),(1,8,27124,NULL,1),(1,8,45438,NULL,1),(1,8,27125,NULL,1),(1,8,27127,NULL,1),(1,8,30482,NULL,1),(1,8,30451,NULL,1),(1,8,30455,NULL,1),(1,8,66,NULL,1),(1,8,43987,NULL,1),(1,8,30449,NULL,1),(5,8,27126,NULL,1),(5,8,27070,NULL,1),(5,8,22018,NULL,1),(5,8,27072,NULL,1),(5,8,22019,NULL,1),(5,8,27079,NULL,1),(5,8,38704,NULL,1),(5,8,28272,NULL,1),(5,8,28271,NULL,1),(5,8,12826,NULL,1),(5,8,27088,NULL,1),(5,8,33944,NULL,1),(5,8,130,NULL,1),(5,8,27082,NULL,1),(5,8,27086,NULL,1),(5,8,33946,NULL,1),(5,8,475,NULL,1),(5,8,1953,NULL,1),(5,8,27085,NULL,1),(5,8,12051,NULL,1),(5,8,27128,NULL,1),(5,8,27131,NULL,1),(5,8,32796,NULL,1),(5,8,27074,NULL,1),(5,8,2139,NULL,1),(5,8,27101,NULL,1),(5,8,27124,NULL,1),(5,8,45438,NULL,1),(5,8,27125,NULL,1),(5,8,27127,NULL,1),(5,8,30482,NULL,1),(5,8,30451,NULL,1),(5,8,30455,NULL,1),(5,8,66,NULL,1),(5,8,43987,NULL,1),(5,8,30449,NULL,1),(7,8,27126,NULL,1),(7,8,27070,NULL,1),(7,8,22018,NULL,1),(7,8,27072,NULL,1),(7,8,22019,NULL,1),(7,8,27079,NULL,1),(7,8,38704,NULL,1),(7,8,28272,NULL,1),(7,8,28271,NULL,1),(7,8,12826,NULL,1),(7,8,27088,NULL,1),(7,8,33944,NULL,1),(7,8,130,NULL,1),(7,8,27082,NULL,1),(7,8,27086,NULL,1),(7,8,33946,NULL,1),(7,8,475,NULL,1),(7,8,1953,NULL,1),(7,8,27085,NULL,1),(7,8,12051,NULL,1),(7,8,27128,NULL,1),(7,8,27131,NULL,1),(7,8,32796,NULL,1),(7,8,27074,NULL,1),(7,8,2139,NULL,1),(7,8,27101,NULL,1),(7,8,27124,NULL,1),(7,8,45438,NULL,1),(7,8,27125,NULL,1),(7,8,27127,NULL,1),(7,8,30482,NULL,1),(7,8,30451,NULL,1),(7,8,30455,NULL,1),(7,8,66,NULL,1),(7,8,43987,NULL,1),(7,8,30449,NULL,1),(8,8,27126,NULL,1),(8,8,27070,NULL,1),(8,8,22018,NULL,1),(8,8,27072,NULL,1),(8,8,22019,NULL,1),(8,8,27079,NULL,1),(8,8,38704,NULL,1),(8,8,28272,NULL,1),(8,8,28271,NULL,1),(8,8,12826,NULL,1),(8,8,27088,NULL,1),(8,8,33944,NULL,1),(8,8,130,NULL,1),(8,8,27082,NULL,1),(8,8,27086,NULL,1),(8,8,33946,NULL,1),(8,8,475,NULL,1),(8,8,1953,NULL,1),(8,8,27085,NULL,1),(8,8,12051,NULL,1),(8,8,27128,NULL,1),(8,8,27131,NULL,1),(8,8,32796,NULL,1),(8,8,27074,NULL,1),(8,8,2139,NULL,1),(8,8,27101,NULL,1),(8,8,27124,NULL,1),(8,8,45438,NULL,1),(8,8,27125,NULL,1),(8,8,27127,NULL,1),(8,8,30482,NULL,1),(8,8,30451,NULL,1),(8,8,30455,NULL,1),(8,8,66,NULL,1),(8,8,43987,NULL,1),(8,8,30449,NULL,1),(1,5,25389,NULL,1),(1,5,25364,NULL,1),(1,5,25368,NULL,1),(1,5,25218,NULL,1),(1,5,25429,NULL,1),(1,5,25222,NULL,1),(1,5,25375,NULL,1),(1,5,25435,NULL,1),(1,5,25431,NULL,1),(1,5,528,NULL,1),(1,5,10890,NULL,1),(1,5,988,NULL,1),(1,5,6346,NULL,1),(1,5,25235,NULL,1),(1,5,25384,NULL,1),(1,5,25596,NULL,1),(1,5,10955,NULL,1),(1,5,10909,NULL,1),(1,5,25380,NULL,1),(1,5,10912,NULL,1),(1,5,25308,NULL,1),(1,5,25433,NULL,1),(1,5,552,NULL,1),(1,5,1706,NULL,1),(1,5,25213,NULL,1),(1,5,25392,NULL,1),(1,5,39374,NULL,1),(1,5,32999,NULL,1),(1,5,32996,NULL,1),(1,5,32546,NULL,1),(1,5,34433,NULL,1),(1,5,33076,NULL,1),(1,5,32375,NULL,1),(3,5,25389,NULL,1),(3,5,25364,NULL,1),(3,5,25368,NULL,1),(3,5,25218,NULL,1),(3,5,25429,NULL,1),(3,5,25222,NULL,1),(3,5,25375,NULL,1),(3,5,25435,NULL,1),(3,5,25431,NULL,1),(3,5,528,NULL,1),(3,5,10890,NULL,1),(3,5,988,NULL,1),(3,5,6346,NULL,1),(3,5,25235,NULL,1),(3,5,25384,NULL,1),(3,5,25596,NULL,1),(3,5,10955,NULL,1),(3,5,10909,NULL,1),(3,5,25380,NULL,1),(3,5,10912,NULL,1),(3,5,25308,NULL,1),(3,5,25433,NULL,1),(3,5,552,NULL,1),(3,5,1706,NULL,1),(3,5,25213,NULL,1),(3,5,25392,NULL,1),(3,5,39374,NULL,1),(3,5,32999,NULL,1),(3,5,32996,NULL,1),(3,5,32546,NULL,1),(3,5,34433,NULL,1),(3,5,33076,NULL,1),(3,5,32375,NULL,1),(4,5,25389,NULL,1),(4,5,25364,NULL,1),(4,5,25368,NULL,1),(4,5,25218,NULL,1),(4,5,25429,NULL,1),(4,5,25222,NULL,1),(4,5,25375,NULL,1),(4,5,25435,NULL,1),(4,5,25431,NULL,1),(4,5,528,NULL,1),(4,5,10890,NULL,1),(4,5,988,NULL,1),(4,5,6346,NULL,1),(4,5,25235,NULL,1),(4,5,25384,NULL,1),(4,5,25596,NULL,1),(4,5,10955,NULL,1),(4,5,10909,NULL,1),(4,5,25380,NULL,1),(4,5,10912,NULL,1),(4,5,25308,NULL,1),(4,5,25433,NULL,1),(4,5,552,NULL,1),(4,5,1706,NULL,1),(4,5,25213,NULL,1),(4,5,25392,NULL,1),(4,5,39374,NULL,1),(4,5,32999,NULL,1),(4,5,32996,NULL,1),(4,5,32546,NULL,1),(4,5,34433,NULL,1),(4,5,33076,NULL,1),(4,5,32375,NULL,1),(5,5,25389,NULL,1),(5,5,25364,NULL,1),(5,5,25368,NULL,1),(5,5,25218,NULL,1),(5,5,25429,NULL,1),(5,5,25222,NULL,1),(5,5,25375,NULL,1),(5,5,25435,NULL,1),(5,5,25431,NULL,1),(5,5,528,NULL,1),(5,5,10890,NULL,1),(5,5,988,NULL,1),(5,5,6346,NULL,1),(5,5,25235,NULL,1),(5,5,25384,NULL,1),(5,5,25596,NULL,1),(5,5,10955,NULL,1),(5,5,10909,NULL,1),(5,5,25380,NULL,1),(5,5,10912,NULL,1),(5,5,25308,NULL,1),(5,5,25433,NULL,1),(5,5,552,NULL,1),(5,5,1706,NULL,1),(5,5,25213,NULL,1),(5,5,25392,NULL,1),(5,5,39374,NULL,1),(5,5,32999,NULL,1),(5,5,32996,NULL,1),(5,5,32546,NULL,1),(5,5,34433,NULL,1),(5,5,33076,NULL,1),(5,5,32375,NULL,1),(8,5,25389,NULL,1),(8,5,25364,NULL,1),(8,5,25368,NULL,1),(8,5,25218,NULL,1),(8,5,25429,NULL,1),(8,5,25222,NULL,1),(8,5,25375,NULL,1),(8,5,25435,NULL,1),(8,5,25431,NULL,1),(8,5,528,NULL,1),(8,5,10890,NULL,1),(8,5,988,NULL,1),(8,5,6346,NULL,1),(8,5,25235,NULL,1),(8,5,25384,NULL,1),(8,5,25596,NULL,1),(8,5,10955,NULL,1),(8,5,10909,NULL,1),(8,5,25380,NULL,1),(8,5,10912,NULL,1),(8,5,25308,NULL,1),(8,5,25433,NULL,1),(8,5,552,NULL,1),(8,5,1706,NULL,1),(8,5,25213,NULL,1),(8,5,25392,NULL,1),(8,5,39374,NULL,1),(8,5,32999,NULL,1),(8,5,32996,NULL,1),(8,5,32546,NULL,1),(8,5,34433,NULL,1),(8,5,33076,NULL,1),(8,5,32375,NULL,1),(2,7,25396,NULL,1),(2,7,25449,NULL,1),(2,7,25485,NULL,1),(2,7,25454,NULL,1),(2,7,25509,NULL,1),(2,7,2484,NULL,1),(2,7,25472,NULL,1),(2,7,25525,NULL,1),(2,7,25457,NULL,1),(2,7,25489,NULL,1),(2,7,25533,NULL,1),(2,7,25528,NULL,1),(2,7,20777,NULL,1),(2,7,25547,NULL,1),(2,7,8012,NULL,1),(2,7,526,NULL,1),(2,7,8143,NULL,1),(2,7,25464,NULL,1),(2,7,25500,NULL,1),(2,7,2645,NULL,1),(2,7,25567,NULL,1),(2,7,25420,NULL,1),(2,7,2870,NULL,1),(2,7,8166,NULL,1),(2,7,131,NULL,1),(2,7,25560,NULL,1),(2,7,6196,NULL,1),(2,7,25552,NULL,1),(2,7,25570,NULL,1),(2,7,25563,NULL,1),(2,7,25557,NULL,1),(2,7,546,NULL,1),(2,7,556,NULL,1),(2,7,8177,NULL,1),(2,7,25574,NULL,1),(2,7,36936,NULL,1),(2,7,25505,NULL,1),(2,7,421,NULL,1),(2,7,25587,NULL,1),(2,7,6495,NULL,1),(2,7,25577,NULL,1),(2,7,8170,NULL,1),(2,7,25423,NULL,1),(2,7,25359,NULL,1),(2,7,25908,NULL,1),(2,7,33736,NULL,1),(2,7,3738,NULL,1),(2,7,2062,NULL,1),(2,7,2894,NULL,1),(2,7,2825,NULL,1),(6,7,25396,NULL,1),(6,7,25449,NULL,1),(6,7,25485,NULL,1),(6,7,25454,NULL,1),(6,7,25509,NULL,1),(6,7,2484,NULL,1),(6,7,25472,NULL,1),(6,7,25525,NULL,1),(6,7,25457,NULL,1),(6,7,25489,NULL,1),(6,7,25533,NULL,1),(6,7,25528,NULL,1),(6,7,20777,NULL,1),(6,7,25547,NULL,1),(6,7,8012,NULL,1),(6,7,526,NULL,1),(6,7,8143,NULL,1),(6,7,25464,NULL,1),(6,7,25500,NULL,1),(6,7,2645,NULL,1),(6,7,25567,NULL,1),(6,7,25420,NULL,1),(6,7,2870,NULL,1),(6,7,8166,NULL,1),(6,7,131,NULL,1),(6,7,25560,NULL,1),(6,7,6196,NULL,1),(6,7,25552,NULL,1),(6,7,25570,NULL,1),(6,7,25563,NULL,1),(6,7,25557,NULL,1),(6,7,546,NULL,1),(6,7,556,NULL,1),(6,7,8177,NULL,1),(6,7,25574,NULL,1),(6,7,36936,NULL,1),(6,7,25505,NULL,1),(6,7,421,NULL,1),(6,7,25587,NULL,1),(6,7,6495,NULL,1),(6,7,25577,NULL,1),(6,7,8170,NULL,1),(6,7,25423,NULL,1),(6,7,25359,NULL,1),(6,7,25908,NULL,1),(6,7,33736,NULL,1),(6,7,3738,NULL,1),(6,7,2062,NULL,1),(6,7,2894,NULL,1),(6,7,2825,NULL,1),(8,7,25396,NULL,1),(8,7,25449,NULL,1),(8,7,25485,NULL,1),(8,7,25454,NULL,1),(8,7,25509,NULL,1),(8,7,2484,NULL,1),(8,7,25472,NULL,1),(8,7,25525,NULL,1),(8,7,25457,NULL,1),(8,7,25489,NULL,1),(8,7,25533,NULL,1),(8,7,25528,NULL,1),(8,7,20777,NULL,1),(8,7,25547,NULL,1),(8,7,8012,NULL,1),(8,7,526,NULL,1),(8,7,8143,NULL,1),(8,7,25464,NULL,1),(8,7,25500,NULL,1),(8,7,2645,NULL,1),(8,7,25567,NULL,1),(8,7,25420,NULL,1),(8,7,2870,NULL,1),(8,7,8166,NULL,1),(8,7,131,NULL,1),(8,7,25560,NULL,1),(8,7,6196,NULL,1),(8,7,25552,NULL,1),(8,7,25570,NULL,1),(8,7,25563,NULL,1),(8,7,25557,NULL,1),(8,7,546,NULL,1),(8,7,556,NULL,1),(8,7,8177,NULL,1),(8,7,25574,NULL,1),(8,7,36936,NULL,1),(8,7,25505,NULL,1),(8,7,421,NULL,1),(8,7,25587,NULL,1),(8,7,6495,NULL,1),(8,7,25577,NULL,1),(8,7,8170,NULL,1),(8,7,25423,NULL,1),(8,7,25359,NULL,1),(8,7,25908,NULL,1),(8,7,33736,NULL,1),(8,7,3738,NULL,1),(8,7,2062,NULL,1),(8,7,2894,NULL,1),(8,7,2825,NULL,1),(2,3,674,NULL,1),(2,3,8737,NULL,1),(3,3,674,NULL,1),(3,3,8737,NULL,1),(4,3,674,NULL,1),(4,3,8737,NULL,1),(6,3,674,NULL,1),(6,3,8737,NULL,1),(8,3,674,NULL,1),(8,3,8737,NULL,1),(1,2,750,NULL,1),(1,2,3127,NULL,1),(3,2,750,NULL,1),(3,2,3127,NULL,1),(2,7,25442,NULL,1),(2,7,8737,NULL,1),(2,7,20608,NULL,1),(6,7,25442,NULL,1),(6,7,8737,NULL,1),(6,7,20608,NULL,1),(8,7,25442,NULL,1),(8,7,8737,NULL,1),(8,7,20608,NULL,1),(1,8,27087,NULL,1),(5,8,27087,NULL,1),(7,8,27087,NULL,1),(8,8,27087,NULL,1),(1,4,8643,NULL,1),(1,4,3127,NULL,1),(1,4,674,NULL,1),(2,4,8643,NULL,1),(2,4,3127,NULL,1),(2,4,674,NULL,1),(3,4,8643,NULL,1),(3,4,3127,NULL,1),(3,4,674,NULL,1),(4,4,8643,NULL,1),(4,4,3127,NULL,1),(4,4,674,NULL,1),(5,4,8643,NULL,1),(5,4,3127,NULL,1),(5,4,674,NULL,1),(7,4,8643,NULL,1),(7,4,3127,NULL,1),(7,4,674,NULL,1),(8,4,8643,NULL,1),(8,4,3127,NULL,1),(8,4,674,NULL,1),(1,1,25212,NULL,1),(1,1,674,NULL,1),(1,1,750,NULL,1),(1,1,12678,NULL,1),(2,1,25212,NULL,1),(2,1,674,NULL,1),(2,1,750,NULL,1),(2,1,12678,NULL,1),(3,1,25212,NULL,1),(3,1,674,NULL,1),(3,1,750,NULL,1),(3,1,12678,NULL,1),(4,1,25212,NULL,1),(4,1,674,NULL,1),(4,1,750,NULL,1),(4,1,12678,NULL,1),(5,1,25212,NULL,1),(5,1,674,NULL,1),(5,1,750,NULL,1),(5,1,12678,NULL,1),(6,1,25212,NULL,1),(6,1,674,NULL,1),(6,1,750,NULL,1),(6,1,12678,NULL,1),(7,1,25212,NULL,1),(7,1,674,NULL,1),(7,1,750,NULL,1),(7,1,12678,NULL,1),(8,1,25212,NULL,1),(8,1,674,NULL,1),(8,1,750,NULL,1),(8,1,12678,NULL,1),(2,3,5149,NULL,1),(3,3,5149,NULL,1),(4,3,5149,NULL,1),(6,3,5149,NULL,1),(8,3,5149,NULL,1),(1,2,23214,NULL,1),(3,2,23214,NULL,1),(1,9,23161,NULL,1),(2,9,23161,NULL,1),(5,9,23161,NULL,1),(7,9,23161,NULL,1),(1,9,688,NULL,1),(2,9,688,NULL,1),(5,9,688,NULL,1),(7,9,688,NULL,1),(1,9,697,NULL,1),(2,9,697,NULL,1),(5,9,697,NULL,1),(7,9,697,NULL,1),(1,9,712,NULL,1),(2,9,712,NULL,1),(5,9,712,NULL,1),(7,9,712,NULL,1),(1,9,691,NULL,1),(2,9,691,NULL,1),(5,9,691,NULL,1),(7,9,691,NULL,1),(6,11,20719,NULL,1),(4,11,20719,NULL,1),(1,9,126,NULL,1),(2,9,126,NULL,1),(5,9,126,NULL,1),(7,9,126,NULL,1),(1,2,31801,NULL,1),(3,2,31801,NULL,1),(1,4,3776,NULL,1),(1,4,9186,NULL,1),(1,4,21927,NULL,1),(1,4,22054,NULL,1),(1,4,22055,NULL,1),(1,4,2836,NULL,1),(1,4,1860,NULL,1),(2,4,3776,NULL,1),(2,4,9186,NULL,1),(2,4,21927,NULL,1),(2,4,22054,NULL,1),(2,4,22055,NULL,1),(2,4,2836,NULL,1),(2,4,1860,NULL,1),(3,4,3776,NULL,1),(3,4,9186,NULL,1),(3,4,21927,NULL,1),(3,4,22054,NULL,1),(3,4,22055,NULL,1),(3,4,2836,NULL,1),(3,4,1860,NULL,1),(4,4,3776,NULL,1),(4,4,9186,NULL,1),(4,4,21927,NULL,1),(4,4,22054,NULL,1),(4,4,22055,NULL,1),(4,4,2836,NULL,1),(4,4,1860,NULL,1),(5,4,3776,NULL,1),(5,4,9186,NULL,1),(5,4,21927,NULL,1),(5,4,22054,NULL,1),(5,4,22055,NULL,1),(5,4,2836,NULL,1),(5,4,1860,NULL,1),(7,4,3776,NULL,1),(7,4,9186,NULL,1),(7,4,21927,NULL,1),(7,4,22054,NULL,1),(7,4,22055,NULL,1),(7,4,2836,NULL,1),(7,4,1860,NULL,1),(8,4,3776,NULL,1),(8,4,9186,NULL,1),(8,4,21927,NULL,1),(8,4,22054,NULL,1),(8,4,22055,NULL,1),(8,4,2836,NULL,1),(8,4,1860,NULL,1),(1,5,25441,NULL,1),(1,5,25312,NULL,1),(3,5,25312,NULL,1),(4,5,25312,NULL,1),(5,5,25312,NULL,1),(8,5,25312,NULL,1),(1,5,25437,NULL,1),(3,5,25437,NULL,1),(2,3,3127,NULL,1),(3,3,3127,NULL,1),(4,3,3127,NULL,1),(6,3,3127,NULL,1),(8,3,3127,NULL,1);
/*!40000 ALTER TABLE `playercreateinfo_spell_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_end_scripts`
--

DROP TABLE IF EXISTS `quest_end_scripts`;
CREATE TABLE `quest_end_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datatext` text NOT NULL,
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quest_end_scripts`
--

LOCK TABLES `quest_end_scripts` WRITE;
/*!40000 ALTER TABLE `quest_end_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_end_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_mail_loot_template`
--

DROP TABLE IF EXISTS `quest_mail_loot_template`;
CREATE TABLE `quest_mail_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

--
-- Dumping data for table `quest_mail_loot_template`
--

LOCK TABLES `quest_mail_loot_template` WRITE;
/*!40000 ALTER TABLE `quest_mail_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_mail_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_start_scripts`
--

DROP TABLE IF EXISTS `quest_start_scripts`;
CREATE TABLE `quest_start_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datatext` text NOT NULL,
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quest_start_scripts`
--

LOCK TABLES `quest_start_scripts` WRITE;
/*!40000 ALTER TABLE `quest_start_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_start_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_template`
--

DROP TABLE IF EXISTS `quest_template`;
CREATE TABLE `quest_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `Method` tinyint(3) unsigned NOT NULL default '2',
  `ZoneOrSort` smallint(6) NOT NULL default '0',
  `SkillOrClass` smallint(6) NOT NULL default '0',
  `MinLevel` tinyint(3) unsigned NOT NULL default '0',
  `QuestLevel` tinyint(3) unsigned NOT NULL default '0',
  `Type` smallint(5) unsigned NOT NULL default '0',
  `RequiredRaces` smallint(5) unsigned NOT NULL default '0',
  `RequiredSkillValue` smallint(5) unsigned NOT NULL default '0',
  `RepObjectiveFaction` smallint(5) unsigned NOT NULL default '0',
  `RepObjectiveValue` mediumint(9) NOT NULL default '0',
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL default '0',
  `RequiredMinRepValue` mediumint(9) NOT NULL default '0',
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL default '0',
  `RequiredMaxRepValue` mediumint(9) NOT NULL default '0',
  `SuggestedPlayers` tinyint(3) unsigned NOT NULL default '0',
  `LimitTime` int(10) unsigned NOT NULL default '0',
  `QuestFlags` smallint(5) unsigned NOT NULL default '0',
  `SpecialFlags` tinyint(3) unsigned NOT NULL default '0',
  `CharTitleId` tinyint(3) unsigned NOT NULL default '0',
  `PrevQuestId` mediumint(9) NOT NULL default '0',
  `NextQuestId` mediumint(9) NOT NULL default '0',
  `ExclusiveGroup` mediumint(9) NOT NULL default '0',
  `NextQuestInChain` mediumint(8) unsigned NOT NULL default '0',
  `SrcItemId` mediumint(8) unsigned NOT NULL default '0',
  `SrcItemCount` tinyint(3) unsigned NOT NULL default '0',
  `SrcSpell` mediumint(8) unsigned NOT NULL default '0',
  `Title` text,
  `Details` text,
  `Objectives` text,
  `OfferRewardText` text,
  `RequestItemsText` text,
  `EndText` text,
  `ObjectiveText1` text,
  `ObjectiveText2` text,
  `ObjectiveText3` text,
  `ObjectiveText4` text,
  `ReqItemId1` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemId2` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemId3` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemId4` mediumint(8) unsigned NOT NULL default '0',
  `ReqItemCount1` smallint(5) unsigned NOT NULL default '0',
  `ReqItemCount2` smallint(5) unsigned NOT NULL default '0',
  `ReqItemCount3` smallint(5) unsigned NOT NULL default '0',
  `ReqItemCount4` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceId1` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceId2` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceId3` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceId4` mediumint(8) unsigned NOT NULL default '0',
  `ReqSourceCount1` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceCount2` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceCount3` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceCount4` smallint(5) unsigned NOT NULL default '0',
  `ReqSourceRef1` tinyint(3) unsigned NOT NULL default '0',
  `ReqSourceRef2` tinyint(3) unsigned NOT NULL default '0',
  `ReqSourceRef3` tinyint(3) unsigned NOT NULL default '0',
  `ReqSourceRef4` tinyint(3) unsigned NOT NULL default '0',
  `ReqCreatureOrGOId1` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOId2` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOId3` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOId4` mediumint(9) NOT NULL default '0',
  `ReqCreatureOrGOCount1` smallint(5) unsigned NOT NULL default '0',
  `ReqCreatureOrGOCount2` smallint(5) unsigned NOT NULL default '0',
  `ReqCreatureOrGOCount3` smallint(5) unsigned NOT NULL default '0',
  `ReqCreatureOrGOCount4` smallint(5) unsigned NOT NULL default '0',
  `ReqSpellCast1` mediumint(8) unsigned NOT NULL default '0',
  `ReqSpellCast2` mediumint(8) unsigned NOT NULL default '0',
  `ReqSpellCast3` mediumint(8) unsigned NOT NULL default '0',
  `ReqSpellCast4` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId1` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId2` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId3` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId4` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId5` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemId6` mediumint(8) unsigned NOT NULL default '0',
  `RewChoiceItemCount1` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount2` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount3` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount4` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount5` smallint(5) unsigned NOT NULL default '0',
  `RewChoiceItemCount6` smallint(5) unsigned NOT NULL default '0',
  `RewItemId1` mediumint(8) unsigned NOT NULL default '0',
  `RewItemId2` mediumint(8) unsigned NOT NULL default '0',
  `RewItemId3` mediumint(8) unsigned NOT NULL default '0',
  `RewItemId4` mediumint(8) unsigned NOT NULL default '0',
  `RewItemCount1` smallint(5) unsigned NOT NULL default '0',
  `RewItemCount2` smallint(5) unsigned NOT NULL default '0',
  `RewItemCount3` smallint(5) unsigned NOT NULL default '0',
  `RewItemCount4` smallint(5) unsigned NOT NULL default '0',
  `RewRepFaction1` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction2` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction3` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction4` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction5` smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepValue1` mediumint(9) NOT NULL default '0',
  `RewRepValue2` mediumint(9) NOT NULL default '0',
  `RewRepValue3` mediumint(9) NOT NULL default '0',
  `RewRepValue4` mediumint(9) NOT NULL default '0',
  `RewRepValue5` mediumint(9) NOT NULL default '0',
  `RewHonorableKills` mediumint(9) unsigned NOT NULL default '0',
  `RewOrReqMoney` int(11) NOT NULL default '0',
  `RewMoneyMaxLevel` int(10) unsigned NOT NULL default '0',
  `RewSpell` mediumint(8) unsigned NOT NULL default '0',
  `RewSpellCast` mediumint(8) unsigned NOT NULL default '0',
  `RewMailTemplateId` mediumint(8) unsigned NOT NULL default '0',
  `RewMailDelaySecs` int(11) unsigned NOT NULL default '0',
  `PointMapId` smallint(5) unsigned NOT NULL default '0',
  `PointX` float NOT NULL default '0',
  `PointY` float NOT NULL default '0',
  `PointOpt` mediumint(8) unsigned NOT NULL default '0',
  `DetailsEmote1` smallint(5) unsigned NOT NULL default '0',
  `DetailsEmote2` smallint(5) unsigned NOT NULL default '0',
  `DetailsEmote3` smallint(5) unsigned NOT NULL default '0',
  `DetailsEmote4` smallint(5) unsigned NOT NULL default '0',
  `IncompleteEmote` smallint(5) unsigned NOT NULL default '0',
  `CompleteEmote` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote1` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote2` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote3` smallint(5) unsigned NOT NULL default '0',
  `OfferRewardEmote4` smallint(5) unsigned NOT NULL default '0',
  `StartScript` mediumint(8) unsigned NOT NULL default '0',
  `CompleteScript` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest System';

--
-- Dumping data for table `quest_template`
--

LOCK TABLES `quest_template` WRITE;
/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_loot_template`
--

DROP TABLE IF EXISTS `reference_loot_template`;
CREATE TABLE `reference_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

--
-- Dumping data for table `reference_loot_template`
--

LOCK TABLES `reference_loot_template` WRITE;
/*!40000 ALTER TABLE `reference_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserved_name`
--

DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player Reserved Names';

--
-- Dumping data for table `reserved_name`
--

LOCK TABLES `reserved_name` WRITE;
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_texts`
--

DROP TABLE IF EXISTS `script_texts`;
CREATE TABLE `script_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `language` smallint(5) unsigned NOT NULL default '0',
  `emote` smallint(5) unsigned NOT NULL default '0',
  `comment` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';

--
-- Dumping data for table `script_texts`
--

LOCK TABLES `script_texts` WRITE;
/*!40000 ALTER TABLE `script_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_fishing_base_level`
--

DROP TABLE IF EXISTS `skill_fishing_base_level`;
CREATE TABLE `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL default '0' COMMENT 'Base skill level requirement',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';

--
-- Dumping data for table `skill_fishing_base_level`
--

LOCK TABLES `skill_fishing_base_level` WRITE;
/*!40000 ALTER TABLE `skill_fishing_base_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_fishing_base_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skinning_loot_template`
--

DROP TABLE IF EXISTS `skinning_loot_template`;
CREATE TABLE `skinning_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

--
-- Dumping data for table `skinning_loot_template`
--

LOCK TABLES `skinning_loot_template` WRITE;
/*!40000 ALTER TABLE `skinning_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `skinning_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_affect`
--

DROP TABLE IF EXISTS `spell_affect`;
CREATE TABLE `spell_affect` (
  `entry` smallint(5) unsigned NOT NULL default '0',
  `effectId` tinyint(3) unsigned NOT NULL default '0',
  `SpellFamilyMask` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`effectId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spell_affect`
--

LOCK TABLES `spell_affect` WRITE;
/*!40000 ALTER TABLE `spell_affect` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_affect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_caster_aurastate`
--

DROP TABLE IF EXISTS `spell_caster_aurastate`;
CREATE TABLE `spell_caster_aurastate` (
  `entry` smallint(5) unsigned NOT NULL default '0',
  `casterAuraState` smallint(5) unsigned NOT NULL default '0',
  `casterAuraStateNot` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spell_caster_aurastate`
--

LOCK TABLES `spell_caster_aurastate` WRITE;
/*!40000 ALTER TABLE `spell_caster_aurastate` DISABLE KEYS */;
INSERT INTO `spell_caster_aurastate` VALUES (66,0,12),(498,0,17),(642,0,17),(1020,0,17),(1495,1,0),(1784,0,12),(1785,0,12),(1786,0,12),(1787,0,12),(1856,0,12),(1857,0,12),(2425,0,12),(3680,0,12),(4079,0,12),(4986,0,12),(5215,0,12),(5543,0,12),(5573,0,17),(5858,0,12),(5916,0,12),(6408,0,12),(6538,0,12),(6572,1,0),(6574,1,0),(6634,0,12),(6783,0,12),(6920,0,12),(7379,1,0),(7870,0,12),(8149,0,12),(8152,0,12),(8218,0,12),(9093,0,12),(9587,0,12),(9738,0,12),(9913,0,12),(11327,0,12),(11329,0,12),(11392,0,12),(11600,1,0),(11601,1,0),(12170,1,0),(12845,0,12),(14251,1,0),(14269,1,0),(14270,1,0),(14271,1,0),(16122,0,12),(16380,0,12),(17170,2,0),(19130,1,0),(19306,7,0),(20271,5,0),(20540,0,12),(20580,0,12),(20672,0,12),(20909,7,0),(20910,7,0),(22766,0,12),(22911,0,4),(24450,0,12),(24452,0,12),(24453,0,12),(25288,1,0),(26635,3,0);
/*!40000 ALTER TABLE `spell_caster_aurastate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_disabled`
--

DROP TABLE IF EXISTS `spell_disabled`;
CREATE TABLE `spell_disabled` (
  `entry` int(11) unsigned NOT NULL default '0' COMMENT 'Spell entry',
  `disable_mask` int(8) unsigned NOT NULL default '0',
  `comment` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Disabled Spell System';

--
-- Dumping data for table `spell_disabled`
--

LOCK TABLES `spell_disabled` WRITE;
/*!40000 ALTER TABLE `spell_disabled` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_disabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_elixir`
--

DROP TABLE IF EXISTS `spell_elixir`;
CREATE TABLE `spell_elixir` (
  `entry` int(11) unsigned NOT NULL default '0' COMMENT 'SpellId of potion',
  `mask` tinyint(1) unsigned NOT NULL default '0' COMMENT 'Mask 0x1 battle 0x2 guardian 0x3 flask 0x7 unstable flasks 0xB shattrath flasks',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';

--
-- Dumping data for table `spell_elixir`
--

LOCK TABLES `spell_elixir` WRITE;
/*!40000 ALTER TABLE `spell_elixir` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_elixir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_facing`
--

DROP TABLE IF EXISTS `spell_facing`;
CREATE TABLE `spell_facing` (
  `entry` double default NULL,
  `facingcasterflag` tinyint(1) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spell_facing`
--

LOCK TABLES `spell_facing` WRITE;
/*!40000 ALTER TABLE `spell_facing` DISABLE KEYS */;
INSERT INTO `spell_facing` VALUES (53,1),(72,1),(75,1),(78,1),(100,1),(116,1),(133,1),(143,1),(145,1),(205,1),(284,1),(285,1),(348,1),(403,1),(408,1),(421,1),(529,1),(548,1),(585,1),(591,1),(598,1),(676,1),(686,1),(689,1),(694,1),(695,1),(699,1),(703,1),(705,1),(707,1),(709,1),(769,1),(772,1),(779,1),(780,1),(837,1),(845,1),(879,1),(915,1),(930,1),(943,1),(984,1),(1004,1),(1079,1),(1082,1),(1088,1),(1094,1),(1106,1),(1120,1),(1329,1),(1464,1),(1495,1),(1608,1),(1671,1),(1672,1),(1715,1),(1742,1),(1752,1),(1753,1),(1754,1),(1755,1),(1756,1),(1757,1),(1758,1),(1759,1),(1760,1),(1766,1),(1767,1),(1768,1),(1769,1),(1776,1),(1777,1),(1822,1),(1823,1),(1824,1),(1833,1),(1943,1),(1966,1),(1978,1),(2070,1),(2098,1),(2136,1),(2137,1),(2138,1),(2589,1),(2590,1),(2591,1),(2643,1),(2764,1),(2860,1),(2912,1),(2941,1),(2948,1),(2973,1),(2974,1),(3009,1),(3010,1),(3018,1),(3029,1),(3034,1),(3043,1),(3044,1),(3140,1),(3674,1),(4164,1),(4165,1),(5019,1),(5116,1),(5133,1),(5138,1),(5143,1),(5144,1),(5145,1),(5176,1),(5177,1),(5178,1),(5179,1),(5180,1),(5201,1),(5211,1),(5221,1),(5306,1),(5308,1),(5375,1),(5401,1),(5614,1),(5615,1),(5676,1),(5938,1),(6041,1),(6060,1),(6178,1),(6252,1),(6254,1),(6255,1),(6353,1),(6546,1),(6547,1),(6548,1),(6552,1),(6554,1),(6555,1),(6572,1),(6574,1),(6660,1),(6726,1),(6760,1),(6761,1),(6762,1),(6768,1),(6770,1),(6780,1),(6785,1),(6787,1),(6789,1),(6798,1),(6800,1),(6807,1),(6808,1),(6809,1),(6949,1),(7105,1),(7145,1),(7268,1),(7269,1),(7270,1),(7290,1),(7295,1),(7322,1),(7369,1),(7372,1),(7373,1),(7379,1),(7384,1),(7386,1),(7400,1),(7402,1),(7405,1),(7641,1),(7651,1),(7712,1),(7714,1),(7715,1),(7716,1),(7717,1),(7718,1),(7719,1),(7769,1),(7887,1),(8042,1),(8044,1),(8045,1),(8046,1),(8050,1),(8052,1),(8053,1),(8056,1),(8058,1),(8092,1),(8102,1),(8103,1),(8104,1),(8105,1),(8106,1),(8129,1),(8246,1),(8255,1),(8288,1),(8289,1),(8380,1),(8398,1),(8400,1),(8401,1),(8402,1),(8406,1),(8407,1),(8408,1),(8412,1),(8413,1),(8416,1),(8417,1),(8418,1),(8419,1),(8444,1),(8445,1),(8446,1),(8598,1),(8621,1),(8623,1),(8624,1),(8629,1),(8631,1),(8632,1),(8633,1),(8637,1),(8639,1),(8640,1),(8643,1),(8647,1),(8649,1),(8650,1),(8676,1),(8682,1),(8721,1),(8724,1),(8725,1),(8820,1),(8905,1),(8921,1),(8924,1),(8925,1),(8926,1),(8927,1),(8928,1),(8929,1),(8949,1),(8950,1),(8951,1),(8972,1),(8983,1),(8992,1),(8998,1),(9000,1),(9005,1),(9053,1),(9057,1),(9081,1),(9373,1),(9481,1),(9483,1),(9487,1),(9488,1),(9492,1),(9493,1),(9532,1),(9591,1),(9613,1),(9654,1),(9672,1),(9734,1),(9739,1),(9745,1),(9752,1),(9754,1),(9771,1),(9823,1),(9827,1),(9829,1),(9830,1),(9833,1),(9834,1),(9835,1),(9849,1),(9850,1),(9866,1),(9867,1),(9875,1),(9876,1),(9880,1),(9881,1),(9892,1),(9894,1),(9896,1),(9904,1),(9908,1),(9912,1),(10148,1),(10149,1),(10150,1),(10151,1),(10179,1),(10180,1),(10181,1),(10197,1),(10199,1),(10205,1),(10206,1),(10207,1),(10211,1),(10212,1),(10273,1),(10274,1),(10277,1),(10312,1),(10313,1),(10314,1),(10346,1),(10391,1),(10392,1),(10412,1),(10413,1),(10414,1),(10447,1),(10448,1),(10472,1),(10473,1),(10578,1),(10605,1),(10933,1),(10934,1),(10945,1),(10946,1),(10947,1),(11021,1),(11131,1),(11197,1),(11198,1),(11267,1),(11268,1),(11269,1),(11273,1),(11274,1),(11275,1),(11279,1),(11280,1),(11281,1),(11285,1),(11286,1),(11289,1),(11290,1),(11293,1),(11294,1),(11297,1),(11299,1),(11300,1),(11303,1),(11366,1),(11538,1),(11564,1),(11565,1),(11566,1),(11567,1),(11572,1),(11573,1),(11574,1),(11578,1),(11584,1),(11585,1),(11596,1),(11597,1),(11600,1),(11601,1),(11604,1),(11605,1),(11608,1),(11609,1),(11659,1),(11660,1),(11661,1),(11665,1),(11667,1),(11668,1),(11675,1),(11699,1),(11700,1),(11839,1),(11921,1),(11985,1),(11988,1),(11989,1),(12058,1),(12167,1),(12280,1),(12294,1),(12466,1),(12471,1),(12505,1),(12522,1),(12523,1),(12524,1),(12525,1),(12526,1),(12555,1),(12557,1),(12611,1),(12675,1),(12693,1),(12737,1),(12739,1),(12809,1),(13140,1),(13322,1),(13339,1),(13340,1),(13341,1),(13342,1),(13374,1),(13375,1),(13398,1),(13438,1),(13439,1),(13440,1),(13441,1),(13480,1),(13482,1),(13491,1),(13519,1),(13527,1),(13549,1),(13550,1),(13551,1),(13552,1),(13553,1),(13554,1),(13555,1),(13748,1),(13900,1),(13901,1),(13953,1),(14034,1),(14105,1),(14106,1),(14109,1),(14112,1),(14119,1),(14122,1),(14145,1),(14200,1),(14251,1),(14260,1),(14261,1),(14262,1),(14263,1),(14264,1),(14265,1),(14266,1),(14269,1),(14270,1),(14271,1),(14278,1),(14281,1),(14282,1),(14283,1),(14284,1),(14285,1),(14286,1),(14287,1),(14288,1),(14289,1),(14290,1),(14443,1),(14517,1),(14518,1),(14873,1),(14874,1),(14895,1),(14902,1),(14903,1),(14914,1),(15040,1),(15043,1),(15095,1),(15117,1),(15124,1),(15207,1),(15208,1),(15228,1),(15230,1),(15232,1),(15234,1),(15238,1),(15242,1),(15243,1),(15244,1),(15249,1),(15254,1),(15261,1),(15262,1),(15263,1),(15264,1),(15265,1),(15266,1),(15267,1),(15284,1),(15285,1),(15305,1),(15407,1),(15451,1),(15472,1),(15496,1),(15497,1),(15498,1),(15530,1),(15536,1),(15537,1),(15547,1),(15549,1),(15574,1),(15575,1),(15581,1),(15583,1),(15598,1),(15607,1),(15611,1),(15612,1),(15615,1),(15619,1),(15620,1),(15653,1),(15659,1),(15662,1),(15665,1),(15667,1),(15668,1),(15691,1),(15692,1),(15735,1),(15736,1),(15790,1),(15791,1),(15795,1),(15797,1),(15801,1),(15860,1),(15968,1),(16000,1),(16001,1),(16006,1),(16033,1),(16044,1),(16067,1),(16100,1),(16101,1),(16144,1),(16243,1),(16249,1),(16250,1),(16375,1),(16407,1),(16408,1),(16409,1),(16410,1),(16412,1),(16413,1),(16414,1),(16415,1),(16430,1),(16454,1),(16496,1),(16511,1),(16564,1),(16565,1),(16570,1),(16603,1),(16614,1),(16697,1),(16784,1),(16788,1),(16790,1),(16799,1),(16827,1),(16828,1),(16829,1),(16830,1),(16831,1),(16832,1),(16868,1),(16908,1),(16979,1),(16997,1),(17008,1),(17140,1),(17141,1),(17142,1),(17143,1),(17144,1),(17147,1),(17149,1),(17157,1),(17171,1),(17173,1),(17174,1),(17198,1),(17203,1),(17238,1),(17243,1),(17253,1),(17255,1),(17256,1),(17257,1),(17258,1),(17259,1),(17260,1),(17261,1),(17273,1),(17274,1),(17276,1),(17281,1),(17284,1),(17290,1),(17311,1),(17312,1),(17313,1),(17314,1),(17333,1),(17347,1),(17348,1),(17353,1),(17364,1),(17393,1),(17434,1),(17435,1),(17483,1),(17501,1),(17503,1),(17509,1),(17620,1),(17682,1),(17745,1),(17877,1),(17919,1),(17920,1),(17921,1),(17922,1),(17923,1),(17924,1),(17925,1),(17926,1),(17962,1),(17963,1),(18081,1),(18082,1),(18083,1),(18084,1),(18085,1),(18089,1),(18091,1),(18092,1),(18104,1),(18105,1),(18108,1),(18111,1),(18138,1),(18164,1),(18165,1),(18187,1),(18199,1),(18204,1),(18205,1),(18211,1),(18214,1),(18217,1),(18276,1),(18278,1),(18392,1),(18398,1),(18545,1),(18557,1),(18561,1),(18649,1),(18651,1),(18796,1),(18807,1),(18809,1),(18817,1),(18819,1),(18833,1),(18867,1),(18868,1),(18869,1),(18870,1),(18871,1),(18980,1),(18984,1),(19128,1),(19260,1),(19306,1),(19319,1),(19386,1),(19391,1),(19434,1),(19463,1),(19472,1),(19503,1),(19632,1),(19639,1),(19642,1),(19701,1),(19715,1),(19725,1),(19728,1),(19729,1),(19767,1),(19777,1),(19781,1),(19785,1),(19801,1),(19816,1),(19874,1),(19881,1),(19983,1),(20228,1),(20240,1),(20243,1),(20252,1),(20276,1),(20295,1),(20297,1),(20298,1),(20420,1),(20463,1),(20535,1),(20536,1),(20543,1),(20559,1),(20560,1),(20569,1),(20605,1),(20616,1),(20617,1),(20627,1),(20630,1),(20657,1),(20658,1),(20660,1),(20661,1),(20662,1),(20666,1),(20678,1),(20684,1),(20691,1),(20692,1),(20695,1),(20696,1),(20698,1),(20714,1),(20720,1),(20735,1),(20736,1),(20743,1),(20791,1),(20792,1),(20793,1),(20795,1),(20797,1),(20802,1),(20805,1),(20806,1),(20807,1),(20808,1),(20811,1),(20815,1),(20816,1),(20819,1),(20820,1),(20821,1),(20822,1),(20823,1),(20824,1),(20825,1),(20828,1),(20829,1),(20831,1),(20832,1),(20869,1),(20883,1),(20900,1),(20901,1),(20902,1),(20903,1),(20904,1),(20909,1),(20910,1),(21008,1),(21027,1),(21047,1),(21059,1),(21071,1),(21072,1),(21077,1),(21141,1),(21151,1),(21159,1),(21162,1),(21167,1),(21170,1),(21343,1),(21354,1),(21369,1),(21390,1),(21402,1),(21549,1),(21551,1),(21552,1),(21553,1),(21667,1),(21668,1),(21807,1),(21832,1),(21978,1),(22088,1),(22121,1),(22272,1),(22273,1),(22336,1),(22355,1),(22357,1),(22411,1),(22414,1),(22425,1),(22427,1),(22568,1),(22570,1),(22574,1),(22643,1),(22666,1),(22677,1),(22746,1),(22827,1),(22828,1),(22829,1),(22859,1),(22878,1),(22887,1),(22907,1),(22908,1),(23073,1),(23102,1),(23106,1),(23206,1),(23267,1),(23391,1),(23392,1),(23512,1),(23592,1),(23601,1),(23848,1),(23850,1),(23860,1),(23881,1),(23892,1),(23893,1),(23894,1),(23922,1),(23923,1),(23924,1),(23925,1),(23959,1),(23960,1),(24042,1),(24049,1),(24132,1),(24133,1),(24238,1),(24239,1),(24248,1),(24274,1),(24275,1),(24300,1),(24331,1),(24332,1),(24334,1),(24335,1),(24374,1),(24393,1),(24407,1),(24583,1),(24585,1),(24586,1),(24587,1),(24619,1),(24640,1),(24668,1),(24680,1),(24844,1),(24942,1),(25008,1),(25009,1),(25010,1),(25011,1),(25012,1),(25021,1),(25052,1),(25054,1),(25055,1),(25174,1),(25286,1),(25288,1),(25294,1),(25295,1),(25298,1),(25300,1),(25302,1),(25304,1),(25306,1),(25307,1),(25309,1),(25345,1),(25346,1),(25677,1),(25686,1),(25710,1),(25712,1),(25783,15),(25902,1),(25911,1),(25912,1),(25995,1),(26006,1),(26098,1),(26282,1),(26350,1),(26616,1),(26693,1),(27360,1),(27552,1),(27554,1),(27559,1),(27567,1),(27572,1),(27580,1),(27581,1),(27584,1),(27611,1),(27615,1),(27632,1),(27633,1),(27794,1),(27860,1),(28318,1),(28412,1),(28478,1),(28599,1),(29070,1),(29155,1),(29228,1),(29317,1),(29515,1),(30095,1),(31016,1),(31018,1);
/*!40000 ALTER TABLE `spell_facing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_learn_spell`
--

DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE `spell_learn_spell` (
  `entry` smallint(5) unsigned NOT NULL default '0',
  `SpellID` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`SpellID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

--
-- Dumping data for table `spell_learn_spell`
--

LOCK TABLES `spell_learn_spell` WRITE;
/*!40000 ALTER TABLE `spell_learn_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_learn_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_pet_auras`
--

DROP TABLE IF EXISTS `spell_pet_auras`;
CREATE TABLE `spell_pet_auras` (
  `spell` mediumint(8) unsigned NOT NULL COMMENT 'dummy spell id',
  `pet` mediumint(8) unsigned NOT NULL default '0' COMMENT 'pet id; 0 = all',
  `aura` mediumint(8) unsigned NOT NULL COMMENT 'pet aura id',
  PRIMARY KEY  (`spell`,`pet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spell_pet_auras`
--

LOCK TABLES `spell_pet_auras` WRITE;
/*!40000 ALTER TABLE `spell_pet_auras` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_pet_auras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_proc_event`
--

DROP TABLE IF EXISTS `spell_proc_event`;
CREATE TABLE `spell_proc_event` (
  `entry` smallint(5) unsigned NOT NULL default '0',
  `SchoolMask` tinyint(4) NOT NULL default '0',
  `Category` smallint(6) NOT NULL default '0',
  `SkillID` smallint(6) NOT NULL default '0',
  `SpellFamilyName` smallint(5) unsigned NOT NULL default '0',
  `SpellFamilyMask` bigint(20) unsigned NOT NULL default '0',
  `procFlags` int(10) unsigned NOT NULL default '0',
  `ppmRate` float NOT NULL default '0',
  `cooldown` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spell_proc_event`
--

LOCK TABLES `spell_proc_event` WRITE;
/*!40000 ALTER TABLE `spell_proc_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_proc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_required`
--

DROP TABLE IF EXISTS `spell_required`;
CREATE TABLE `spell_required` (
  `spell_id` mediumint(9) NOT NULL default '0',
  `prev_spell` mediumint(9) NOT NULL default '0',
  `req_spell` mediumint(9) NOT NULL default '0',
  PRIMARY KEY  (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Additinal Data';

--
-- Dumping data for table `spell_required`
--

LOCK TABLES `spell_required` WRITE;
/*!40000 ALTER TABLE `spell_required` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_required` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_script_target`
--

DROP TABLE IF EXISTS `spell_script_target`;
CREATE TABLE `spell_script_target` (
  `entry` mediumint(8) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL default '0',
  `targetEntry` mediumint(8) unsigned NOT NULL default '0',
  UNIQUE KEY `entry_type_target` (`entry`,`type`,`targetEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spell System';

--
-- Dumping data for table `spell_script_target`
--

LOCK TABLES `spell_script_target` WRITE;
/*!40000 ALTER TABLE `spell_script_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_script_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_scripts`
--

DROP TABLE IF EXISTS `spell_scripts`;
CREATE TABLE `spell_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datatext` text character set latin1 NOT NULL,
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spell_scripts`
--

LOCK TABLES `spell_scripts` WRITE;
/*!40000 ALTER TABLE `spell_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_target_aurastate`
--

DROP TABLE IF EXISTS `spell_target_aurastate`;
CREATE TABLE `spell_target_aurastate` (
  `entry` smallint(5) unsigned NOT NULL default '0',
  `targetAuraState` smallint(5) unsigned NOT NULL default '0',
  `targetAuraStateNot` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spell_target_aurastate`
--

LOCK TABLES `spell_target_aurastate` WRITE;
/*!40000 ALTER TABLE `spell_target_aurastate` DISABLE KEYS */;
INSERT INTO `spell_target_aurastate` VALUES (17,0,18),(592,0,18),(600,0,18),(1022,0,17),(3747,0,18),(5308,2,0),(5599,0,17),(6065,0,18),(6066,0,18),(7160,2,0),(7938,2,0),(10278,0,17),(10898,0,18),(10899,0,18),(10900,0,18),(10901,0,18),(14083,13,0),(16495,2,0),(17962,14,0),(18562,15,0),(18930,14,0),(18931,14,0),(18932,14,0),(20539,2,0),(20647,2,0),(20658,2,0),(20660,2,0),(20661,2,0),(20662,2,0),(23452,0,12),(24239,2,0),(24274,2,0),(24275,2,0),(31255,2,0);
/*!40000 ALTER TABLE `spell_target_aurastate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_target_position`
--

DROP TABLE IF EXISTS `spell_target_position`;
CREATE TABLE `spell_target_position` (
  `id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `target_map` smallint(5) unsigned NOT NULL default '0',
  `target_position_x` float NOT NULL default '0',
  `target_position_y` float NOT NULL default '0',
  `target_position_z` float NOT NULL default '0',
  `target_orientation` float NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';

--
-- Dumping data for table `spell_target_position`
--

LOCK TABLES `spell_target_position` WRITE;
/*!40000 ALTER TABLE `spell_target_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_target_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_threat`
--

DROP TABLE IF EXISTS `spell_threat`;
CREATE TABLE `spell_threat` (
  `entry` mediumint(8) unsigned NOT NULL,
  `Threat` smallint(6) NOT NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- Dumping data for table `spell_threat`
--

LOCK TABLES `spell_threat` WRITE;
/*!40000 ALTER TABLE `spell_threat` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_threat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_events`
--

DROP TABLE IF EXISTS `transport_events`;
CREATE TABLE `transport_events` (
  `entry` int(11) unsigned NOT NULL default '0',
  `waypoint_id` int(11) unsigned NOT NULL default '0',
  `event_id` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transport_events`
--

LOCK TABLES `transport_events` WRITE;
/*!40000 ALTER TABLE `transport_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transports`
--

DROP TABLE IF EXISTS `transports`;
CREATE TABLE `transports` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `name` text,
  `period` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';

--
-- Dumping data for table `transports`
--

LOCK TABLES `transports` WRITE;
/*!40000 ALTER TABLE `transports` DISABLE KEYS */;
/*!40000 ALTER TABLE `transports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trinity_string`
--

DROP TABLE IF EXISTS `trinity_string`;
CREATE TABLE `trinity_string` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trinity_string`
--

LOCK TABLES `trinity_string` WRITE;
/*!40000 ALTER TABLE `trinity_string` DISABLE KEYS */;
INSERT INTO `trinity_string` VALUES (1,'You should select a character or a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'You should select a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'There is no help for that command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'There is no such command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'There is no such subcommand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Command %s have subcommands:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Commands available to you:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Incorrect syntax.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Your account level is: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Online players: %u (max: %u) Queued players: %u (max: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Server uptime: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Player saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'All players saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'There are the following active GMs on this server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'There are no GMs currently logged in on this server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Cannot do that while flying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Cannot do that in Battlegrounds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Target is flying you can\'t do that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'%s is flying command failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'You are not mounted so you can\'t dismount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Cannot do that while fighting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'You used it recently.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6613,'|cfff00000[GM Announcement]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(743,'The Battle for Alterac Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'The password was changed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'The new passwords do not match or the old password is wrong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Your account is now locked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Your account is now unlocked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,', rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,' [known]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'|cffff0000[System Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'|cffff0000[Event Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,' [learn]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,' [passive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,' [talent]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,' (offline)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'You are: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'visible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'invisible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'done',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'You',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,' <unknown> ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'<error>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'<non-existing character>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'You must be at least level %u to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'You must be at least level %u and have item %s to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Hello! Ready for some training?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Global notify: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(539,'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'%s is already being teleported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'You can summon a player to your instance only if he is in your party with you as leader.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'You cannot go to the player\'s instance because you are in a party now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,'You can go to the player\'s instance while not being in his party only if your GM mode is on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'You can not go to player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'You can not summon player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'You are summoning %s%s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'You are being summoned by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'You are teleporting %s%s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'You are being teleported by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'Player (%s) does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,'Appearing at %s\'s location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,'%s is appearing to your location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,'Incorrect values.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'No character selected.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,'%s is not in a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,'You changed HP of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,'%s changed your HP to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,'You changed MANA of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,'%s changed your MANA to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,'You changed ENERGY of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,'%s changed your ENERGY to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,'Current energy: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,'You changed rage of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,'%s changed your rage to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,'You changed level of %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,'GUID %i, faction is %i, flags is %i, npcflag is %i, DY flag is %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,'Wrong faction: %u (not found in factiontemplate.dbc).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,'You changed GUID=%i \'s Faction to %i, flags to %i, npcflag to %i, dyflag to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,'You changed the spellflatid=%i, val= %i, mark =%i to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,'%s changed your spellflatid=%i, val= %i, mark =%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,'%s has access to all taxi nodes now (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,'%s has no more access to all taxi nodes now (only visited accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,'%s has given you access to all taxi nodes (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,'%s has removed access to all taxi nodes (only visited still accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,'You set all speeds to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,'%s set all your speeds to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,'You set the speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,'%s set your speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,'You set the swim speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,'%s set your swim speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,'You set the backwards run speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'%s set your backwards run speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'You set the fly speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'%s set your fly speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'You set the size %2.2f of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,'%s set your size to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,'There is no such mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,'You give a mount to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,'%s gave you a mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(423,'IP: %s\nBan Date: %s\nUnban Date: %s\nRemaining: %s\nReason: %s\nSet by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'You take all copper of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,'%s took you all of your copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,'You take %i copper from %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'%s took %i copper from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,'You give %i copper to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,'%s gave you %i copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,'You hear sound %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,'Removed bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,'Set bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,'Teleport location table is empty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,'Teleport location not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,'Requires search parameter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,'There are no teleport locations matching your request.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,'Mail sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,'No selection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,'Object GUID is: lowpart %u highpart %X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,'The name was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,'Error, name can only contain characters A-Z and a-z.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,'The subname was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,'Not yet implemented',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,'Item \'%i\' \'%s\' added to list with maxcount \'%i\' and incrtime \'%i\' and extendedcost \'%i\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,'Item \'%i\' not found in database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,'Item \'%i\' \'%s\' deleted from vendor list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,'Item \'%i\' not found in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,'Item \'%i\' already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,'Spells of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,'Spells of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,'Talents of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,'Talents of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,'Your spells have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,'Your talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,'Unknown case \'%s\' for .resetall command. Type full correct case name.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,'Spells will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,'Talents will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,'Creature (GUID: %u) No waypoint found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,'Creature (GUID: %u) Last waypoint not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,'Creature (GUID: %u) No waypoint found - used \'wpguid\'. Now trying to find it by its position...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,'Creature (GUID: %u) No waypoints found - This is a Trinity db problem (single float).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,'Selected creature is ignored - provided GUID is used',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,'You must select a visual waypoint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,'No visual waypoints found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,'Could not create visual waypoint with creatureID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,'All visual waypoints removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,'Could not create waypoint-creature with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,'No GUID provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,'No waypoint number provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,'Argument required for \'%s\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,'Waypoint %i added to GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,'Waypoint %d added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,'Waypoint changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,'Waypoint %s modified.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,'WP export successfull.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,'No waypoints found inside the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,'File imported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,'Waypoint removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,'Warning: Could not delete WP from the world with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,'This happens if the waypoint is too far away from your char.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,'The WP is deleted from the database, but not from the world here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,'They will disappear after a server restart.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,'Waypoint %d: Info for creature: %s, GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,'Waittime: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,'Model %d: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,'Emote: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,'Spell: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,'Text%d (ID: %i): %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'AIScript: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'Forced rename for player %s will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'Forced rename for player %s (GUID #%u) will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,'Waypoint-Creature (GUID: %u) Not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,'Could not find NPC...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,'Creature movement type set to \'%s\', waypoints removed (if any).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,'Creature movement type set to \'%s\', waypoints were not removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,'Incorrect value, use on or off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,'Value saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,'Value saved, you may need to rejoin or clean your client cache.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(262,'Areatrigger ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,'Target map or coordinates is invalid (X: %f Y: %f MapId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(264,'Zone coordinates is invalid (X: %f Y: %f AreaId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(265,'Zone %u (%s) is part of instanceable map %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,'Nothing found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,'Object not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,'Creature not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,'Warning: Mob found more than once - you will be teleported to the first one found in DB.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,'Creature Removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,'Creature moved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,'Creature (GUID:%u) must be on the same map as player!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,'Game Object (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,'Game Object (GUID: %u) has references in not found creature %u GO list, can\'t be deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,'Game Object (GUID: %u) removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,'Game Object (GUID: %u) turned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,'Game Object (GUID: %u) moved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(278,'You must select a vendor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(279,'You must send id for item',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,'Vendor has too many items (max 128)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,'You can\'t kick self, logout instead',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,'Player |cffff0000%s|r kicked by |cffff0000%s|r. Reason: |cffff0000%s|r.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(283,'Player %s not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,'Accepting Whisper: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(285,'Accepting Whisper: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,'Accepting Whisper: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(331,'Extended item cost %u not exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2014,'Ticket %d is not assigned, you cannot unassign it.','','','','','','','',''),(2013,'This ticket is already assigned to yourself. To unassign use .ticket unassign %d and then reassign.','','','','','','','',''),(297,'Spawn distance changed to: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(298,'Spawn time changed to: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(299,'The %s field of %s was set to %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(300,'Your chat has been disabled for %u minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(301,'You have disabled %s\'s chat for %u minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(302,'Player\'s chat is already enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(303,'Your chat has been enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(304,'You have enabled %s\'s chat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(400,'|cffff0000[System Message]:|rScripts reloaded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(402,'%s changed your security level to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(403,'You have low security level for this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(404,'Creature movement disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(405,'Creature movement enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(406,'Weather can\'t be changed for this zone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(407,'Weather system disabled at server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(408,'%s is banned for %s. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(409,'%s is banned permanently for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(410,'%s %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(411,'%s unbanned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(412,'There was an error removing the ban on %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(715,'You don\'t meet Battleground level requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(414,'There is no such character.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(415,'There is no such IP in banlist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(416,'Account %s has never been banned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(417,'Ban history for account %s:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(418,'Ban Date: %s Bantime: %s Still active: %s  Reason: %s Set by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(419,'Inf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(420,'Never',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(421,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(422,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,'USER2: %i, ADD: %i, RESULT: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(424,'There is no matching IPban.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(425,'There is no matching account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(426,'There is no banned account owning a character matching this part.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(427,'The following IPs match your pattern:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(428,'The following accounts match your query:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(429,'You learned many spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(430,'You learned all spells for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(431,'You learned all talents for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(432,'You learned all languages.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(433,'You learned all craft skills and recipes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(434,'Could not find \'%s\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(435,'Invalid item id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(436,'No items found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(437,'Invalid gameobject id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6614,'Notification to GM\'s - ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(439,'Found gameobjects %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(440,'Invalid creature id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(441,'Found creatures %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(442,'No area found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(443,'No item sets found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(444,'No skills found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(445,'No spells found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(446,'No quests found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(447,'No creatures found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(448,'No gameobjects found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(449,'Graveyard #%u doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(450,'Graveyard #%u already linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(451,'Graveyard #%u linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(452,'Graveyard #%u can\'t be linked to subzone or not existed zone #%u (internal error).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(717,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(718,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(454,'No faction in Graveyard with id= #%u , fix your DB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(455,'invalid team, please fix database',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(456,'any',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(457,'alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(458,'horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(459,'Graveyard #%u (faction: %s) is nearest from linked to zone #%u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(460,'Zone #%u doesn\'t have linked graveyards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(461,'Zone #%u doesn\'t have linked graveyards for faction: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(462,'Teleport location already exists!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(463,'Teleport location added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(464,'Teleport location NOT added: database error.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(465,'Teleport location deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,'Locations found are:\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(467,'Target unit has %d auras:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(469,'Target unit has %d auras of type %d:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(471,'Quest %u not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(472,'Quest %u started from item. For correct work, please, add item to inventory and start quest in normal way: .additem %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(473,'Quest removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(474,' [rewarded]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(475,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(476,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(477,'%s\'s Fly Mode %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(478,'Opcode %u sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(479,'Character loaded successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(480,'Failed to load the character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(481,'Character dumped successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(482,'Character dump failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(483,'Spell %u broken and not allowed to cast or learn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(484,'Skill %u (%s) for player %s set to %u and current maximum set to %u (without permanent (talent) bonuses).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(485,'Player %s must have skill %u (%s) before using this command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(486,'Invalid skill id (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(487,'You learned default GM spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(488,'You already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(489,'Target(%s) already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(490,'%s doesn\'t know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(491,'You already forgot that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(492,'All spell cooldowns removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(493,'Spell %u cooldown removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(494,'Command : Additem, itemId = %i, amount = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(495,'Command : Additemset, itemsetId = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(496,'Removed itemID = %i, amount = %i from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(497,'Cannot create item \'%i\' (amount: %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(498,'You need to provide a guild name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499,'Player not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(500,'Player already has a guild!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(501,'Guild not created! (already exists?)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(502,'No items from itemset \'%u\' found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(503,'The distance is: (3D) %f (2D) %f yards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(504,'Item \'%i\' \'%s\' Item Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(505,'Item \'%i\' doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(506,'Item \'%i\' \'%s\' Added to Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(507,'Item save failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(508,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(509,'%d - sender: %s (guid: %u account: %u ) receiver: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(510,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(511,'Wrong link type!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(512,'%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(513,'%d - |cffffffff|Hquest:%d|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(514,'%d - |cffffffff|Hcreature_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(515,'%d - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(516,'%d - |cffffffff|Hgameobject_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(517,'%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(521,'%d - |cffffffff|Hskill:%d|h[%s %s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(519,'|cffffffff|Htele:%s|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(520,'%d - |cffffffff|Hspell:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(518,'%d - |cffffffff|Hitemset:%d|h[%s %s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(522,'Game Object (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(523,'>> Game Object %s (GUID: %u) at %f %f %f. Orientation %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'USER1: %i, ADD: %i, DIF: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(525,'>> Add Game Object \'%i\' (%s) (GUID: %i) added at \'%f %f %f\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(526,'%s (lowguid: %u) movement generators stack:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(527,'   Idle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(528,'   Random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(529,'   Waypoint',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(530,'   Animal random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(531,'   Confused',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(532,'   Targeted to player %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(533,'   Targeted to creature %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(534,'   Targeted to <NULL>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(535,'   Home movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(536,'   Home movement used for player?!?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(537,'   Taxi flight',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(538,'   Unknown movement generator (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(540,'Level: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(541,'Health (base): %u. (max): %u. (current): %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'Map: %u (%s) Zone: %u (%s) Area: %u (%s)\nX: %f Y: %f Z: %f Orientation: %f\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(543,'Loot: %u Pickpocket: %u Skinning: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(544,'Position: %f %f %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(545,'*** Is a vendor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(546,'*** Is a trainer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(547,'InstanceID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(548,'Player%s %s (guid: %u) Account: %s (id: %u) GMLevel: %u Last IP: %s Last login: %s Latency: %ums',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(549,'Played time: %s Level: %u Money: %ug%us%uc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(550,'Command .pinfo doesn\'t support \'rep\' option for offline players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(551,'%s has explored all zones now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(552,'%s has no more explored zones.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(553,'%s has explored all zones for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(554,'%s has hidden all zones from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(555,'Hover enabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(556,'Hover disabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(557,'You have been leveled up (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(558,'You have been leveled down (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(559,'Your level progress has been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(560,'The area has been set as explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(561,'The area has been set as not explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(562,'GUID=%i \'s updateIndex: %i, value:  %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(563,'You change GUID=%i \'s UpdateIndex: %i value to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(564,'The value index %u is too big to %u(count: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(565,'Set %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(566,'You Set %u Field:%u to uint32 Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(567,'Set %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(568,'You Set %u Field:%i to float Value: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(569,'Get %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(570,'The uint32 value of %u in %u is: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(571,'Get %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(572,'The float of %u value in %u is: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(573,'.Set32Bit:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(574,'You set Bit of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(575,'.Mod32Value:[OPCODE]:%u [VALUE]:%i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(576,'You modified the value of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(577,'You are now invisible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(578,'You are now visible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(600,'The Alliance wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(601,'The Horde wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(602,'The battle for Warsong Gulch begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(603,'The battle for Warsong Gulch begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(604,'Let the battle for Warsong Gulch begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(605,'$n captured the Horde flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(606,'$n captured the Alliance flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(607,'The Horde flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(608,'The Alliance Flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(609,'The Alliance Flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(610,'The Horde flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(611,'The Horde flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(612,'The Alliance Flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(613,'The flags are now placed at their bases.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(650,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(651,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(652,'stables',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(653,'blacksmith',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(654,'farm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(655,'lumber mill',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(656,'mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(657,'The %s has taken the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(658,'$n has defended the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(659,'$n has assaulted the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(660,'$n claims the %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(661,'The Battle for Arathi Basin begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(662,'The Battle for Arathi Basin begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(663,'The Battle for Arathi Basin has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(664,'The Alliance has gathered $1776W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(665,'The Horde has gathered $1777W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(700,'You must be level %u to form an arena team',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(701,'One minute until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(702,'Thirty seconds until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(703,'Fifteen seconds until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(704,'The Arena battle has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(705,'You must wait %s before speaking again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(706,'This item(s) have problems with equipping/storing in inventory.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(542,'Field Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(579,'Selected player or creature not have victim.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(707,'%s wishes to not be disturbed and cannot receive whisper messages: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(708,'%s is Away from Keyboard: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(709,'Do not Disturb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(710,'Away from Keyboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(580,'Player %s learned all default spells for race/class and completed quests rewarded spells.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(468,'id: %d eff: %d type: %d duration: %d maxduration: %d name: %s%s%s caster: %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(666,'After your recent battle in %s our best attempts to award you a Mark of Honor failed. Enclosed you will find the Mark of Honor we were not able to deliver to you at the time. Thanks for fighting in %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(524,'Selected object:\n|cffffffff|Hitemset:%d|h[%s]|h|r\nGUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(581,'Found near gameobjects (distance %f): %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(305,'Faction %s (%u) reputation of %s was set to %5d!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(306,'The arena points of %s was set to %u!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(307,'No faction found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(308,'Faction %i unknown!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(309,'Invalid parameter %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(310,'delta must be between 0 and %d (inclusive)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,'%d - |cffffffff|Hfaction:%d|h[%s]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(312,' [visible]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(313,' [at war]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(315,' [hidden]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(314,' [peace forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(317,' [inactive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(318,'Hated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(319,'Hostile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(320,'Unfriendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(321,'Neutral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(322,'Friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(323,'Honored',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(324,'Revered',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(325,'Exalted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(326,'Faction %s (%u) can\'not have reputation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(327,' [no reputation]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(582,'SpawnTime: Full:%s Remain:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(713,'You must be level %u to join an arena team!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(712,'Your group is too large for this arena. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(682,'The Horde has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(681,'The Alliance has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(680,'The Horde has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(679,'The Alliance has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(678,'The Horde has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(677,'The Alliance has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(676,'The Horde has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(675,'The Alliance has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(674,'The Horde has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(673,'The Alliance has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(672,'The Horde has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(671,'The Alliance has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(670,'The Horde has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(669,'The Alliance has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(470,'id: %d eff: %d name: %s%s%s caster: %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(316,' [invisible forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(589,'   Point movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(590,'   Fear movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(591,'   Distract movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(583,'%d - |cffffffff|Hgameevent:%d|h[%s]|h|r%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(584,'No event found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(585,'Event not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(586,'Event %u: %s%s\nStart: %s End: %s Occurence: %s Length: %s\nNext state change: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(587,'Event %u already active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(588,'Event %u not active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(592,'You have learned all spells in craft: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,'You try to hear sound %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(668,'The Horde has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(615,'The Horde flag has been respawned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(636,'The Battle for Eye of the Storm begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(328,'Characters at account %s (Id: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(329,'  %s (GUID %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(330,'No players found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(332,'GM mode is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(333,'GM mode is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(334,'GM Chat Badge is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(335,'GM Chat Badge is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(667,'The Alliance has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(638,'The Battle for Eye of the Storm has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(637,'The Battle for Eye of the Storm begins in 30 seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(801,'You do not have enough gold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(802,'You do not have enough free slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(803,'Your partner does not have enough free bag slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(804,'You do not have permission to perform that function',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(805,'Unknown language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(806,'You don\'t know that language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(807,'Please provide character name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(808,'Player %s not found or offline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(687,'The flag has been reset',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(711,'Your group is too large for this battleground. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Mail can\'t have more %u item stacks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(599,'No gamemasters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(614,'The Alliance flag has been respawned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(598,'|    Account    |  GM  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(597,'Current gamemasters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(595,'Currently Banned IPs:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(596,'|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(594,'|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(593,'Currently Banned Accounts:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(413,'Account not exist: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(438,'Found items %u: %u ( inventory %u mail %u auction %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(401,'You change security level of account %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,'server console command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(336,'You repair all %s\'s items.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Current Message of the day: \r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Your password can\'t be longer than 16 characters (client limit), password not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Invaid item count (%u) for item %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'The new passwords do not match',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Password not changed (unknown error)!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(686,'The Flag has been dropped!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(685,'The Horde has captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(684,'The Alliance has captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(683,'$N has taken the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(742,'Frostwolf Relief Hut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(741,'West Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(740,'East Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(739,'Frostwolf Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(736,'Iceblood Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(737,'Iceblood Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(738,'Tower Point',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(734,'Stonehearth Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(735,'Snowfall Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(732,'Icewing Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(733,'Stonehearth Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(730,'Dun Baldar North Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(731,'Stormpike Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(728,'Stormpike Aid Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(729,'Dun Baldar South Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(726,'Irondeep Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(727,'Coldtooth Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(725,'The %s has taken the %s! Its supplies will now be used for reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(724,'The %s is under attack! If left unchecked, the %s will capture it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(723,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(721,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(722,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(719,'%s was destroyed by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(720,'The %s is under attack! If left unchecked, the %s will destroy it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(809,'Account for character %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1000,'Exiting daemon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1001,'Account deleted: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1002,'Account %s NOT deleted (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1003,'Account %s NOT deleted (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1004,'Account created: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1005,'Account name can\'t be longer than 16 characters (client limit), account not created!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1006,'Account with this name already exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1007,'Account %s NOT created (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1008,'Account %s NOT created (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1009,'Player %s (Guid: %u) Account %s (Id: %u) deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1010,'|    Account    |       Character      |       IP        | GM | TBC |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1011,'|<Error>        | %20s |<Error>          |<Er>|<Err>|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1100,'Account %s (Id: %u) have up to %u expansion allowed now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1101,'Message of the day changed to:\r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1102,'Message sent to %s: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1103,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1104,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1105,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1106,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1107,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1108,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1109,'%d - %s %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1110,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1111,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1112,'Failed to open file: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1113,'Account %s (%u) have max amount allowed characters (client limit)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1114,'Dump file has broken data!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1115,'Invalid character name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1116,'Invalid character guid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1117,'Character guid %u in use!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1118,'%d - guild: %s (guid: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5000,'You froze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5001,'It might be amusing but no... you cant freeze yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5002,'Invalid input check the name of target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5003,'You unfroze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5004,'There are no frozen players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5005,'Following players are frozen on the server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5006,'- %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(337,'All your items repaired by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(338,'You set waterwalk mode %s for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(339,'Your waterwalk mode set to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(340,'%s is now following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(341,'%s is not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(342,'%s is now not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(810,'You must be in a raid group to enter the instance %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(811,'You cannot enter %s while in a ghost mode!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Using World DB: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Using script library: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5009,'Sound %u Played to server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10040,'The Alliance has taken the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10039,'The Horde has taken the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10038,'The Alliance has taken the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10037,'The Horde has taken the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10036,'The Alliance has taken the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10035,'The Horde has taken the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10034,'The Alliance has taken the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10033,'The Horde has taken the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10032,'The Alliance lost a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10031,'The Horde lost a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10030,'The Alliance has taken a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10029,'The Horde has taken a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10028,'The Alliance lost Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10027,'The Horde lost Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10026,'The Alliance has captured Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10025,'The Horde has captured Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10024,'The Alliance lost the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10023,'The Horde lost the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10022,'The Alliance lost the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10021,'The Horde lost the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10020,'The Alliance lost the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10019,'The Horde lost the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10018,'The Alliance has captured the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10017,'The Horde has captured the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10016,'The Alliance has taken the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10015,'The Horde has taken the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10014,'The Alliance has taken the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10013,'The Horde has taken the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10012,'The Alliance lost Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10011,'The Horde lost Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10010,'The Alliance lost The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10009,'The Horde lost The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10008,'The Alliance lost The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10007,'The Horde lost The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10006,'The Alliance has taken Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10005,'The Horde has taken Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10004,'The Alliance has taken The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10003,'The Horde has taken The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10002,'The Alliance has taken The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10001,'The Horde has taken The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(746,'|cffff0000[Automatic]:|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(747,'|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1119,'You must use male or female as gender.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1120,'You change gender of %s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1121,'Your gender changed to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(744,'The Battle for Alterac Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(745,'The Battle for Alterac Valley has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10041,'The Horde lost the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(748,'The Frostwolf General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(749,'The Stormpike General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(770,'Your group has members not in your arena team. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(771,'Your group does not have enough players to join this match.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(772,'The Gold Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(773,'The Green Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(774,'There aren\'t enough players in this battleground. It will end soon unless some more players join to balance the fight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(775,'Your group has an offline member. Please remove him before joining.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(776,'Your group has players from the opposing faction. You can\'t join the battleground as a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(777,'Your group has players from different battleground brakets. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(778,'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(779,'Someone in your party is Deserter. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(780,'Someone in your party is already in three battleground queues. You cannot join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(781,'You cannot teleport to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(782,'You cannot summon players to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(783,'You must be in GM mode to teleport to a player in a battleground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(784,'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(785,'Arena testing turned %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(786,'|cffff0000[Automatic]:|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(787,'|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1122,'Your group is too large for this battleground. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1123,'Your group is too large for this arena. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1124,'Your group has members not in your arena team. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1125,'Your group does not have enough players to join this match.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1126,'The Gold Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1127,'The Green Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1128,'There aren\'t enough players in this battleground. It will end soon unless some more players join to balance the fight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1129,'Your group has an offline member. Please remove him before joining.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1130,'Your group has players from the opposing faction. You can\'t join the battleground as a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1131,'Your group has players from different battleground brakets. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1132,'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1133,'Someone in your party is Deserter. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1134,'Someone in your party is already in three battleground queues. You cannot join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1135,'You cannot teleport to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1136,'You cannot summon players to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1137,'You must be in GM mode to teleport to a player in a battleground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1138,'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6615,'|cffffff00[|c1f40af20GM Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2012,'Invalid name specified. Name should be that of an online Gamemaster.','','','','','','','',''),(2011,'Showing list of closed tickets.','','','','','','','',''),(2009,'Showing list of open tickets.','','','','','','','',''),(2010,'Showing list of open tickets whose creator is online.','','','','','','','',''),(2008,'%u Tickets succesfully reloaded from the database.','','','','','','','',''),(2007,'Ticket %d is already assigned.','','','','','','','',''),(2006,'Please close ticket before deleting it permanently.','','','','','','','',''),(2005,'Ticket not found.','','','','','','','',''),(2004,'|cff00ff00Deleted by|r:|cff00ccff %s|r ','','','','','','','',''),(2003,'|cff00ff00Closed by|r:|cff00ccff %s|r ','','','','','','','',''),(2002,'|cff00ff00Character|r|cffff00ff %s |r|cff00ff00abandoned ticket entry:|r|cffff00ff %d.|r','','','','','','','',''),(2001,'|cff00ff00Character|r|cffff00ff %s |r|cff00ff00edited his/her ticket:|r|cffff00ff %d.|r','','','','','','','',''),(2000,'|cff00ff00New ticket from|r|cffff00ff %s.|r |cff00ff00Ticket entry:|r|cffff00ff %d.|r','','','','','','','',''),(10056,'You must be a member of the Horde to enter the Hall of Legends.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10057,'You must be a member of the Alliance to enter the Champion\'s Hall.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2015,'You cannot unassign tickets from staffmembers with a higher security level than yourself.','','','','','','','',''),(2016,'Cannot close ticket %d, it is assigned to another GM.','','','','','','','',''),(2017,'|cff00ff00Ticket|r:|cff00ccff %d.|r ','','','','','','','',''),(2018,'|cff00ff00Created by|r:|cff00ccff %s|r ','','','','','','','',''),(2019,'|cff00ff00Last change|r:|cff00ccff %s ago|r ','','','','','','','',''),(2020,'|cff00ff00Assigned to|r:|cff00ccff %s|r ','','','','','','','',''),(2021,'|cff00ff00Unassigned by|r:|cff00ccff %s|r ','','','','','','','',''),(2022,'\n|cff00ff00Message|r: \"%s\"|r ','','','','','','','',''),(2023,'\n|cff00ff00Comment|r: \"%s\"|r ','','','','','','','',''),(2024,'\n|cff00ccff%s|r |cff00ff00Added comment|r: \"%s\"|r ','','','','','','','',''),(10042,'The Alliance lost the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10043,'The Horde lost the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10044,'The Alliance lost the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10045,'The Horde lost the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10046,'The Alliance lost the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10047,'The Horde lost the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10048,'The Alliance lost the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10049,'The Horde has collected 200 silithyst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10050,'The Alliance has collected 200 silithyst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10051,'Take me to Northpass Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10052,'Take me to Eastwall Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10053,'Take me to Crown Guard Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10054,'Give me the flag, I\'ll take it to the central beacon for the glory of the Alliance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10055,'Give me the flag, I\'ll take it to the central beacon for the glory of the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(345,'Private ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(346,'Corporal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(347,'Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(348,'Master Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(349,'Sergeant Major ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(350,'Knight ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(351,'Knight-Lieutenant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(352,'Knight-Captain ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(353,'Knight-Champion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(354,'Lieutenant Commander ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(355,'Commander ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(356,'Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(357,'Field Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(358,'Grand Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(359,'Scout ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(360,'Grunt ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(361,'Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(362,'Senior Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(363,'First Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(364,'Stone Guard ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(365,'Blood Guard ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(366,'Legionnare ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(367,'Centurion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(368,'Champion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(369,'Lieutenant General ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(370,'General ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(371,'Warlord ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(372,'High Warlord ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(373,'Game Master ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(374,'No Rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(375,'%s (Rank %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(376,'Today: [Honorable Kills: |c0000ff00%u|r] [Dishonorable Kills: |c00ff0000%u|r]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(377,'Yesterday: [Kills: |c0000ff00%u|r] [Honor: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(378,'This Week: [Kills: |c0000ff00%u|r] [Honor: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(379,'Last Week: [Kills: |c0000ff00%u|r] [Honor: %u] [Standing: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(380,'Life Time: [Honorable Kills: |c0000ff00%u|r] [Dishonorable Kills: |c00ff0000%u|r] [Highest Rank %u: %s]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `trinity_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uptime`
--

DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime` (
  `starttime` bigint(20) unsigned NOT NULL default '0',
  `startstring` varchar(64) NOT NULL default '',
  `uptime` bigint(20) unsigned NOT NULL default '0',
  `maxplayers` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

--
-- Dumping data for table `uptime`
--

LOCK TABLES `uptime` WRITE;
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `core_version` varchar(120) default NULL COMMENT 'Core revision dumped at startup.',
  `core_revision` bigint(20) unsigned default '0',
  `db_version` varchar(120) default NULL COMMENT 'Version of world DB.',
  `script_version` varchar(120) default NULL COMMENT 'Version of scripts DB.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Version Notes';

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waypoint_data`
--

DROP TABLE IF EXISTS `waypoint_data`;
CREATE TABLE `waypoint_data` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT 'Creature GUID',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `move_flag` tinyint(1) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  `action_chance` smallint(3) NOT NULL default '100',
  `wpguid` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `waypoint_data`
--

LOCK TABLES `waypoint_data` WRITE;
/*!40000 ALTER TABLE `waypoint_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `waypoint_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waypoint_scripts`
--

DROP TABLE IF EXISTS `waypoint_scripts`;
CREATE TABLE `waypoint_scripts` (
  `id` int(11) unsigned NOT NULL default '0',
  `delay` int(11) unsigned NOT NULL default '0',
  `command` int(11) unsigned NOT NULL default '0',
  `datalong` int(11) unsigned NOT NULL default '0',
  `datalong2` int(11) unsigned NOT NULL default '0',
  `dataint` int(11) unsigned NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0',
  `guid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `waypoint_scripts`
--

LOCK TABLES `waypoint_scripts` WRITE;
/*!40000 ALTER TABLE `waypoint_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `waypoint_scripts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-09-21  7:17:42
