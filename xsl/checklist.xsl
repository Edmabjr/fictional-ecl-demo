<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/checklist">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="title"/></title>
        <style>
          body { background:#10141a; color:#e8e8e8; font-family:monospace; margin:16px; }
          h1 { font-size:20px; margin:8px 0; }
          .meta { color:#9aa4b2; font-size:14px; }
          .notice { background:#3a1f1f; color:#ff9a9a; padding:8px; font-size:13px; }
          .caution { border-left:6px solid #f5a623; background:#2a2415; padding:8px; margin:12px 0; }
          .warning { border-left:6px solid #e53935; background:#2a1717; padding:8px; margin:12px 0; }
          .step { display:flex; padding:10px 0; border-bottom:1px solid #2b3340; }
          .action { flex:0 0 auto; }
          .dots { flex:1; border-bottom:2px dotted #5b6675; margin:0 8px 6px 8px; }
          .response { flex:0 0 auto; color:#7CFC9A; font-weight:bold; }
        </style>
      </head>
      <body>
        <p class="notice"><xsl:value-of select="notice"/></p>
        <h1><xsl:value-of select="title"/></h1>
        <p class="meta">
          Aircraft: <xsl:value-of select="applicability/@aircraft"/><br/>
          Phase: <xsl:value-of select="flightPhase"/>
        </p>

        <xsl:for-each select="warnings/warning">
          <div class="{@level}">
            <xsl:value-of select="translate(@level, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>:
            <xsl:value-of select="."/>
          </div>
        </xsl:for-each>

        <xsl:for-each select="steps/step">
          <div class="step">
            <span class="action"><xsl:value-of select="action"/></span>
            <span class="dots"></span>
            <span class="response"><xsl:value-of select="response"/></span>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

