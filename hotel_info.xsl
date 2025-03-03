<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Hotel Listings</title>
            <style>
                body {
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    background: linear-gradient(135deg, #1a1a2e, #16213e, #0f3460, #ffcc00);
                    background-attachment: fixed;
                    background-size: cover;
                    color: #fff;
                    margin: 0;
                    padding: 20px;
                    text-align: center;
                }
                h2 {
                    font-size: 32px;
                    color: #ffcc00;
                    font-weight: 700;
                    margin-bottom: 20px;
                    text-shadow: 2px 2px 10px rgba(255, 204, 0, 0.7);
                }
                table {
                    width: 80%;
                    margin: auto;
                    margin-top: 50px;
                    border-collapse: collapse;
                    background: rgba(0, 0, 0, 0.85);
                    border-radius: 12px;
                    overflow: hidden;
                    border: 2px solid #ffcc00;
                    box-shadow: 0px 0px 15px rgba(255, 204, 0, 0.5);
                }
                th, td {
                    padding: 14px;
                    text-align: center;
                    border-bottom: 1px solid #ffcc00;
                    color: #fff;
                    font-size: 16px;
                }
                th {
                    background-color: #222;
                    color: #ffcc00;
                    font-size: 18px;
                    text-transform: uppercase;
                    letter-spacing: 1px;
                }
                tr:hover {
                    background-color: rgba(255, 204, 0, 0.2);
                    transition: 0.3s;
                }
            </style>
        </head>
        <body>
            <h2>🏨 Luxurious Hotel Listings</h2>
            <table>
                <tr>
                    <th>🏷 Hotel ID</th>
                    <th>🏨 Name</th>
                    <th>📍 Location</th>
                    <th>⭐ Rating</th>
                    <th>💰 Price/Night</th>
                    <th>🎯 Amenities</th>
                </tr>
                <xsl:for-each select="hotel_list/hotel">
                    <tr>
                        <td><xsl:value-of select="hotel_id"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="location"/></td>
                        <td><xsl:value-of select="rating"/></td>
                        <td><xsl:value-of select="price_per_night"/></td>
                        <td><xsl:value-of select="amenities"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
