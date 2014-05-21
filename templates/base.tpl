<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta name="description" content="Lee Baker is an electrical engineer who enjoys hiking, paragliding and travelling." />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link  rel="StyleSheet" type="text/css" href="/css/default.css"></link>
<title>{% block title %}Lee Baker :: Outdoor adventures, software projects, resume, and contact info{% endblock title %}</title>
<style>
{% block css %}{% endblock %}
</style>
</head>
<body>
<div id="page">
<div id="titlebar">
<div id="title">Lee C. Baker</div>

<div id="title_links">

<a href="/">Home</a>
<a href="https://picasaweb.google.com/109561067981333433119">Pictures</a>
<!--a href="/resume">Resume</a -->
<!-- a href="/apps/">Apps</a -->
<a href="/contact">Contact</a>

</div>
</div>

<div id="content">

{% block content %}
{% endblock content %}
</div>

<div id="footerbar">
<span id="copyright">
&copy; 2014 Lee Baker. All rights reserved.
</span>
</div>
</div>

<?
$request_ip = $_SERVER['REMOTE_ADDR'];
if('127.0.0.1' != $request_ip)
{
?>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-9422367-1");
pageTracker._trackPageview();
} catch(err) {}</script>
<? } ?>

</body>
</html>