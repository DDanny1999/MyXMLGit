<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>Living Possibilities</h2>
                <h3> Appartement Information</h3>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Rooms</th>
                        <th>Area</th>
                        <th>Furnitures</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="livingSituation/Appartement/Rooms/Room">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="Area"/></td>
                            <td><xsl:value-of select="LivingRoom/Furnitures/Furniture/name"/></td>
                            <td><xsl:value-of select="LivingRoom/Furnitures/Furniture/Description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h3> Appartement Information</h3>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Rooms</th>
                        <th>Area</th>
                        <th>Furnitures</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <xsl:for-each select="livingSituation/House/Rooms/Room">
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="Area"/></td>
                            <td><xsl:value-of select="LivingRoom/Furnitures/Furniture/name"/></td>
                            <td><xsl:value-of select="LivingRoom/Furnitures/Furniture/Description"/></td>
                        </xsl:for-each>xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>