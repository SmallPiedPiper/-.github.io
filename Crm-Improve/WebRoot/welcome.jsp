<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itcast.cn/common/"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>客户管理系统</title>
  
  <script src="js/jquery-1.9.1.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js"></script>	
  
  <!-- Bootstrap core CSS-->
  <link href="css/bootstrap.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">	
  

</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<div>
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="welcome.jsp">BOOT客户管理系统 V2.0</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="welcome.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">客户管理</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="#">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">客户拜访</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">新的消息:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>李白</strong>
              <span class="small float-right text-muted">11:21 上午</span>
              <div class="dropdown-message small">今晚去你家喝酒</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>杜甫</strong>
              <span class="small float-right text-muted">11:21 上午</span>
              <div class="dropdown-message small">今晚来我家吃饭</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>王昌龄</strong>
              <span class="small float-right text-muted">11:21 上午</span>
              <div class="dropdown-message small">今天去你家吃饭</div>
            </a>
           
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">提醒
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">新的提醒:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>状态更新/strong>
              </span>
              <span class="small float-right text-muted">11:21 上午</span>
              <div class="dropdown-message small">这是一条新的提醒</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>状态更新</strong>
              </span>
              <span class="small float-right text-muted">11:21 上午</span>
              <div class="dropdown-message small">这是一条新的提醒</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>状态更新</strong>
              </span>
              <span class="small float-right text-muted">11:21 上午</span>
              <div class="dropdown-message small">这是一条新的提醒</div>
            </a>
         
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="查找">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">客户管理系统</a>
        </li>
        <li class="breadcrumb-item active">客户的详细信息</li>
      </ol>
     
      <hr />
      <!--查找面板-->
      <div>
      	<div class=" panel panel-default">
      		<div class="panel-body">
      			<form class="form-inline" action="${pageContext.request.contextPath }/test.do" method="post">
      				<div class="form-group">
      					<label for="">客户名字</label>
      					<input type="text" class="form-control" id="customerName" value="${custName }" name="custName">
      				</div>
      				<!--Group属性是是一行进行排列-->
      				<div class="form-group">
      					<label for="">客户来源</label>
      					<!--修饰窗体的样子-->
      					<select class="form-control" id="customerFrom" placeholder="客户来源" name="custSource">
      						<option value="">--请选择--</option>
      						<c:forEach items="${formType}" var="item">
      						<option value="${item.dict_id}" <c:if test="${item.dict_id == custSource}"> selected</c:if> >${item.dict_item_name}</option>
      						</c:forEach>
      					</select>
      				</div>
      				
      				<div class="form-group">
      					<label for="">所属行业</label>
      					<select class="form-control"  id="custIndustry"  name="custIndustry" >
      						<option value="">---请选择---</option>
      						<c:forEach items="${industryType}" var="item">
      						<option value="${item.dict_id}" <c:if test="${item.dict_id == custIndustry}"> selected </c:if> >  
      						${item.dict_item_name}						
      						</option>
      						</c:forEach>
      					</select>
      				</div>
      				
      				<div class="form-group">
      					<label for="">客户级别</label>
      				 <select class="form-control" id="custLevel" name="custLevel">
      						<option value="">---请选择---</option>
      						<c:forEach items="${levelType}" var="item">
      						<option value="${item.dict_id}" <c:if test="${item.dict_id == custLevel}"> selected </c:if> >  
      						${item.dict_item_name}						
      						</option>
      						</c:forEach>
      				</select>
      				</div>
						<button type="submit" class="btn btn-primary" >查询</button>
      			</form>
      			
      		</div>
      	 </div>
      	</div>
      </div>
      <!--返回的数据的面板-->
       <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table Example</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  					<th>ID</th>
									<th>客户名称</th>
									<th>客户来源</th>
									<th>客户所属行业</th>
									<th>客户级别</th>
									<th>固定电话</th>
									<th>手机</th>
									<th>操作</th>
									
                </tr>
              </thead>
          
              <tbody>
	             <!--这里里面的内容使用循环动态的输出，不要使用死的数据-->  	
	            	<c:forEach items="${page.rows}" var="rows">
		            	<tr>
		            		<td>${rows.cust_id} </td>
		            		<td>${rows.cust_name} </td>
		            		<td>${rows.cust_source}</td>
		            		<td>${rows.cust_industry} </td>
		            		<td>${rows.cust_level} </td>
		            		<td>${rows.cust_phone} </td>
		            		<td>${rows.cust_mobile} </td>
		            		<td>
		            		<!--点击可以加载页面，进行修改信息 -->
		            			<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="customerEdit(${rows.cust_id})" >修改</a>
		            			<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${rows.cust_id})">删除</a>

		            		</td>
		            	</tr>
	            	</c:forEach>
              </tbody>
           </table>
          <div class="" >
				<itheima:page url="${pageContext.request.contextPath }/test.do" />
		  </div> 
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © 客户管理系统 2018</small>
        </div>
      </div>
    </footer>




	<!-- 客户编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">修改客户信息</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="cust_id"/>
						<div class="form-group">
							<!-- <label for="edit_customerName" class="col-sm-2 control-label">客户名称</label> -->
							<label for="edit_customerName" style="float:left;padding:7px 15px 0 27px;">客户名称</label> 
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName" placeholder="客户名称" name="cust_name">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">客户来源</label> 
							<div class="col-sm-10">
								<select class="form-control" id="edit_customerFrom" placeholder="客户来源" name="cust_source">
		      						<option value="">--请选择--</option>
		      						<c:forEach items="${formType}" var="item">
		      						<option value="${item.dict_id}" <c:if test="${item.dict_id == custSource}"> selected</c:if> >${item.dict_item_name}</option>
		      						</c:forEach>
      							</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
							<div class="col-sm-10"> 
								<select	class="form-control" id="edit_custIndustry"  name="cust_industry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">客户级别</label>
							<div class="col-sm-10">
								<select	class="form-control" id="edit_custLevel" name="cust_level">
									<option value="">--请选择--</option>
									<c:forEach items="${levelType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<!-- <label for="edit_linkMan" class="col-sm-2 control-label">联系人</label> -->
							<label for="edit_linkMan" style="float:left;padding:7px 15px 0 27px;">联系人</label>
						
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_linkMan" placeholder="联系人" name="cust_linkman">
							</div>
						</div>
						<div class="form-group">
							<!-- <label for="edit_phone" class="col-sm-2 control-label">固定电话</label> -->
								<label for="edit_phone" style="float:left;padding:7px 15px 0 27px;">固定电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_phone" placeholder="固定电话" name="cust_phone">
							</div>
						</div>
						<div class="form-group">
						<label for="edit_mobile" style="float:left;padding:7px 15px 0 27px;">移动电话</label>
							<!-- <label for="edit_mobile" class="col-sm-2 control-label">移动电话</label> -->
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_mobile" placeholder="移动电话" name="cust_mobile">
							</div>
						</div>
						<div class="form-group">
<!-- 							<label for="edit_zipcode" class="col-sm-2 control-label">邮政编码</label> -->
							<label for="edit_zipcode" style="float:left;padding:7px 15px 0 27px;">邮政编码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_zipcode" placeholder="邮政编码" name="cust_zipcode">
							</div>
						</div>
						<div class="form-group">
							<!-- <label for="edit_address" class="col-sm-2 control-label">联系地址</label> -->
							<label for="edit_address" style="float:left;padding:7px 15px 0 27px;">联系地址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_address" placeholder="联系地址" name="cust_address">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
 


</div>

	

	
   <script type="text/javascript">
  
   	function deleteCustomer(id){
   		if(confirm('确定要删除这条数据吗？'))
   		{
   			//使用Ajax的异步请求的技术 url data 回调函数 三参数
   			$.post("<%=basePath%>deletes.do",{"id":id},function(data){
   				alert("数据删除成功");
   				//对页面进行加载，但是用户看不出来.会有数据返回，但是外部看不出来
   				window.location.reload();
   			});
   		}
   	}
   	//将数据回显出来
   	function customerEdit(id){
   		$('#customerEditDialog').modal('show');
   		$.ajax({
   			type:"get",
   			url:"<%=basePath%>edit.do",
   			data:{"id":id},
   			success:function(data){
   				//将数值进行回显并进行显示，这个里面的val数值就是进行设置值的过程
   				$("#edit_cust_id").val(data.cust_id);
				$("#edit_customerName").val(data.cust_name);
				$("#edit_customerFrom").val(data.cust_source);
				//$("#edit_customerFrom").val('网络营销');
				$("#edit_custIndustry").val(data.cust_industry);
				$("#edit_custLevel").val(data.cust_level);
				$("#edit_linkMan").val(data.cust_linkman);
				$("#edit_phone").val(data.cust_phone);
				$("#edit_mobile").val(data.cust_mobile);
				$("#edit_zipcode").val(data.cust_zipcode);
				$("#edit_address").val(data.cust_address);
   			}
   			
   		});
   		
   	}
   	//点击确定以后在进行设计然后进行更新
   	function updateCustomer(){
   		$.post("<%=basePath%>update.do",$("#edit_customer_form").serialize(),function(data){
   			alert("修改成功");
   			window.location.reload();
   		});
   	}
   	
   
   </script>
</body>
</html>
