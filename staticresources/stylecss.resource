
@font-face {
  font-family: 'FrutigerLTW01-65Bold';
  src: url('fonts/FrutigerLTW01-65Bold.eot?#iefix') format('embedded-opentype'),  url('fonts/FrutigerLTW01-65Bold.woff') format('woff'), url('fonts/FrutigerLTW01-65Bold.ttf')  format('truetype'), url('fonts/FrutigerLTW01-65Bold.svg#FrutigerLTW01-65Bold') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'FrutigerLTW01-55Roman';
  src: url('fonts/FrutigerLTW01-55Roman.eot?#iefix') format('embedded-opentype'),  url('fonts/FrutigerLTW01-55Roman.woff') format('woff'), url('fonts/FrutigerLTW01-55Roman.ttf')  format('truetype'), url('fonts/FrutigerLTW01-55Roman.svg#FrutigerLTW01-55Roman') format('svg');
  font-weight: normal;
  font-style: normal;
}



html{
  height:100%;
  
}


body{
	height:100%;
	overflow-x:hidden;
}
.row {
    margin-right: 0px !important;
    margin-left: 0px !important;
}

.btn-cos {
	color: #fff;
    background-color: #0a5575;
    border-color: #2e6da4;
    padding: 2px 24px;
    border-radius: 0px;
}


.a_cos {
	color:#156a8f;
	text-decoration: none;
}

.a_cos:hover {
	color:#0a5575;
	text-decoration: none;
}

.form_labels {
	font-size: 0.888em;
    font-weight: bold;
}


.nopadding
{
	padding-left: 0px !important ;
	padding-right: 0px  !important   ;
}
.nomargin
{
	margin-right: 5px !important ;
	margin-left: 5px  !important   ;
}
.padding_top {
	padding-top:15px;
}

.padding_bottom {
	padding-bottom:15px;
}
.padding_right {
	padding-right: 73px !important;
}


h5 { font-weight: bold; }
.no-padding {padding:0;}

.main-container {
	height:100%;
	
}

.disable {

    cursor: not-allowed;

}

.main-container  .dropdown-container {
	
    max-width: 15%;
}
.col-sm-7  .navbar-form .input-group {width:100%;}
.right-slider{ display: inline-flex;position: absolute; right: -380px;    background-color: #232323;    z-index: 999;height: 35px;overflow: hidden; -webkit-transition: all 0.5s ease;   -moz-transition: all 0.5s ease;-ms-transition: all 0.5s ease;-o-transition: all 0.5s ease;        transition: all 0.5s ease;}
.right-slider.showit{right:0px;display: inline-flex;}
.right-slider .right-slider-icon a {cursor:pointer;}
.right-slider .right-slider-container {margin-right:50px;}
.right-slider .right-slider-container a {margin:0 10px;}
.right-slider .right-slider-container a:hover{text-decoration:none;}
.right-slider .right-slider-container i {margin:5px 10px 0px; font-size:25px; color:#fff;}

.header .logo img {max-width:100%;    margin-top: 10px;}
.body { border-top:2px solid #929292;margin-top:0px;min-height: 91%;overflow-x:hidden;position: relative; }/*background-color:#d6d8d7;*/
.body .mainWrapperContainer .top_search {/* border-bottom: 1px solid #F1F1F1; */}
.body .mainWrapperContainer .top_search .categories {font-size: small;font-weight: bold;text-align: center;margin-right: 28px;font-family: FrutigerLTW01-55roman;}
.body .mainWrapperContainer .top_search .categories a {color: grey;display:block;padding-bottom: 4px;text-decoration:none;}    
.body .mainWrapperContainer .top_search .categories a.active {color: #4285f4;border-bottom: 3px solid #4285f4;text-decoration:none;}  
.body .mainWrapperContainer .top_search .header-search {margin-top:7px; border:1px solid #dde0de;}
.body .mainWrapperContainer .top_search .header-search .dropdown button {border-radius:0;    width: 100%;    font-family: FrutigerLTW01-65bold;}
.body .mainWrapperContainer .top_search .header-search .dropdown .btn .user-chevron {display: inline-block; vertical-align: top; padding-top: 3px; padding-left:1px;font-size:10px;}
/*.header-search .dropdown ul {background-color:#e7e7e7; border:3px solid #fff;   border-radius: 0px;}*/
.body .mainWrapperContainer .top_search .header-search .dropdown-menu { margin: 5px 0 0; box-shadow: 0 0px 6px rgba(0,0,0,.175);background-color:#e7e7e7; border:3px solid #fff;   border-radius: 0px;    font-family: FrutigerLTW01-55roman;}
.body .mainWrapperContainer .top_search .header-search .dropdown-menu li a{padding: 3px 10px;}
.body .mainWrapperContainer .top_search .header-search .dropdown-menu li a:hover {background-color:#e7e7e7;} 
.body .mainWrapperContainer .top_search .header-search .dropdown-menu li:hover::before {	content: '';    position: absolute;    height:22px;    border-left: 5px solid #ca0000;    margin-top:2px;	} 
.body .mainWrapperContainer .top_search .border-bottom-override { border-bottom:5px solid #ca0000;}
.body .mainWrapperContainer .top_search .header-search .search-bar{    width: 100%;}
.body .mainWrapperContainer .top_search .header-search .search-filter {color:#7b7c7c; font-size:12px;text-align:right; font-weight:bold;  font-family: FrutigerLTW01-55roman;}
.body .mainWrapperContainer .top_search .header-search .search-filter input[type="checkbox"]{margin-right:5px; position:relative; top:3px;}
.body .mainWrapperContainer .top_search .header-search .search-filter input[type="checkbox"]#within1 {display:none;}
.body .mainWrapperContainer .top_search .header-search .search-filter input[type="checkbox"]#within1 + label:before {
    content: ""; display: inline-block; width: 15px; height: 15px; vertical-align:middle; margin-bottom: 2px; background-color: #fff; border: 1px solid #828f97;}
.body .mainWrapperContainer .top_search .header-search .search-filter input[type="checkbox"]#within1:checked + label:before { content:"\2714"; /* Tick */ color:#7b7c7c; background-color: #fff; text-align:center; line-height:15px; text-shadow:0px 0px 3px #eee;}
.header .notification-area {margin-top:19px;}
.header .notification-area .img { width: 36px;}
.search-bar input[type="text"]{border: 0; outline: none; border-color: #fff;border-radious:0px;}
.search-bar input[type="text"]:focus{border-color: #fff; -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(255,255,255,.6); box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(255,255,255,.6);}

.main-nav .navbar-default {background:transparent;border:none; font-family: FrutigerLTW01-55roman;   margin-bottom: 0px;padding-top: 16px;}
.main-nav .navbar-default .user-chevron {display: inline-block; vertical-align: top; padding-top: 3px; padding-left:1px;font-size:10px;}
.navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus {background-color: #FFF;} 
.navbar-default .navbar-toggle {border-color: #FFF;margin-right: 0px;padding: 0px 0px 0px 0px;margin-top: 1px;margin-bottom: 15px;}
.navbar-default .navbar-toggle .icon-bar {background-color: #096A8D;margin-top: 7px; display: block;width: 38px;height: 4px;border-radius: 0px;}
.main-nav  ul.nav {margin-top:8px;}
.main-nav .dropdown button{background-color:#fff; color:#333333; font-weight:bold;}
/*.main-nav .dropdown ul{box-shadow: 0 0px 6px rgba(0,0,0,.175);background-color:#e7e7e7; margin-top: 0; padding-top: 0;}*/
.main-nav .dropdown .dropdown-menu {box-shadow: 0 0px 6px rgba(0,0,0,.175);background-color:#e7e7e7;border:3px solid #fff;   border-radius: 6px; margin-top: 0; padding-top: 0;}
.main-nav .dropdown .dropdown-menu li a {padding-left: 10px;}
.main-nav .dropdown .dropdown-menu li a:hover {background-color:#e7e7e7;}
.main-nav .dropdown .dropdown-menu li:hover::before {content: '';position: absolute;height:22px;border-left: 5px solid #ca0000;margin-top:2px;} 
.main-nav .dropdown:hover .dropdown-menu { display: block; margin-top: 0;}
	
.main-nav .icon-alert {display: inline-block; width: 37px; height: 38px; text-align: center; padding-top: 7px; float:left; margin-right:10px; margin-left:15px;}
.main-nav .icon-alert .fa-bell-o {font-size:29px; color:#6a696a;}
.main-nav .icon-alert .notification-count {background: #e20727; border-color: #30aae9; display: block; position: absolute; top: 2px; left: 38px; line-height: 16px; height: 22px; width:24px; padding: 2px; color: white; border: 1px solid; border-radius: 20px;}
.main-nav  .separator-pipe {float: left;margin: 9px 16px;height: 24px;border-right: 1px solid grey;}
.main-nav  .icon-user {display: inline-block; width: 37px; height: 38px; border: 1px solid #156a8f; border-radius: 20px; text-align: center; overflow: hidden; padding-left: 4px; margin-left:10px;}
/*.main-nav  .icon-user .glyphicon-user {font-size:32px;} */
.main-nav .user-chevron {display: inline-block; vertical-align: top; padding-top: 11px; padding-left:6px;font-size:10px;} 
.main-nav .user-chevron .fa-chevron-up {display:none;}
.main-nav .user-actions {position:absolute; display:none; border: 1px solid #156a8f; border-radius: 5px; background-color:#fff; padding:0 5px; z-index:100;}
.main-nav .user-actions .action {margin:5px 0; border-bottom:1px solid #ebebeb;}
.main-nav .user-actions .action-last {border-bottom:none;}


.body .mainWrapperContainer .body-header {margin:15px 0; overflow:auto;}
.body .mainWrapperContainer .body-header .page-head {font-size:1.2em; font-weight:bold;color:#000000;font-family: FrutigerLTW01-65bold;}
.body .mainWrapperContainer .body-header .filter {font-weight:bold; text-align:right; color: #000000;   font-family: FrutigerLTW01-55roman;}
.body .mainWrapperContainer .body-header .filter span {color: #000000; padding-right: 7px;padding-left: 7px;}
.body .mainWrapperContainer .body-header .filter .user-chevron {font-size:10px; margin-left:12px;}
.body .mainWrapperContainer .search-filter { overflow:auto;}
.body .mainWrapperContainer .search-filter .input-group-btn {display:inline-block;padding-right: 44px;}
.body .mainWrapperContainer .search-filter button {border: 0;margin-top:0px;padding-top: 9px;padding-bottom: 3px;}
.body .mainWrapperContainer .search-filter button  i {font-size: 17px; color: #656565;}
.body .mainWrapperContainer .search-filter button:hover {background:none;}
.body .mainWrapperContainer .search-filter span {padding-right: 3px;padding-left: 3px;}
.body .mainWrapperContainer .search-filter label{float:right;margin-top: 9px;}
.body .mainWrapperContainer .search-filter .related-search {font-weight:bold;}
.body .mainWrapperContainer .search-filter .featured-link {text-align:right;}
.body .mainWrapperContainer .search-filter .featured-link .icon-featured {display: inline-block; width: 25px; height: 25px; border: 1px solid #156a8f; border-radius: 20px; text-align: center; overflow: hidden; padding-left: 2px; margin-left: 10px;}
.body .mainWrapperContainer .search-filter .featured-link .icon-featured  .glyphicon-star {font-size:20px;}
.body .mainWrapperContainer .search-filter .featured-link .featured-text {height: 25px; vertical-align: top; margin-top: 3px; display: inline-block;}

/* .body .mainWrapperContainer .related-search-filter span {padding-right: 3px;padding-left: 3px;} */
.body .mainWrapperContainer .related-search-filter .related-search {font-weight:bold;}
.body .mainWrapperContainer .related-search-filter .featured-link {text-align:right;}
.body .mainWrapperContainer .related-search-filter .featured-link .icon-featured {display: inline-block; width: 25px; height: 25px; border: 1px solid #156a8f; border-radius: 20px; text-align: center; overflow: hidden; padding-left: 2px; margin-left: 10px;}
.body .mainWrapperContainer .related-search-filter .featured-link .icon-featured  .glyphicon-star {font-size:20px;}
.body .mainWrapperContainer .related-search-filter .featured-link .featured-text {height: 25px; vertical-align: top; margin-top: 3px; display: inline-block;}




.body .mainWrapperContainer .search-results {background-color:#FFF; margin-bottom:10px;border: 1px solid rgba(145, 145, 145, 0.59);}
.body .mainWrapperContainer .search-results .featuredShow { background-color: #d6e6ec;display:none;padding-bottom: 10px;}
.body .mainWrapperContainer .search-results .featuredShow.show{display:block;}
.body .mainWrapperContainer .search-results .featuredShow .result-head {font-weight:bold;color: #1a0dab; padding-top: 12px;   font-family: FrutigerLTW01-55roman;;}
.body .mainWrapperContainer .search-results .featuredShow .result-head span {color:#444444;    padding-left: 10px;}
.body .mainWrapperContainer .search-results .featuredShow .result-icons {text-align:right; font-size:0.9em; font-weight:bold;padding: 7px 15px 0px 0px;}

.body .mainWrapperContainer .search-results .featuredShow .result-icons .icon-info {display: inline-block; width: 20px; height: 19px; border: 2px solid #156a8f; border-radius: 17px; text-align: center; overflow: hidden; margin-left:40px;}
.body .mainWrapperContainer .search-results .featuredShow .result-icons .icon-info:hover {border-color:#bcc1bf;}
.body .mainWrapperContainer .search-results .featuredShow .result-icons .icon-info:hover .fa-info {color:#bcc1bf;}
.body .mainWrapperContainer .search-results .featuredShow .result-icons span {color:#156a8f;display: inline-block;}
.body .mainWrapperContainer .search-results .featuredShow .result-icons label {margin:0px;}
.body .mainWrapperContainer .search-results .featuredShow .result-desc {font-size:0.9em;padding-right: 76px; font-weight:bold;/*  border-bottom:1px solid #ebebeb; */line-height:2.0em;color: #444444;    font-family: FrutigerLTW01-55roman;}
.body .mainWrapperContainer .search-results .featuredShow .result-featured {background-color:#d6e6ec; padding:10px 0px 0px 10px; font-size:0.9em;display:none;}
.body .mainWrapperContainer .search-results .featuredShow .result-featured.show {display:block;}
.body .mainWrapperContainer .search-results .featuredShow .result-featured  .modified-date {margin-left:30px;}


.body .mainWrapperContainer .search-results .result-section {padding:12px 0 0;}
.body .mainWrapperContainer .search-results .result-section .result-head {font-weight:bold;color: #1a0dab; padding-top: 4px;   font-family: FrutigerLTW01-55roman;;}
.body .mainWrapperContainer .search-results .result-section .result-head span {color:#444444;    padding-left: 10px;}
.body .mainWrapperContainer .search-results .result-section .result-icons {text-align:right; font-size:0.9em; font-weight:bold;}

.body .mainWrapperContainer .search-results .result-section .result-icons .icon-info {display: inline-block; width: 20px; height: 19px; border: 2px solid #156a8f; border-radius: 17px; text-align: center; overflow: hidden; margin-left:40px;}
.body .mainWrapperContainer .search-results .result-section .result-icons .icon-info:hover {border-color:#bcc1bf;}
.body .mainWrapperContainer .search-results .result-section .result-icons .icon-info:hover .fa-info {color:#bcc1bf;}
.body .mainWrapperContainer .search-results .result-section .result-icons span {color:#156a8f;display: inline-block;}
.body .mainWrapperContainer .search-results .result-section .result-icons label {margin:0px;}
.body .mainWrapperContainer .search-results .result-section .result-desc {font-size:0.9em;padding-right: 76px; font-weight:bold;/*  border-bottom:1px solid #ebebeb; */line-height:2.0em;color: #444444;    font-family: FrutigerLTW01-55roman;}
.body .mainWrapperContainer .search-results .result-section .result-featured {background-color:#ebebeb; padding:10px; font-size:0.9em;display:none;}
.body .mainWrapperContainer .search-results .result-section .result-featured.show {display:block;}
.body .mainWrapperContainer .search-results .result-section .result-featured  .modified-date {margin-left:30px;}


.body .mainWrapperContainer .search-results .per-page-text {margin-top: 38px;}
.body .mainWrapperContainer .search-results .per-page-text ul {list-style: none; display: inline;    padding-left: 0px !important;}
.body .mainWrapperContainer .search-results .per-page-text ul li {display: inline;padding-right: 5px;}
/* .body .mainWrapperContainer .search-results .pagination {font-size:0.9em; font-weight:bold;} */
.body .mainWrapperContainer .search-results .page-number {text-align:right;}
.body .mainWrapperContainer .search-results .page-number .google-pagination {float:right;}
.csb, .ss {	background-position: 0 0;	height: 40px;	display: block;}

#nav td {	padding: 0;	text-align: center;}

.footer-arrow {background-color: rgb(214, 216, 215); text-align: center;}
.footer-arrow a {cursor:pointer;}

.footer {background-image:url('../images/footer_bg.png'); border-top:4px solid #e20727; text-align:center; color:#fff; }
.footer .container {padding:20px 0;}
.footer a {color:#fff;}
.footer .footer-links-line1 {font-size:1.2em; margin:3px 0;}
.footer .footer-links-line2 {font-size:0.9em; margin:3px 0;}

/* .body  { position: relative; } */
.body .software-update {background-color:#FFF; margin-bottom:10px;}
.body .software-update .software-update-head {font-size:1.2em; font-weight:bold;}
.body .software-update .software-update-subhead {font-weight:bold;margin:5px 0;}
.body .software-update .software-update-body {}
.body .software-update .software-update-body ul {list-style:none;}
.body .software-update .software-update-body ul li {border-left:2px solid #156a8f; margin:5px 0; padding-left:5px;}

.body .product-manuals {background-color:#FFF; margin-bottom:10px;}
.body .product-manuals .product-manuals-section {border-bottom: 1px solid #ebebeb;padding-bottom: 10px;margin-bottom: 15px;margin-top:5px;}
.body .product-manuals .product-manuals-section-last {border:none;}
.body .product-manuals .product-manuals-subhead {font-weight:bold;}
.body .product-manuals .product-manuals-body{margin:2px 0; padding-left:5px;}
.body .product-manuals .link-viewall a {border-left:2px solid #156a8f;display:inline-block;padding-left:10px;}

.body .account_preferences {margin-bottom: 10px;}
.body .account_preferences .account_tabs {}
.body .account_preferences .account_tabs ul {list-style: none;display: block;}
.body .account_preferences .account_tabs ul li {background-color: #ebebeb;display: block;text-align: center;font-weight: bold;box-shadow: -2px 0 0 0 #d6d8d7;}
.body .account_preferences .account_tabs ul li:hover{}
.body .account_preferences .account_tabs ul li:last-child {  } 
.body .account_preferences .account_tabs ul li a {display: block;height: 52px;padding-top: 13px;text-decoration: none;color: black;}
.body .account_preferences .account_tabs ul li.border-bottom-override {border-bottom: 3px solid #ca0000;background-color: rgba(255,255,255,0.9);}
.body .account_preferences .account_tabs ul li.border-bottom-override::before {	content: '';position: absolute;top: 84%;left: 44%; margin-left: 9px; width: 0; height: 0;border-top: solid 0px transparent;border-left: solid 4px transparent;border-right: solid 4px transparent;border-bottom: solid 8px #CA0000;}
.body .account_preferences .div_borders{border-bottom: 1px solid #adafae;padding-bottom: 10px;margin-bottom: 7px;}
.body .account_preferences .form_control { display: block; height: 34px; padding: 6px 12px;font-size: 14px;line-height: 1.42857143;}
#acc_left:after { content: ''; position: absolute;top: 3px;right: 8px;height: 105px; border-right: 1px solid #adafae;}
.panel-container {display:block;z-index:97;padding-left:20px; overflow: hidden;}
.left-panel .panel-head {font-weight: bold;display: block;margin: 5px 0;font-size: 1.1em;}
.left-panel .filter-head {font-weight: bold;display: block;margin: 5px 0;font-size: 1.0em;border-left:3px solid #337ab7;padding-left:5px;}
.left-panel .release-dropdown {background-color: #fff;padding-bottom: 4px;padding-left: 12px;}


.left-panel .release-dropdown .btn-group {    position: initial}
.left-panel .release-dropdown .btn-group.open .dropdown-toggle { webkit-box-shadow: none;  box-shadow: none; }
.left-panel .release-dropdown .btn-group .btn {padding:0px;color: #096a8d;border:none; display:block;background-color: #fff;}
.left-panel .release-dropdown .btn-group .btn-default:hover { background-color: #fff; }
.left-panel .release-dropdown .btn-group .btn-default:active{background-color: #fff;    webkit-box-shadow: none;    box-shadow: none;}
.left-panel .release-dropdown .btn-group input[type="checkbox"]{display:none;z-index: -99; top: 8px;margin-left: 10px;position:relative;}
.left-panel .release-dropdown .btn-group input[type="checkbox"] + label:before {    content: ""; display: block; width: 15px; height: 15px; vertical-align:middle;cursor: default; margin-right: 8px; background-color: #fff; border: 1px solid #096a8d; margin-left: -11px;margin-top: 1px;}
.left-panel .release-dropdown .btn-group input[type="checkbox"]:checked + label:before { content:"\2714"; /* Tick */  background-color: #fff; text-align:center; line-height:15px; text-shadow:0px 0px 0px #eee;}
.left-panel .release-dropdown .btn-group .multiselect .user-chevron {display: inline-block; vertical-align: top; padding-top: 3px; padding-left:20px;font-size:10px;}
.dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover {	color: #000000;    text-decoration: none;    background-color: #fff;    outline: 0;}
.left-panel .release-dropdown .btn-group .multiselect-container {padding-bottom: 10px;width:100%;border:1px solid #096a8d;height: 100px;border-radius: 0px;}
.left-panel .release-dropdown .btn-group .multiselect-container li a label input[type="checkbox"] {display:none;z-index: -99;}
.left-panel .release-dropdown .btn-group .multiselect-container li a label:before {    content:attr(data-content) ''; display: inline-block; width: 15px; height: 15px; vertical-align:middle;cursor: default;     margin-left: -23px; margin-right: 8px; background-color: #fff;border: 1px solid #828f97;}
.left-panel .release-dropdown .btn-group .multiselect-container li.active a label:before { content:attr(data-content) '\2714'; color:#7b7c7c; background-color: #fff; text-align:center; line-height:15px; text-shadow:0px 0px 3px #eee;} 

.left-panel .release .future-release {    padding-top: 8px; padding-bottom: 10px;}
.left-panel .release  label {display: block; max-width: 100%;margin-top: 2px;font-weight: 400;/* text-indent: -1.8em; padding-left: 25px; */}
.left-panel .release  input[type="checkbox"] {display:none;z-index: -99;/* padding-left: 25px; */}
.left-panel .release  input[type="checkbox"] + label:before {  /* padding-left: 13px;  */ content: ""; display: inline-block; width: 15px; height: 15px; vertical-align:middle; margin-right: 8px; background-color: #fff;border: 1px solid #828f97;}
.left-panel .release  input[type="checkbox"]:checked + label:before {/* padding-left: 15px; */ content:"\2714"; /* Tick */ color:#7b7c7c; background-color: #fff; text-align:center; line-height:15px; text-shadow:0px 0px 3px #eee;}

.left-panel .release .plateforms {padding-top:15px}
.left-panel .release .products {height:150px;}
.left-panel .release .AllProductLabel {padding-top:15px;padding-bottom:10px;}
.left-panel .release .AllDocumentTypeLabel {padding-top:15px;padding-bottom:10px;}
.left-panel .nicescroll-rails {width: 1px !important;}
.left-panel .nicescroll-rails div { margin: -1px!important; }

.left-panel .filter-content {display:block;margin:10px 0; padding: 0;}
.left-panel .filter-content li {font-weight: bold;font-size:0.9em; list-style-type: none;}
.left-panel .filter-content li i {margin-left: 50px;color: #156a8f;font-size: 1.3em;}
.left-panel.nav-toggle{left:0;position: absolute; z-index: 99; padding: 0;}
.left-panel + .mainWrapperContainer { position: relative; left: 15%;width:85%; /* transition: all .5s ease;  */}
.left-panel.nav-toggle + .mainWrapperContainer { left: 0; width:100%; /* transition: all .5s ease;  */}
/* .left-panel-icon{width: 49px;height: 49px;position: absolute;top: 0;left: 225px;transition: all .5s ease;} */
.left-panel-icon.nav-toggle-btn{width: 34px;height: 35px;top: 0; right: -49px;left:0px;padding-left: 0px;padding-left: 0px;}

.left-panel-icon.nav-toggle-btn .nav-close{display: none;}
.left-panel-icon.nav-toggle-btn .nav-open{display: none;}
    
.left-panel-icon .nav-close{display: none;}
.left-panel-icon .nav-open{display: none;}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover{color: #337ab7;  ; background: none;}
.nav-tabs li{border-bottom: 1px solid #333; width: 50%; padding-top:2px;}
.nav-tabs>li>a{border: none;}
.nav-tabs{border-bottom: none;}
.nav-tabs li.active{border-bottom:1px solid #337ab7; padding-top:0px; }
.nav-tabs>li>a:hover{border: none; background: none;}
.nav-tabs>li>a{padding-left: 0px; color: #000}

.left-panel .border-none{border: none; text-transform: capitalize; padding: 0;}
.search-text{position: relative;margin-bottom: 15px;}
.search-text input{outline: none; width:100%; border: 1px inset;}
.search-text i.search-icon{position: absolute; top: 7px; left: 10px; color: #999;}
.search-text i.refresh-icon{position: absolute; top: 7px; right: 10px; color: #999;}

.release{padding: 0;}
.addingpadding{padding: 14px;}

.main-nav .dropdown .sub-menu .dropdown-menu {display:none;}
.main-nav .dropdown .sub-menu:hover .dropdown-menu {display:block;left:100px;top:0;}

@media (min-width: 1300px) {
.left-panel + .mainWrapperContainer { left: 13%; width:89%; /* transition: all .5s ease;  */ }
.left-panel.nav-toggle + .mainWrapperContainer { left: 13%; width:89%;/*  transition: all .5s ease; */ }

} 

@media (min-width: 1200px) and (max-width: 1300px) {
	.left-panel .release-dropdown .btn-group .multiselect .user-chevron {display: inline-block; vertical-align: top; padding-top: 3px; padding-left:20px;font-size:10px;}
	.left-panel + .mainWrapperContainer { left: 16%; width:84%; /* transition: all .5s ease; */  }
	.left-panel.nav-toggle + .mainWrapperContainer { left: 16%; width:84%;/*  transition: all .5s ease; */ }
	
}

@media (min-width: 1200px) and (max-width: 1250px) {
	.left-panel .release-dropdown .btn-group .multiselect .user-chevron {display: inline-block; vertical-align: top; padding-top: 3px; padding-left:20px;font-size:10px;}
	.left-panel + .mainWrapperContainer { /* left: 19%; */ width:83%; /* transition: all .5s ease; */  }
	.left-panel.nav-toggle + .mainWrapperContainer { left: 16%; width:82%;/*  transition: all .5s ease; */ }
	
}

/* Large desktops and laptops */

@media (min-width: 1200px) {

.left-panel{ /* transition: all .5s ease;*/ left: 0; border-right:1px solid #337ab7;border-bottom:1px solid #337ab7; top: 0; bottom: 10px; background-color: #fff;padding-left: 0px;}
.left-panel-icon{width: 35px;height: 36px;position: absolute;top: 0;left: 225px;-webkit-transition: all 0.5s ease;   -moz-transition: all 0.5s ease;    -ms-transition: all 0.5s ease;     -o-transition: all 0.5s ease;        transition: all 0.5s ease;padding-left: 0px;}

}

@media all and (max-width: 1199px) {
.main-nav {    padding-top: 19px;position: static;}
.main-nav .navbar-default{position: static;}
.main-nav ul.nav { margin-top: 0px;}
.main-nav .navbar-default .user-chevron {    float: right;}
.main-nav  .separator-pipe {float: left;margin: 9px 8px;height: 24px;border-right: 1px solid grey;}
.left-panel { bottom: auto; left: auto; top: auto; }	
.left-panel-icon{width: 35px;height: 36px;position: absolute;top: 0;left: 0;}
.panel-container{padding-top:0px;}
.left-panel.nav-toggle + .mainWrapperContainer { left: 0; width:100%; /* transition: all .5s ease;  */}
.document-con{ position: absolute; left: 17px; top: 159px;}
.left-panel.nav-toggle{left:-100%; }
.left-panel-icon.nav-toggle-btn .nav-close{display: none;}
.left-panel-icon.nav-toggle-btn .nav-open{display: block;}
    
.left-panel-icon .nav-close{display: block;}
.left-panel-icon .nav-open{display: none;}
.left-panel.nav-toggle .nav-toggle-btn{ top: 0; right: -49px; left: auto;}
.release{padding: 0 15px;}		
.main-nav .dropdown .dropdown-menu li {border-top:1px solid #ADABAB;}
.main-nav .dropdown .dropdown-menu li:last-child{border-bottom:1px solid #ADABAB;}
.main-nav .dropdown .dropdown-menu li:hover::before {display:none;}
.main-nav .dropdown .dropdown-menu li a:hover {background-color:#fff;}
.main-nav .dropdown .dropdown-menu li:hover {background-color:#fff;}
.main-nav .dropdown .dropdown-menu .sub-menu:hover {left:-1px;}

.main-nav .navbar-default .navbar-collapse {position: absolute; float: right; right: 0; z-index: 1050; width:400px;margin-top:2px;border-top: 0px solid transparent;}
.main-nav .navbar-default .navbar-collapse.border{border-left:4px solid #e0e0e0;border-top:4px solid #e0e0e0;border-bottom:4px solid #e0e0e0;-webkit-box-shadow: -1px 0px 0px 0px #898989;box-shadow: -1px 0px 0px 0px #898989;	}
						
.main-nav .navbar-default .navbar-collapse .navbar-nav {margin:0;float:right;background:#e0e0e0;    border-right: 1px solid #898989;border-left: 1px solid #898989;}
/*.navbar-collapse ul.dropdown-menu {height:400px;}*/
.main-nav .navbar-default .navbar-collapse .nav>li {clear:left;margin:1px 0;position:relative;background:#e0e0e0;}
/*white-space:normal; required for firebox line break problem*/
.main-nav .navbar-default .navbar-collapse .nav>li .btn{width:200px;text-align: left;background:#e0e0e0;white-space: normal;}
.main-nav .dropdown .dropdown-menu {left:0;top:25px;border:none;border-radius:0;box-shadow:none;width:200px; background:#e0e0e0;}
/*.navbar-collapse .nav>li:hover {margin-bottom: 60px; display: inline-block;}*/
.main-nav .dropdown:hover .dropdown-menu {display: block; margin-top: 0; float: none; position: static;}
.main-nav .dropdown:hover .btn .fa-chevron-up {display:block;}
.main-nav .dropdown:hover .btn .fa-chevron-down {display:none;}
.main-nav .dropdown .sub-menu .dropdown-menu {display:none;}
.main-nav .dropdown .sub-menu:hover .dropdown-menu  {display: inline-block; left: -160px; top: 0; position: absolute; width: 120px;background-color: #fff;}
.main-nav .dropdown .sub-menu:hover .dropdown-menu li{border:none;}
.main-nav .dropdown .sub-menu .dropdown-menu li a:hover {color:#096a8d;font-weight: 600;}


.navbar-default .navbar-header .navbar-toggle:hover, .navbar-default .navbar-toggle:focus {border-bottom: 5px solid #ca0000;  border-radius: 0px;     margin-bottom: 0px;   padding-bottom: 11px;} 
.navbar-default .navbar-header .navbar-toggle:hover span, .navbar-default .navbar-toggle:focus span { background-color: #CA0000;}
.navbar-default .navbar-header .navbar-toggle:hover::before, .navbar-default .navbar-toggle:focus::before {	content: '';position: absolute;top: 84%;margin-left: -3px; width: 0; height: 0;border-top: solid 0px transparent;border-left: solid 4px transparent;border-right: solid 4px transparent;border-bottom: solid 8px #CA0000;}


}



/* Landscape tablets and medium desktops */
@media (min-width: 992px) and (max-width: 1199px) {
.left-panel{ -webkit-transition: all 0.5s ease;   -moz-transition: all 0.5s ease;    -ms-transition: all 0.5s ease;     -o-transition: all 0.5s ease;        transition: all 0.5s ease; 
left: 0; border-right:0px solid #337ab7;border-bottom:1px solid #337ab7; top: 0;  background-color: #fff;padding-left: 0px;bottom:none;}
.left-panel-icon{width: 35px;height: 36px;position: absolute;top: 0;left: 0px;-webkit-transition: all 0.5s ease;   -moz-transition: all 0.5s ease;    -ms-transition: all 0.5s ease;     -o-transition: all 0.5s ease;        transition: all 0.5s ease; z-index: 100; padding-left: 0px;}
.left-panel + .mainWrapperContainer { left: 0; width:100%; /* transition: all .5s ease; */  }
.body .search-results .result-section .result-icons .icon-info {display:block;margin-left: 78px;}

}

@media (min-width: 992px) and (max-width: 1050px) {
.left-panel.nav-toggle + .mainWrapperContainer { left: 2%; width:96%; -webkit-transition: all 0.5s ease;   -moz-transition: all 0.5s ease;    -ms-transition: all 0.5s ease;     -o-transition: all 0.5s ease;        transition: all 0.5s ease; }
/* .navbar-collapse {position: absolute; float: right; right: -140px; z-index: 1050; width:400px;margin-top:2px;

} */
	
}



/* Portrait tablets and small desktops */
@media (min-width: 768px) and (max-width: 991px) {
.left-panel{ transition: all .5s ease; left: 0; border-right:0px solid #337ab7;border-bottom:1px solid #337ab7; top: 0;  background-color: #fff;padding-left: 0px;bottom:none;}
.left-panel-icon{width: 35px;height: 36px;position: absolute;top: 0;left: 0px;transition: all .5s ease; z-index: 100; padding-left: 0px;}
.left-panel + .mainWrapperContainer { left: 0; width:100%; transition: all .5s ease;  }
.body .search-results .result-section .result-icons .icon-info {display:block;margin-left: 42px;}
}

@media (min-width: 768px) and (max-width: 820px) {
.left-panel.nav-toggle + .mainWrapperContainer { left: 3%; width:94%; -webkit-transition: all 0.5s ease;   -moz-transition: all 0.5s ease;    -ms-transition: all 0.5s ease;     -o-transition: all 0.5s ease;        transition: all 0.5s ease; }	
.body .mainWrapperContainer .search-filter .input-group-btn {    padding-right: 43px;}
	
}

/* Landscape phones and portrait tablets */
@media (min-width: 481px) and (max-width: 767px) {

.left-panel{ transition: all .5s ease; left: 0; border-right:0px solid #337ab7;border-bottom:1px solid #337ab7; top: 0;  background-color: #fff;padding-left: 0px;bottom:none;}
.left-panel-icon{width: 35px;height: 36px;position: absolute;top: 0;left: 0px;-webkit-transition: all 0.5s ease;-moz-transition: all 0.5s ease;    -ms-transition: all 0.5s ease;     -o-transition: all 0.5s ease;        transition: all 0.5s ease; z-index: 100; padding-left: 0px;}
.left-panel + .mainWrapperContainer { left: 0; width:100%; -webkit-transition: all 0.5s ease;-moz-transition: all 0.5s ease;-ms-transition: all 0.5s ease;-o-transition: all 0.5s ease;transition: all 0.5s ease;  }
.body .search-results .result-section .result-icons .icon-info {display:block;margin-left: 42px;}
}

/* Portrait phones and smaller */
@media (max-width: 480px) {
.left-panel{ transition: all .5s ease; left: 0; border-right:0px solid #337ab7;border-bottom:1px solid #337ab7; top: 0;  background-color: #fff;padding-left: 0px;bottom:none;}
.left-panel-icon{width: 35px;height: 36px;position: absolute;top: 0;left: 0px;-webkit-transition: all 0.5s ease;-moz-transition: all 0.5s ease;-ms-transition: all 0.5s ease;-o-transition: all 0.5s ease;transition: all 0.5s ease; z-index: 100;padding-left: 0px; }
.left-panel + .mainWrapperContainer { left: 0; width:100%; -webkit-transition: all 0.5s ease;-moz-transition: all 0.5s ease;-ms-transition: all 0.5s ease;-o-transition: all 0.5s ease;transition: all 0.5s ease;  }
.body .search-results .result-section .result-icons .icon-info {display:block;margin-left: 78px;}
}
