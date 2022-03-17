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
                        <th>Furniture</th>
                        <th>Description</th>
                        <th>Furniture</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="livingSituation/Appartement/Rooms/Room">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="Area"/></td>
                           <!-- <td><xsl:value-of select=".//*[contains(@id,'f')]/Furniture/name"/></td>
                            <td><xsl:value-of select=".//*[contains(@id,'f')]/Furniture/Description"/></td> -->

                            <xsl:for-each select="*/Furnitures/Furniture">
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="Description"/></td>
                            </xsl:for-each>

                        </tr>
                    </xsl:for-each>
                </table>
                <h3> Second Appartement Information</h3>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Rooms</th>
                        <th>Area</th>
                        <th>Furnitures</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <xsl:for-each select="livingSituation/Appartement_2/Rooms/Room">
                            <tr>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="Area"/></td>
                                <td><xsl:value-of select=".//*[contains(@id,'f')]/Furniture/name"/></td>
                                <td><xsl:value-of select=".//*[contains(@id,'f')]/Furniture/Description"/></td>
                            </tr>
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>