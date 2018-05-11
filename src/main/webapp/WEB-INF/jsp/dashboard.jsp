<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script src="angular.js"></script>
<script type="text/javascript">
	var module=angular.module("mymod",[]);
	
	module.factory('notify',['$window',function(win){
		console.log("notify constructor");
		var msgs=[];
		return function(msg){
			msgs.push(msg)
			if(msgs.length==3){	
				win.alert(msgs.join("\n"));
				msgs=[];
			}
		};
		
	}]);
	
	module.controller("mycon",['$scope','notify',function($scope,notify){
		console.log("mycon constructor");
		$scope.msg="hello";
		$scope.senddata=function(){
			console.log("mycons constructor");
			$scope.out=$scope.msg;
			notify($scope.out);
			$scope.msg="";
		}
		
	}]);
	
	
</script>
</head>
<body ng-app="mymod" ng-controller="mycon">
<input type="text" ng-model="msg">
<input type="button" ng-click="senddata()"></br>
{{out}}
</body>
</html>