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
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-9422367-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-9422367-1');
</script>


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
&copy; 2017 Lee Baker. All rights reserved.
</span>
</div>
</div>
</body>
</html>