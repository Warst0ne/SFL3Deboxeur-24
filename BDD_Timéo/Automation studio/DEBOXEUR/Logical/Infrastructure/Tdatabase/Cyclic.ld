PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="8" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpDatabaseCore_0" type="MpDatabaseCore"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gDatabaseCore"/>
			<functionblock position="top" type="MpDatabaseCore"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="1"/>
			<functionblock position="middle" type="MpDatabaseCore"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseCore"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseCore"><input name="Connect"/><output name="CommandBusy"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseCore"><input name="Disconnect"/><output name="CommandDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseCore"><output name="Connected"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpDatabaseCore"><output name="Info"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpDatabaseQuery_" type="MpDatabaseQuery"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gDatabaseCore"/>
			<functionblock position="top" type="MpDatabaseQuery"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="1"/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="'SetData'"/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="Name" vardynamic="true"/><output name="CommandBusy"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="Execute"/><output name="CommandDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpDatabaseQuery"><input name="Next"/><output name="Info"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpDatabaseQuery_1" type="MpDatabaseQuery"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gDatabaseCore"/>
			<functionblock position="top" type="MpDatabaseQuery"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="1"/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="'GetData'"/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="Name" vardynamic="true"/><output name="CommandBusy"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpDatabaseQuery"><input name="Execute"/><output name="CommandDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpDatabaseQuery"><input name="Next"/><output name="Info"/></functionblock>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM

















