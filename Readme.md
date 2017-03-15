<!DOCTYPE html>
<html class="" lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="Readme.md · master · Yuan, Jiangye / LineExtr" property="og:title">
<meta content="Straight line extraction from images" property="og:description">
<meta content="https://code-int.ornl.gov/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="og:image">
<meta content="https://code-int.ornl.gov/jiy/LineExtr/blob/master/Readme.md" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="Readme.md · master · Yuan, Jiangye / LineExtr" property="twitter:title">
<meta content="Straight line extraction from images" property="twitter:description">
<meta content="https://code-int.ornl.gov/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="twitter:image">

<title>Readme.md · master · Yuan, Jiangye / LineExtr · GitLab</title>
<meta content="Straight line extraction from images" name="description">
<link rel="shortcut icon" type="image/x-icon" href="/assets/favicon-075eba76312e8421991a0c1f89a89ee81678bcde72319dd3e8047e2a47cd3a42.ico" />
<link rel="stylesheet" media="all" href="/assets/application-a6dd150d84720bf9a3c0d83ce742846db842b2f38248e1dd91159801d5aa5f41.css" />
<link rel="stylesheet" media="print" href="/assets/print-9c3a1eb4a2f45c9f3d7dd4de03f14c2e6b921e757168b595d7f161bbc320fc05.css" />
<script src="/assets/application-8d6d7877bb93d20f2080ff81b36d47fe748b20b0b0f6cd659ca42fcb2ef3e2fd.js"></script>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="Pmz8AE1SJUrwHiBTMtJ5JGxxPJkDh3PvrQwO5Rq5v2bkTFUdcXYGAK2Zx4yhk9bLEE2Aehk39gFXER9Uv3rLxw==" />
<meta content="origin-when-cross-origin" name="referrer">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<meta content="#474D57" name="theme-color">
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-5a9cee0e8a51212e70b90c87c12f382c428870c0ff67d1eb034d884b78d2dae7.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-a6eec6aeb9da138e507593b464fdac213047e49d3093fc30e90d9a995df83ba3.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-retina-72e2aadf86513a56e050e7f0f2355deaa19cc17ed97bbe5147847f2748e5a3e3.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-retina-8ebe416f5313483d9c1bc772b5bbe03ecad52a54eba443e5215a22caed2a16a2.png" sizes="152x152" />
<link color="rgb(226, 67, 41)" href="/assets/logo-d36b5212042cebc89b96df4bf6ac24e43db316143e89926c0db839ff694d2de4.svg" rel="mask-icon">
<meta content="/assets/msapplication-tile-1196ec67452f618d39cdd85e2e3a542f76574c071051ae7effbfde01710eb17d.png" name="msapplication-TileImage">
<meta content="#30353E" name="msapplication-TileColor">




</head>

<body class="ui_charcoal" data-group="" data-page="projects:blob:show" data-project="LineExtr">
<script>
//<![CDATA[
window.gon={};gon.api_version="v3";gon.default_avatar_url="https:\/\/code-int.ornl.gov\/assets\/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png";gon.max_file_size=10;gon.relative_url_root="";gon.shortcuts_path="\/help\/shortcuts";gon.user_color_scheme="white";gon.award_menu_url="\/emojis";gon.katex_css_url="\/assets\/katex-e46cafe9c3fa73920a7c2c063ee8bb0613e0cf85fd96a3aea25f8419c4bfcfba.css";gon.katex_js_url="\/assets\/katex-04bcf56379fcda0ee7c7a63f71d0fc15ffd2e014d017cd9d51fd6554dfccf40a.js";gon.current_user_id=607;gon.current_username="jiy";
//]]>
</script>
<script>
  window.project_uploads_path = "/jiy/LineExtr/uploads";
  window.preview_markdown_path = "/jiy/LineExtr/preview_markdown";
</script>

<header class="navbar navbar-fixed-top navbar-gitlab with-horizontal-nav">
<a class="sr-only gl-accessibility" href="#content-body" tabindex="1">Skip to content</a>
<div class="container-fluid">
<div class="header-content">
<button aria-label="Toggle global navigation" class="side-nav-toggle" type="button">
<span class="sr-only">Toggle navigation</span>
<i class="fa fa-bars"></i>
</button>
<button class="navbar-toggle" type="button">
<span class="sr-only">Toggle navigation</span>
<i class="fa fa-ellipsis-v"></i>
</button>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="hidden-sm hidden-xs">
<div class="has-location-badge search search-form">
<form class="navbar-form" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><div class="search-input-container">
<div class="location-badge">This project</div>
<div class="search-input-wrap">
<div class="dropdown" data-url="/search/autocomplete">
<input type="search" name="search" id="search" placeholder="Search" class="search-input dropdown-menu-toggle no-outline js-search-dashboard-options" spellcheck="false" tabindex="1" autocomplete="off" data-toggle="dropdown" data-issues-path="https://code-int.ornl.gov/dashboard/issues" data-mr-path="https://code-int.ornl.gov/dashboard/merge_requests" />
<div class="dropdown-menu dropdown-select">
<div class="dropdown-content"><ul>
<li>
<a class="is-focused dropdown-menu-empty-link">
Loading...
</a>
</li>
</ul>
</div><div class="dropdown-loading"><i class="fa fa-spinner fa-spin"></i></div>
</div>
<i class="search-icon"></i>
<i class="clear-icon js-clear-input"></i>
</div>
</div>
</div>
<input type="hidden" name="group_id" id="group_id" class="js-search-group-options" />
<input type="hidden" name="project_id" id="search_project_id" value="1617" class="js-search-project-options" data-project-path="LineExtr" data-name="LineExtr" data-issues-path="/jiy/LineExtr/issues" data-mr-path="/jiy/LineExtr/merge_requests" />
<input type="hidden" name="search_code" id="search_code" value="true" />
<input type="hidden" name="repository_ref" id="repository_ref" value="master" />

<div class="search-autocomplete-opts hide" data-autocomplete-path="/search/autocomplete" data-autocomplete-project-id="1617" data-autocomplete-project-ref="master"></div>
</form></div>

</li>
<li class="visible-sm visible-xs">
<a title="Search" aria-label="Search" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/search"><i class="fa fa-search"></i>
</a></li>
<li>
<a title="Todos" aria-label="Todos" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/dashboard/todos"><i class="fa fa-bell fa-fw"></i>
<span class="badge hidden todos-pending-count">
0
</span>
</a></li>
<li class="header-user dropdown">
<a class="header-user-dropdown-toggle" data-toggle="dropdown" href="/jiy"><img width="26" height="26" class="header-user-avatar" src="https://secure.gravatar.com/avatar/cd6f0fee73f9a07573a539384de84cb3?s=52&amp;d=identicon" alt="Cd6f0fee73f9a07573a539384de84cb3?s=52&amp;d=identicon" />
<i class="fa fa-caret-down"></i>
</a><div class="dropdown-menu-nav dropdown-menu-align-right">
<ul>
<li>
<a class="profile-link" aria-label="Profile" data-user="jiy" href="/jiy">Profile</a>
</li>
<li>
<a aria-label="Settings" href="/profile">Settings</a>
</li>
<li>
<a aria-label="Help" href="/help">Help</a>
</li>
<li class="divider"></li>
<li>
<a class="sign-out-link" aria-label="Sign out" rel="nofollow" data-method="delete" href="/users/sign_out">Sign out</a>
</li>
</ul>
</div>
</li>
</ul>
</div>
<h1 class="title"><a href="/jiy">Yuan, Jiangye</a> / <a class="project-item-select-holder" href="/jiy/LineExtr">LineExtr</a><button name="button" type="button" class="dropdown-toggle-caret js-projects-dropdown-toggle" aria-label="Toggle switch project dropdown" data-target=".js-dropdown-menu-projects" data-toggle="dropdown" data-order-by="last_activity_at"><i class="fa fa-chevron-down"></i></button></h1>
<div class="header-logo">
<a class="home" title="Dashboard" id="logo" href="/"><svg width="36" height="36" class="tanuki-logo">
  <path class="tanuki-shape tanuki-left-ear" fill="#e24329" d="M2 14l9.38 9v-9l-4-12.28c-.205-.632-1.176-.632-1.38 0z"/>
  <path class="tanuki-shape tanuki-right-ear" fill="#e24329" d="M34 14l-9.38 9v-9l4-12.28c.205-.632 1.176-.632 1.38 0z"/>
  <path class="tanuki-shape tanuki-nose" fill="#e24329" d="M18,34.38 3,14 33,14 Z"/>
  <path class="tanuki-shape tanuki-left-eye" fill="#fc6d26" d="M18,34.38 11.38,14 2,14 6,25Z"/>
  <path class="tanuki-shape tanuki-right-eye" fill="#fc6d26" d="M18,34.38 24.62,14 34,14 30,25Z"/>
  <path class="tanuki-shape tanuki-left-cheek" fill="#fca326" d="M2 14L.1 20.16c-.18.565 0 1.2.5 1.56l17.42 12.66z"/>
  <path class="tanuki-shape tanuki-right-cheek" fill="#fca326" d="M34 14l1.9 6.16c.18.565 0 1.2-.5 1.56L18 34.38z"/>
</svg>

</a></div>
<div class="js-dropdown-menu-projects">
<div class="dropdown-menu dropdown-select dropdown-menu-projects">
<div class="dropdown-title"><span>Go to a project</span><button class="dropdown-title-button dropdown-menu-close" aria-label="Close" type="button"><i class="fa fa-times dropdown-menu-close-icon"></i></button></div>
<div class="dropdown-input"><input type="search" id="" class="dropdown-input-field" placeholder="Search your projects" autocomplete="off" /><i class="fa fa-search dropdown-input-search"></i><i role="button" class="fa fa-times dropdown-input-clear js-dropdown-input-clear"></i></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><i class="fa fa-spinner fa-spin"></i></div>
</div>
</div>

</div>
</div>
</header>

<script>
  var findFileURL = "/jiy/LineExtr/find_file/master";
</script>

<div class="page-with-sidebar">
<div class="sidebar-wrapper nicescroll">
<div class="sidebar-action-buttons">
<div class="nav-header-btn toggle-nav-collapse" title="Open/Close">
<span class="sr-only">Toggle navigation</span>
<i class="fa fa-bars"></i>
</div>
<div class="nav-header-btn pin-nav-btn has-tooltip  js-nav-pin" data-container="body" data-placement="right" title="Pin Navigation">
<span class="sr-only">Toggle navigation pinning</span>
<i class="fa fa-fw fa-thumb-tack"></i>
</div>
</div>
<div class="nav-sidebar">
<ul class="nav">
<li class="active home"><a title="Projects" class="dashboard-shortcuts-projects" href="/dashboard/projects"><span>
Projects
</span>
</a></li><li class=""><a class="dashboard-shortcuts-activity" title="Activity" href="/dashboard/activity"><span>
Activity
</span>
</a></li><li class=""><a title="Groups" href="/dashboard/groups"><span>
Groups
</span>
</a></li><li class=""><a title="Milestones" href="/dashboard/milestones"><span>
Milestones
</span>
</a></li><li class=""><a title="Issues" class="dashboard-shortcuts-issues" href="/dashboard/issues?assignee_id=607"><span>
Issues
<span class="count">0</span>
</span>
</a></li><li class=""><a title="Merge Requests" class="dashboard-shortcuts-merge_requests" href="/dashboard/merge_requests?assignee_id=607"><span>
Merge Requests
<span class="count">0</span>
</span>
</a></li><li class=""><a title="Snippets" href="/dashboard/snippets"><span>
Snippets
</span>
</a></li><a title="About GitLab EE" class="about-gitlab" href="/help"><span>
About GitLab EE
</span>
</a></ul>
</div>

</div>
<div class="layout-nav">
<div class="container-fluid">
<div class="controls">
<div class="dropdown project-settings-dropdown">
<a class="dropdown-new btn btn-default" data-toggle="dropdown" href="#" id="project-settings-button">
<i class="fa fa-cog"></i>
<i class="fa fa-caret-down"></i>
</a>
<ul class="dropdown-menu dropdown-menu-align-right">
<li class=""><a title="Members" class="team-tab tab" href="/jiy/LineExtr/settings/members"><span>
Members
</span>
</a></li><li class=""><a title="Deploy Keys" href="/jiy/LineExtr/deploy_keys"><span>
Deploy Keys
</span>
</a></li><li class=""><a title="Integrations" href="/jiy/LineExtr/settings/integrations"><span>
Integrations
</span>
</a></li><li class=""><a title="Protected Branches" href="/jiy/LineExtr/protected_branches"><span>
Protected Branches
</span>
</a></li><li class=""><a title="Runners" href="/jiy/LineExtr/runners"><span>
Runners
</span>
</a></li><li class=""><a title="Variables" href="/jiy/LineExtr/variables"><span>
Variables
</span>
</a></li><li class=""><a title="Triggers" href="/jiy/LineExtr/triggers"><span>
Triggers
</span>
</a></li><li class=""><a title="CI/CD Pipelines" href="/jiy/LineExtr/pipelines/settings"><span>
CI/CD Pipelines
</span>
</a></li><li class=""><a title="Push Rules" href="/jiy/LineExtr/push_rules"><span>
Push Rules
</span>
</a></li><li class=""><a title="Mirror Repository" data-placement="right" href="/jiy/LineExtr/mirror"><span>
Mirror Repository
</span>
</a></li><li class=""><a title="Pages" data-placement="right" href="/jiy/LineExtr/pages"><span>
Pages
</span>
</a></li><li class=""><a title="Audit Events" href="/jiy/LineExtr/audit_events"><span>
Audit Events
</span>
</a></li>
<li class="divider"></li>
<li>
<a href="/jiy/LineExtr/edit">Edit Project
</a></li>
</ul>
</div>
</div>
<div class="nav-control scrolling-tabs-container">
<div class="fade-left">
<i class="fa fa-angle-left"></i>
</div>
<div class="fade-right">
<i class="fa fa-angle-right"></i>
</div>
<ul class="nav-links scrolling-tabs">
<li class="home"><a title="Project" class="shortcuts-project" href="/jiy/LineExtr"><span>
Project
</span>
</a></li><li class=""><a title="Activity" class="shortcuts-project-activity" href="/jiy/LineExtr/activity"><span>
Activity
</span>
</a></li><li class="active"><a title="Repository" class="shortcuts-tree" href="/jiy/LineExtr/tree/master"><span>
Repository
</span>
</a></li><li class=""><a title="Pipelines" class="shortcuts-pipelines" href="/jiy/LineExtr/pipelines"><span>
Pipelines
</span>
</a></li><li class=""><a title="Graphs" class="shortcuts-graphs" href="/jiy/LineExtr/graphs/master"><span>
Graphs
</span>
</a></li><li class=""><a title="Issues" class="shortcuts-issues" href="/jiy/LineExtr/issues"><span>
Issues
<span class="badge count issue_counter">0</span>
</span>
</a></li><li class=""><a title="Merge Requests" class="shortcuts-merge_requests" href="/jiy/LineExtr/merge_requests"><span>
Merge Requests
<span class="badge count merge_counter">0</span>
</span>
</a></li><li class=""><a title="Wiki" class="shortcuts-wiki" href="/jiy/LineExtr/wikis/home"><span>
Wiki
</span>
</a></li><li class="hidden">
<a title="Network" class="shortcuts-network" href="/jiy/LineExtr/network/master">Network
</a></li>
<li class="hidden">
<a class="shortcuts-new-issue" href="/jiy/LineExtr/issues/new">Create a new issue
</a></li>
<li class="hidden">
<a title="Builds" class="shortcuts-builds" href="/jiy/LineExtr/builds">Builds
</a></li>
<li class="hidden">
<a title="Commits" class="shortcuts-commits" href="/jiy/LineExtr/commits/master">Commits
</a></li>
<li class="hidden">
<a title="Issue Boards" class="shortcuts-issue-boards" href="/jiy/LineExtr/boards">Issue Boards</a>
</li>
</ul>
</div>

</div>
</div>
<div class="content-wrapper page-with-layout-nav">
<div class="scrolling-tabs-container sub-nav-scroll">
<div class="fade-left">
<i class="fa fa-angle-left"></i>
</div>
<div class="fade-right">
<i class="fa fa-angle-right"></i>
</div>

<div class="nav-links sub-nav scrolling-tabs">
<ul class="container-fluid container-limited">
<li class="active"><a href="/jiy/LineExtr/tree/master">Files
</a></li><li class=""><a href="/jiy/LineExtr/commits/master">Commits
</a></li><li class=""><a href="/jiy/LineExtr/network/master">Network
</a></li><li class=""><a href="/jiy/LineExtr/compare?from=master&amp;to=master">Compare
</a></li><li class=""><a href="/jiy/LineExtr/branches">Branches
</a></li><li class=""><a href="/jiy/LineExtr/tags">Tags
</a></li></ul>
</div>
</div>

<div class="alert-wrapper">


<div class="flash-container flash-container-page">
</div>


</div>
<div class=" ">
<div class="content" id="content-body">

<div class="container-fluid container-limited">

<div class="tree-holder" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-holder">
<form class="project-refs-form" action="/jiy/LineExtr/refs/switch" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="destination" id="destination" value="blob" />
<input type="hidden" name="path" id="path" value="Readme.md" />
<div class="dropdown">
<button class="dropdown-menu-toggle js-project-refs-dropdown" type="button" data-toggle="dropdown" data-selected="master" data-ref="master" data-refs-url="/jiy/LineExtr/refs" data-field-name="ref" data-submit-form-on-click="true"><span class="dropdown-toggle-text ">master</span><i class="fa fa-chevron-down"></i></button>
<div class="dropdown-menu dropdown-menu-selectable">
<div class="dropdown-title"><span>Switch branch/tag</span><button class="dropdown-title-button dropdown-menu-close" aria-label="Close" type="button"><i class="fa fa-times dropdown-menu-close-icon"></i></button></div>
<div class="dropdown-input"><input type="search" id="" class="dropdown-input-field" placeholder="Search branches and tags" autocomplete="off" /><i class="fa fa-search dropdown-input-search"></i><i role="button" class="fa fa-times dropdown-input-clear js-dropdown-input-clear"></i></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><i class="fa fa-spinner fa-spin"></i></div>
</div>
</div>
</form>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li>
<a href="/jiy/LineExtr/tree/master">LineExtr
</a></li>
<li>
<a href="/jiy/LineExtr/blob/master/Readme.md"><strong>
Readme.md
</strong>
</a>
</li>
</ul>
</div>
<ul class="blob-commit-info table-list hidden-xs">
<li class="commit table-list-row js-toggle-container" id="commit-5fc9e280">
<div class="table-list-cell avatar-cell hidden-xs">
<a href="/jiy"><img class="avatar has-tooltip s36 hidden-xs" alt="Yuan, Jiangye&#39;s avatar" title="Yuan, Jiangye" data-container="body" src="https://secure.gravatar.com/avatar/cd6f0fee73f9a07573a539384de84cb3?s=72&amp;d=identicon" /></a>
</div>
<div class="table-list-cell commit-content">
<a class="commit-row-message item-title" href="/jiy/LineExtr/commit/5fc9e2802754099db10ed716bf38218700c31339">Update Readme.md</a>
<span class="commit-row-message visible-xs-inline">
&middot;
5fc9e280
</span>
<div class="commiter">
<a class="commit-author-link has-tooltip" title="yuanj@ornl.gov" href="/jiy">Yuan, Jiangye</a>
committed
<time class="js-timeago" title="Feb 8, 2017 7:48pm" datetime="2017-02-08T19:48:38Z" data-toggle="tooltip" data-placement="top" data-container="body">2017-02-08 14:48:38 -0500</time>
</div>
</div>
<div class="table-list-cell commit-actions hidden-xs">
<button class="btn btn-clipboard btn-transparent" data-toggle="tooltip" data-placement="bottom" data-container="body" data-clipboard-text="5fc9e2802754099db10ed716bf38218700c31339" type="button" title="Copy to clipboard"><i class="fa fa-clipboard"></i></button>
<a class="commit-short-id btn btn-transparent" href="/jiy/LineExtr/commit/5fc9e2802754099db10ed716bf38218700c31339">5fc9e280</a>
<a class="btn btn-default" href="/jiy/LineExtr/tree/5fc9e2802754099db10ed716bf38218700c31339">Browse Files</a>
</div>
</li>

</ul>
<div class="blob-content-holder" id="blob-content-holder">
<article class="file-holder">
<div class="file-title">
<i class="fa fa-file-text-o fa-fw"></i>
<strong>
Readme.md
</strong>
<small>
741 Bytes
</small>
<div class="file-actions hidden-xs">
<div class="btn-group tree-btn-group">
<a class="btn btn-sm" target="_blank" href="/jiy/LineExtr/raw/master/Readme.md">Raw</a>
<a class="btn btn-sm" href="/jiy/LineExtr/blame/master/Readme.md">Blame</a>
<a class="btn btn-sm" href="/jiy/LineExtr/commits/master/Readme.md">History</a>
<a class="btn btn-sm" href="/jiy/LineExtr/blob/5fc9e2802754099db10ed716bf38218700c31339/Readme.md">Permalink</a>
</div>
<div class="btn-group" role="group">

<a class="btn btn-sm" href="/jiy/LineExtr/edit/master/Readme.md">Edit</a>
<button name="button" type="submit" class="btn btn-default" data-target="#modal-upload-blob" data-toggle="modal">Replace</button>
<button name="button" type="submit" class="btn btn-remove" data-target="#modal-remove-blob" data-toggle="modal">Delete</button>
</div>

</div>
</div>
<div class="file-content wiki">
<h1 dir="auto">&#x000A;<a id="user-content-straight-line-extraction" class="anchor" href="#straight-line-extraction" aria-hidden="true"></a>Straight Line Extraction</h1>&#x000A;&#x000A;<p dir="auto">This software extracts straight lines from images. The algorithm is described in  </p>&#x000A;&#x000A;<p dir="auto"><strong>J. Yuan and A. M. Cheriyadat, Learning to count buildings in diverse aerial scenes. ACM SIGSPATIAL GIS, 2014.</strong></p>&#x000A;&#x000A;<p dir="auto">This is a software for non-commercial purpose. Please contact the author for commercial use.</p>&#x000A;&#x000A;<h2 dir="auto">&#x000A;<a id="user-content-initial-setup" class="anchor" href="#initial-setup" aria-hidden="true"></a>Initial setup</h2>&#x000A;&#x000A;<p dir="auto">To run the code, you need Matlab with image processing tool box and mex is configured correctly (type mex -setup in the matlab prompt).</p>&#x000A;&#x000A;<h2 dir="auto">&#x000A;<a id="user-content-usage" class="anchor" href="#usage" aria-hidden="true"></a>Usage</h2>&#x000A;&#x000A;<p dir="auto">Run the following commands in the matlab prompt to compile the c file. This only needs to be done once.</p>&#x000A;&#x000A;<p dir="auto"><code>mex RgGrw.c</code> </p>&#x000A;&#x000A;<p dir="auto">Run the code to extract lines from the provided test image </p>&#x000A;&#x000A;<p dir="auto"><code>img = imread('./test.png');</code></p>&#x000A;&#x000A;<p dir="auto"><code>LineList = LineExtr(img,20,1);</code></p>
</div>

</article>
</div>

</div>
<div class="modal" id="modal-remove-blob">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<a class="close" data-dismiss="modal" href="#">×</a>
<h3 class="page-title">Delete Readme.md</h3>
</div>
<div class="modal-body">
<form class="form-horizontal js-replace-blob-form js-quick-submit js-requires-input" action="/jiy/LineExtr/blob/master/Readme.md" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><input type="hidden" name="authenticity_token" value="qIU2BJq/Qwfgl7pr7ynkana9kpF8lHoZWq4ow/AE+pVypZ8ZpptgTb0QXbR8aEuFCoEucmYk//egszlyVceONA==" /><div class="form-group commit_message-group">
<label class="control-label" for="commit_message-b6be26cd94bc7f3112e880c6e14ccdba">Commit message
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-b6be26cd94bc7f3112e880c6e14ccdba" class="form-control js-commit-message" placeholder="Delete Readme.md" required="required" rows="3">
Delete Readme.md</textarea>
</div>
</div>
</div>

<div class="form-group branch">
<label class="control-label" for="target_branch">Target branch</label>
<div class="col-sm-10">
<input type="text" name="target_branch" id="target_branch" value="master" required="required" class="form-control js-target-branch" />
<div class="js-create-merge-request-container">
<div class="checkbox">
<label for="create_merge_request-b73667abf83ae1b9b76ea83e94355db8"><input type="checkbox" name="create_merge_request" id="create_merge_request-b73667abf83ae1b9b76ea83e94355db8" value="1" class="js-create-merge-request" checked="checked" />
Start a <strong>new merge request</strong> with these changes
</label></div>
</div>
</div>
</div>
<input type="hidden" name="original_branch" id="original_branch" value="master" class="js-original-branch" />

<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button name="button" type="submit" class="btn btn-remove btn-remove-file">Delete file</button>
<a class="btn btn-cancel" data-dismiss="modal" href="#">Cancel</a>
</div>
</div>
</form></div>
</div>
</div>
</div>
<script>
  new NewCommitForm($('.js-replace-blob-form'))
</script>

<div class="modal" id="modal-upload-blob">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<a class="close" data-dismiss="modal" href="#">×</a>
<h3 class="page-title">Replace Readme.md</h3>
</div>
<div class="modal-body">
<form class="js-quick-submit js-upload-blob-form form-horizontal" action="/jiy/LineExtr/update/master/Readme.md" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="MWDnD7oiSvKosYoDwQESIm6VYGG9rotlh1Y4a4Kq6KzrQE4ShgZpuPU2bdxSQL3NEqncgqceDot9SynaJ2mcDQ==" /><div class="dropzone">
<div class="dropzone-previews blob-upload-dropzone-previews">
<p class="dz-message light">
Attach a file by drag &amp; drop or
<a class="markdown-selector" href="#">click to upload</a>
</p>
</div>
</div>
<br>
<div class="dropzone-alerts alert alert-danger data" style="display:none"></div>
<div class="form-group commit_message-group">
<label class="control-label" for="commit_message-4f4b6129706d4cb60d7e496e18c2d389">Commit message
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-4f4b6129706d4cb60d7e496e18c2d389" class="form-control js-commit-message" placeholder="Replace Readme.md" required="required" rows="3">
Replace Readme.md</textarea>
</div>
</div>
</div>

<div class="form-group branch">
<label class="control-label" for="target_branch">Target branch</label>
<div class="col-sm-10">
<input type="text" name="target_branch" id="target_branch" value="master" required="required" class="form-control js-target-branch" />
<div class="js-create-merge-request-container">
<div class="checkbox">
<label for="create_merge_request-d61fd28e6a204abb117e4206bc4341e2"><input type="checkbox" name="create_merge_request" id="create_merge_request-d61fd28e6a204abb117e4206bc4341e2" value="1" class="js-create-merge-request" checked="checked" />
Start a <strong>new merge request</strong> with these changes
</label></div>
</div>
</div>
</div>
<input type="hidden" name="original_branch" id="original_branch" value="master" class="js-original-branch" />

<div class="form-actions">
<button name="button" type="submit" class="btn btn-small btn-create btn-upload-file" id="submit-all">Replace file</button>
<a class="btn btn-cancel" data-dismiss="modal" href="#">Cancel</a>
</div>
</form></div>
</div>
</div>
</div>
<script>
  gl.utils.disableButtonIfEmptyField($('.js-upload-blob-form').find('.js-commit-message'), '.btn-upload-file');
  new BlobFileDropzone($('.js-upload-blob-form'), 'put');
  new NewCommitForm($('.js-upload-blob-form'))
</script>

</div>

</div>
</div>
</div>
</div>



</body>
</html>

