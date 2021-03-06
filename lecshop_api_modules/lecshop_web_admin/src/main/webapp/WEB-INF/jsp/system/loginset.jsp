<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="<%=basePath %>/res/img/favicon.png">
    <title>登录接口设置 - 乐商商城</title>
    <!-- Bootstrap core CSS -->
    <link href="<%=basePath %>/res/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>/res/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=basePath %>/res/assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="<%=basePath %>/res/assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="<%=basePath %>/res/css/style.css" rel="stylesheet">
    <link href="<%=basePath %>/res/css/style-responsive.css" rel="stylesheet"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="<%=basePath %>/res/js/html5shiv.js"></script>
    <script src="<%=basePath %>/res/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<section id="container">
    <input type="hidden" value="<%=basePath%>" id="basePath">
    <!-- 引用上侧 -->
    <jsp:include page="../common/header.jsp"></jsp:include>
    <!-- 引用左侧 -->
    <jsp:include page="../common/left.jsp"></jsp:include>
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper site-min-height">
            <div class="row">
                <div class="col-lg-12">
                    <!--breadcrumbs start -->
                    <ul class="breadcrumb">
                        <li><a href="#">系统</a></li>
                        <li><a href="#">接口管理</a></li>
                        <li class="active">登录接口设置</li>
                    </ul>
                    <!--breadcrumbs end -->
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading"> 登录接口设置</header>
                        <div class="panel-body">
                            <div class="panel">
                                <header class="panel-heading tab-bg-dark-navy-blue ">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#tab1" onclick="changeLoginSet(1)">新浪微博</a></li>
                                        <li class=""><a data-toggle="tab" href="#tab2" onclick="changeLoginSet(2)">腾讯QQ</a></li>
                                        <li class=""><a data-toggle="tab" href="#tab3" onclick="changeLoginSet(3)">微信</a></li>
                                    </ul>
                                </header>
                                <div class="panel-body">
                                    <div class="tab-content">
                                        <div id="tab1" class="tab-pane active">
                                            <div class="form-horizontal tasi-form set-form">
                                                <form id="editLoginSetForm1">
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>AppKey：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" value="" name="key">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>AppSecret：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" value="" name="value">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>回调地址：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" value="" name="url">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">是否启用：</label>
                                                        <div class="col-sm-2">
                                                            <select class="form-control" name="isUse">
                                                                <option value="1">是</option>
                                                                <option value="0">否</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"></label>
                                                        <div class="col-sm-5">
                                                            <button type="button" class="btn btn-success btn-lg save_btn" onclick="editLoginSetBtn(1)">保存设置</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div id="tab2" class="tab-pane">
                                            <div class="form-horizontal tasi-form set-form">
                                                <form id="editLoginSetForm2">
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>AppID：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" name="key">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>AppKEy：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" name="value">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>回调地址：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" name="url">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">是否启用：</label>
                                                        <div class="col-sm-2">
                                                            <select class="form-control" name="isUse">
                                                                <option value="1">是</option>
                                                                <option value="0">否</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"></label>
                                                        <div class="col-sm-5">
                                                            <button type="button" class="btn btn-success btn-lg save_btn" onclick="editLoginSetBtn(2)">保存设置</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div id="tab3" class="tab-pane">
                                            <div class="form-horizontal tasi-form set-form">
                                                <form id="editLoginSetForm3">
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>AppID：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" name="key">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>AppSecret：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" name="value">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"><span class="label_red">*</span>回调地址：</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" class="form-control required" name="url">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">是否启用：</label>
                                                        <div class="col-sm-2">
                                                            <select class="form-control" name="isUse">
                                                                <option value="1">是</option>
                                                                <option value="0">否</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label"></label>
                                                        <div class="col-sm-5">
                                                            <button type="button" class="btn btn-success btn-lg save_btn" onclick="editLoginSetBtn(3)">保存设置</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
        <div class="text-center"> 2016 &copy; LecShop. <a href="#" class="go-top"> <i class="icon-angle-up"></i> </a></div>
    </footer>
    <!--footer end-->
</section>
<!-- Modal -->
<div class="modal fade" id="success_dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">系统提示</h4>
            </div>
            <div class="modal-body">设置保存成功！</div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-success" type="button">确定</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=basePath %>/res/js/jquery.js"></script>
<script src="<%=basePath %>/res/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="<%=basePath %>/res/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=basePath %>/res/js/jquery.scrollTo.min.js"></script>
<script src="<%=basePath %>/res/js/jquery.nicescroll.js"></script>
<script type="text/javascript" language="javascript" src="<%=basePath %>/res/assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
<script src="<%=basePath %>/res/js/respond.min.js"></script>
<!--common script for all pages-->
<script src="<%=basePath %>/res/js/common/common-scripts.js"></script>
<script type="text/javascript" src="<%=basePath%>/res/js/common/common.js"></script>
<script type="text/javascript" src="<%=basePath%>/res/js/jquery.validate.js"></script>
<!--script for this page only-->
<script type="text/javascript" src="<%=basePath %>/res/js/system/loginset.js"></script>
</body>
</html>
