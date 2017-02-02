<#macro adminLayout>
<!doctype html>
<html>
<head>
    <title>SoManyFeeds Admin - Damien Le Berrigaud's feed aggregator.</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, initial-scale=1.0, user-scalable=yes">

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Vollkorn:400">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/app.css">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" href="favicon.png">
</head>
<body>
<header id="app-header">
    <section class="content">
        <svg viewBox="0 0 730 200">
            <circle cx="595" cy="100" r="130" fill="#00BCD4"></circle>
            <text x="0" y="160" text-anchor="130" font-family="Vollkorn" font-size="200" font-weight="500"
                  fill="#FFFFFF">damo.io
            </text>
        </svg>
        <aside id="app-menu">
            <ul>
                <li class="not"><a href="/feeds">Feeds</a></li>
            </ul>
        </aside>
    </section>
</header>
<section id="app-content" class="content">
    <#nested/>
</section>
</body>
</html>
</#macro>
