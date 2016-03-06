<!DOCTYPE html>
<html lang="utf-8">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>{:$web['title']:}</title>
		<link rel="shortcut icon" href="/favicon.ico" />
		<link rel="bookmark" href="/favicon.ico" />
		<meta name="keywords" content="{:$web['keyword']:}" />
		<meta name="description" content="{:$web['description']:}" />
		<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
		<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/cyrus/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/cyrus/css/sytle.css" />
		<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="/inc/templates/frontend/default/script/scrolltopcontrol.js"></script>
	</head>

	<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

				</div>
				<div class ="nav navbar-nav pull-left"><a class="navbar-brand" href="/" style="padding: 0px;">
						<img src="{:$web['logo']:}" width="220" height="62" />
					</a></div>
				<div class="collapse navbar-collapse pull-right">
					<ul class="nav navbar-nav" >
						{:foreach channel::navigation() as $n:}
						<li>
							<a href="#{:$n['titleEn']:}">{:$n['title']:}</a>
						</li>{:/foreach:}
					</ul>
				</div>
	
			</div>
		</nav>
		<div id="HOME"></div>
		<div id="Portfolio"></div>
		<div id="Services"></div>
		<div id="About"></div>
		<div id="Contact"></div>
	</body>
<script type="text/javascript" src="/inc/templates/frontend/default/script/index.js"></script>
</html>