<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				Hi Hem,
				<br></br>
				<br>
					<div style="padding-left: 10px;">
						Please find below the idle time entries for <xsl:value-of select="IdleTimeEntryReport/current_date" /> for your reference.
					</div>
				</br>
				<h2>Idle Time Entry Report</h2>
				<table style="font-family: verdana, arial,sans-serif;font-size: 11px;color: #333333;border-width: 1px;border-color: #999999;border-collapse: collapse;">
					<tr>
						<th style="border-width: 1px;padding: 8px;border-style: solid;background-color: #A5A1A0;border-color: #a9c6c9;height: 10mm;width: 12mm;">Username</th>						
						<th style="border-width: 1px;padding: 8px;border-style: solid;background-color: #A5A1A0;border-color: #a9c6c9;height: 10mm;width: 12mm;">Date</th>
						<th style="border-width: 1px;padding: 8px;border-style: solid;background-color: #A5A1A0;border-color: #a9c6c9;height: 10mm;width: 12mm;">Category</th>
						<th style="border-width: 1px;padding: 8px;border-style: solid;background-color: #A5A1A0;border-color: #a9c6c9;height: 10mm;width: 12mm;">Description</th>
						<th style="border-width: 1px;padding: 8px;border-style: solid;background-color: #A5A1A0;border-color: #a9c6c9;height: 10mm;width: 12mm;">Time in Hrs</th>
					</tr>				
					<xsl:for-each select="IdleTimeEntryReport/idleReportData">
						<tr>
							<td
								style="border-width: 1px;padding: 8px;border-style: solid;border-color: #a9c6c9;height: 10mm;width: 12mm;background-color: #EBEBEB;">
								<xsl:value-of select="user_name" />
							</td>
							<td
								style="border-width: 1px;padding: 8px;border-style: solid;border-color: #a9c6c9;height: 10mm;width: 12mm;">
								<xsl:value-of select="task_date" />
							</td>
							<td
								style="border-width: 1px;padding: 8px;border-style: solid;border-color: #a9c6c9;height: 10mm;width: 12mm;">
								<xsl:value-of select="task_status" />
							</td>
							<td
								style="border-width: 1px;padding: 8px;border-style: solid;border-color: #a9c6c9;height: 10mm;width: 12mm;">
								<xsl:value-of select="task_description" />
							</td>
							<td
								style="border-width: 1px;padding: 8px;border-style: solid;border-color: #a9c6c9;height: 10mm;width: 12mm;">
								<xsl:value-of select="task_time" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<br></br>
				<br>
					Thanks and Regards
				</br>
				<div>Raghavi</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>