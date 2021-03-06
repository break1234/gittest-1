<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%> 
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>IOT</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    
    
 

 
  </head>

  <body class="nav-md">
  


    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>IoT</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
           
            <c:if test="${sessionScope.userInfo != null }">
		        <div class="profile clearfix">
	              <div class="profile_pic">
	                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
	              </div>
	              <div class="profile_info">
	                <span>Welcome,</span>
	                <h2>${sessionScope.userInfo }</h2>
	              </div>
	              <div class="clearfix"></div>
	            </div>
            </c:if>
                
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="#" onclick="menuClick('main2.html')"><i class="fa fa-laptop"></i> 总控制台 <span class="label label-success pull-right">Coming Soon</span></a></li>
                  <li><a><i class="fa fa-home"></i> 安全门监控 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#" onclick="menuClick('main.html')">全局监控</a></li>  
                      <li><a href="#" onclick="menuClick('alarm.html')">故障监控</a></li>
                      <li><a href="#" onclick="menuClick('alarm2.html')">智能巡检</a></li>
                      <li><a href="#" onclick="menuClick('statistics.html')">数据统计</a></li>
                      <li><a href="#" onclick="menuClick('search2.html')">数据查询</a></li>
                      <li><a href="#" onclick="menuClick('device.html')">设备信息</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 车位监控 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#" onclick="menuClick('carparking.html')">全局监控</a></li>
                      <li><a href="#" onclick="menuClick('alarm2.html')">故障监控</a></li>
                      <!-- <li><a href="#" onclick="menuClick('alarm.html')">授权管理</a></li> -->
                      <li><a href="#" onclick="menuClick('statistics.html')">数据统计</a></li>
                      <li><a href="#" onclick="menuClick('search2.html')">数据查询</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 水位监控 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="index.html">全局监控</a></li>
                      <li><a href="#" onclick="menuClick('alarm.html')">故障监控</a></li>
                      <!-- <li><a href="#" onclick="menuClick('alarm.html')">授权管理</a></li> -->
                      <li><a href="#" onclick="menuClick('statistics.html')">数据统计</a></li>
                      <li><a href="#" onclick="menuClick('search2.html')">数据查询</a></li>
                    </ul>
                  </li>
                   <li><a><i class="fa fa-edit"></i> 温度监控 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="index.html">全局监控</a></li>
                      <li><a href="#" onclick="menuClick('alarm.html')">故障监控</a></li>
                      <!-- <li><a href="#" onclick="menuClick('alarm.html')">授权管理</a></li> -->
                      <li><a href="#" onclick="menuClick('statistics.html')">数据统计</a></li>
                      <li><a href="#" onclick="menuClick('search2.html')">数据查询</a></li>
                    </ul>
                  </li>
                  
                </ul>
              </div>
              <div class="menu_section">
                <h3>管理</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i>权限管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                      <li><a href="#" onclick="menuClick('role.html')">用户角色</a></li>
                      <li><a href="#" onclick="menuClick('role.html')">角色操作</a></li>

                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> 用户设置 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#" onclick="menuClick('profile.html')">基本信息</a></li>
                      <li><a href="page_404.html">修改个人密码</a></li> 
                    </ul>
                  </li>
                                 
                  <li><a href="../index/main.do"><i class="fa fa-laptop"></i> 后台管理 <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                   <c:if test="${sessionScope.userInfo != null }">
	                   <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
	                    <img src="images/img.jpg" alt="">${sessionScope.userInfo }
	                    <span class=" fa fa-angle-down"></span>
	                   </a>
		               <ul class="dropdown-menu dropdown-usermenu pull-right">
	                    <li><a href="#" onclick="menuClick('profile.html')"> Profile</a></li> 
	                    <li><a href="#" onclick="menuClick('about.html')">About</a></li>
	                    <li><a href="${ctx}/logout.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
	                   </ul> 
	                </c:if>
                    <c:if test="${sessionScope.userInfo == null }">
	                 	<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
	                    <img src="images/img.jpg" alt="">Visitor
	                    <span class=" fa fa-angle-down"></span>
	                   </a>
	                 
	                </c:if>
                   
				</li>
               
                
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
         <!-- 内容展示页 -->
 
			<iframe id="iframe-page-content" src="main2.html" frameborder="0"   marginwidth="0" marginheight="0"  scrolling="no"  style="width:100%;height:1400px;" allowtransparency="yes"></iframe>
 
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Iot</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
 
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    
    
      <script type="text/javascript">
		
      $(function() {
		// var height=document.documentElement.clientHeight;
		// document.getElementById('iframe-page-content').style.height=height+'px';
		});
		
	var menuClick = function(menuUrl) {
		$("#iframe-page-content").attr('src',menuUrl);
    // if(menuUrl=="search2.html"){
    //   document.getElementById('iframe-page-content').style.height='600px';
    // }
    
		};
	</script> 
  </body>
</html>
