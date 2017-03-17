<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/tagUri/tagUri.jsp"%>
<head>



<title>HongMaSkillInventory</title>
</head>


           <header class="header hong-bg">
              <!-- <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div> -->
            <!--logo start-->
            <a href="index.do" class="logo"><b style="color:#424a5d;">Hongma Skill Inventory</b></a>
            <!--logo end-->
            
            
            <!-- @@드롭메뉴 -->
            
            
            <!-- <div class="nav notify-row" id="top_menu">
                 notification start
                <ul class="nav top-menu">
                
                    settings start
                    
                    첫번째 알림창
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-tasks"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 4 pending tasks</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">DashGum Admin Panel</div>
                                        <div class="percent">40%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Database Update</div>
                                        <div class="percent">60%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Product Development</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Payments Sent</div>
                                        <div class="percent">70%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                            <span class="sr-only">70% Complete (Important)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    첫번째 알림창
                    settings end
                    
                    inbox dropdown start
                    메세지 드롭창
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-zac.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Zac Snider</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Hi mate, how is everything?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-divya.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Divya Manian</span>
                                    <span class="time">40 mins.</span>
                                    </span>
                                    <span class="message">
                                     Hi, I need your help with this.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-danro.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dan Rogers</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Love your new Dashboard.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dj Sherman</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Please, answer asap.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    첫번째 드롭창
                    inbox dropdown end
                </ul>
                 notification end
            </div> -->
            
            <!-- @@드롭메뉴 -->
            
            
            <div class="top-menu">
            	<c:if test="${login.m_id ne null }">
	            	<ul class="nav pull-right top-menu" >
	                    <li><a class="logout" onclick="alert('개발중이지롱')">Logout</a></li><!-- 수정요망 -->
	            	</ul>
	            	
	            	<ul class="nav pull-right top-menu">
	            		<li><a data-toggle="modal" class="logout" href="index.do#myModal">MyInfo</a></li><!-- 수정요망 -->
	            	</ul>
            	</c:if>
            	
            	<c:if test="${login.m_id eq null }">
	            	<ul class="nav pull-right top-menu">
	            		<li><a class="logout" href="regi.do">Join</a></li>
	            	</ul>
	            	
	            	<ul class="nav pull-right top-menu" >
	                    <li ><a class="logout" href="login.do" >login</a></li><!-- 수정요망 -->
	            	</ul>
	            	
            	</c:if>
            </div>
        </header>
        
        
        <!-- Modal -->
        	<c:if test="${login.m_id ne null }">
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">  
		                  
		                  		     <div class="modal-header">
									    <button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
									    <h3 class="smaller lighter blue no-margin modal-title">회원 정보</h3>
									</div>
									 	<p class="bg-success">아이디 : ${login.m_id }</p>
									 	<p class="bg-success">이름 : ${login.m_name }</p>
									 	<c:if test="${login.m_gender == 'm' }">
									 		<p class="bg-success">성별 : 남자</p>
									 	</c:if>
									 	
									 	<c:if test="${login.m_gender == 'w' }">
									 		<p class="bg-success">성별 : 여자</p>
									 	</c:if>
									 	
									 	<p class="bg-success">생년월일 : 
										<%-- <c:out value="${fn:substring(login.m_birth,0,4) }"/>년&nbsp; 
									 	<c:out value="${fn:substring(login.m_birth,4,6) }"/>월&nbsp;
									 	<c:out value="${fn:substring(login.m_birth,6,8) }"/>일 --%>
									 	</p>
									 	<p class="bg-success">자택주소 : ${login.m_postal} ${login.m_address }</p>
									 	
									 	<c:set var="market" value="${login.m_marketing }"/>
									 	<p class="bg-success">마켓팅 수신동의 : 
									 		<%-- 
									 		<c:if test="${market eq ' null' }">
									 			<input type="checkbox" disabled>Email
									 			<input type="checkbox" disabled>SMS
									 			<input type="checkbox" disabled>PHONE
									 		</c:if>
									 		
									 		<c:if test="${market ne ' null' }">
									 			<c:set var="marketing" value="${fn:split(market,',') }"/>
									 			
									 			<c:forEach var="test" items="${marketing }" varStatus="s">
									 				<c:if test="${test == 'Email'}"><c:set var="email" value="test"/></c:if>
									 				<c:if test="${test == 'SMS'}"><c:set var="sms" value="test"/></c:if>
									 				<c:if test="${test == 'Phone'}"><c:set var="phone" value="test"/></c:if>
									 			</c:forEach>
									 		</c:if>
											
											<c:if test="${email ne null }">
												<input type="checkbox" value="email" disabled checked>Email
											</c:if>
											
											<c:if test="${email eq null }">
												<input type="checkbox" value="email" disabled>Email
											</c:if>
											
											<c:if test="${sms ne null }">
												<input type="checkbox" value="sms" disabled checked>SMS
											</c:if>
											
											<c:if test="${sms eq null }">
												<input type="checkbox" value="sms" disabled>SMS
											</c:if>
											
											<c:if test="${phone ne null }">
												<input type="checkbox" value="phone" disabled checked>PHONE
											</c:if>
											
											<c:if test="${phone eq null }">
												<input type="checkbox" value="phone" disabled>PHONE
											</c:if>
									 		
									 	 --%>
									 	</p>
									 	<p class="bg-success">email주소 : ${login.m_email }</p>
									 	<p class="bg-success">휴대전화 : ${login.m_phone }</p>
									 	
									<div class="modal-body">
									   
									</div>
									 
									<div class="modal-footer">
									    <button class="btn btn-sm btn-danger pull-right" data-dismiss="modal" id="btnClose">
									        <i class="ace-icon fa fa-times"></i>닫기
									    </button>
									</div>
		                  </div>
		              </div>
		          </div>
	   <!-- modal -->
		     </c:if>     

        
        
