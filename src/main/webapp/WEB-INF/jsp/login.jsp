<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Employee Referral System</title>
<link href="/bootstrap.min.css" rel="stylesheet">
<link href="/login.css" rel="stylesheet">
<script src="/jquery-3.3.1.min.js"></script>
<script src="/bootstrap.min.js"></script>
<script src="/login.js"></script>
</head>
<body>
	<div class="tile">
		<div class="tile-body">
			<form action="/login" method="post">
				<label class="form-input">
					<i class="material-icons">person</i>
					<input type="text" autofocus="autofocus" required name="username" />
					<span class="label">Username</span>
					<span class="underline"></span>
				</label>
				<label class="form-input">
					<i class="material-icons">lock</i>
					<input type="password" required name="password" />
					<span class="label">Password</span>
					<span class="underline"></span>
				</label>
				<div class="submit-container clearfix" style="margin-top: 2rem;">
					<button type="submit" class="btn btn-irenic float-right">SIGN IN</button>
					<c:if test="${param.error ne null}">
						<div style="color: red">Invalid credentials.</div>
					</c:if>
					<c:if test="${param.logout ne null}">
						<div style="color: green">You have been logged out.</div>
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>
</html>