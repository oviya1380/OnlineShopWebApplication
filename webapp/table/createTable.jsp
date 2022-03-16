<%@page import="dataBase.dataConnection"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection connection=dataConnection.databaseConnection();
	Statement statement=connection.createStatement();
	String query="create table loginsign(userName varchar(100)primary key,email varchar(100),phoneNumber bigint,password varchar(100),confirmPassword varchar(100))";
	System.out.println(query);
	//statement.execute(query);
	String userquery1="create table product(id int,name varchar(500),category varchar(200),price int,active varchar(10),image varchar(200))";
    String userquery2="create table cart(CartId int,ProductId int,ProductName varchar(100),Category varchar(100),Price varchar(100),TotalPrice varchar(100))";
	System.out.println(userquery1);
	System.out.println(userquery2);
	//statement.execute(userquery1);
	statement.execute(userquery2);
	System.out.println("table created");
	connection.close();
}
catch(Exception e){
	System.out.println(e);
}
%>