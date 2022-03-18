<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table.customTable {
                    width: 100%;
                    background-color: #FFFFFF;
                    border-collapse: collapse;
                    border-width: 2px;
                    border-color: #7ea8f8;
                    border-style: solid;
                    color: #000000;
                    }

                    table.customTable td, table.customTable th {
                    border-width: 2px;
                    border-color: #7ea8f8;
                    border-style: solid;
                    padding: 5px;
                    }

                    table.customTable thead {
                    background-color: #7ea8f8;
                    }
                </style>


            </head>
            <body>
                <h2>Living Situations</h2>
                <h4><em>Owner of the First Appartement:</em></h4>
                <table class="customTable">
                    <tr bgcolor="#D2691E">
                        <th>Name</th>
                        <th>Age</th>
                        <th>PLZ</th>
                        <th>Ort</th>
                    </tr>
                    <xsl:for-each select="livingSituation/Appartement/Owner">
                            <tr bgcolor="#7FFFD4">
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ort"/>
                                </td>

                            </tr>

                    </xsl:for-each>
                </table>

                <h3><u>First Appartement Information:</u></h3>
                <table class="customTable">
                    <tr bgcolor="#8a2be2">
                        <th>Rooms</th>
                        <th>Area</th>
                        <th>Furniture</th>
                        <th>Description</th>
                        <th>Furniture</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="livingSituation/Appartement/Rooms/Room">
                        <xsl:sort select=".//*[contains(@unit,'qm')]" data-type="number" order="ascending"/>
                        <xsl:if test="Area &gt; 10">
                            <tr bgcolor="#778899">
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Area"/><xsl:value-of select="Area/@unit"/>
                                </td>

                                <xsl:for-each select="*/Furnitures/Furniture">
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Description"/>
                                    </td>
                                </xsl:for-each>

                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

                <h4><em>Owner of the Second Appartement:</em></h4>
                <table class="customTable">
                    <tr bgcolor="#D2691E">
                        <th>Name</th>
                        <th>Age</th>
                        <th>PLZ</th>
                        <th>Ort</th>
                    </tr>
                    <xsl:for-each select="livingSituation/Appartement_2/Owner">
                        <tr bgcolor="#7FFFD4">
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="age"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="ort"/>
                            </td>

                        </tr>

                    </xsl:for-each>
                </table>

                <h3><u>Second Appartement Information:</u></h3>

                <table class="customTable">
                    <tr bgcolor="#8a2be2">
                        <th>Rooms</th>
                        <th>Area</th>
                        <th>Furnitures</th>
                        <th>Description</th>
                        <th>Furniture</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <xsl:for-each select="livingSituation/Appartement_2/Rooms/Room">
                            <xsl:sort select=".//*[contains(@unit,'qm')]" data-type="number" order="ascending"/>
                            <tr bgcolor="#778899">
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Area"/><xsl:value-of select="Area/@unit"/>
                                </td>

                                <xsl:for-each select="*/Furnitures/Furniture">
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Description"/>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>