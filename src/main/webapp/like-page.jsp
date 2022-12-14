<!doctype html>
<%@ page import="com.entity.impl.ProfileImpl" %>
<%@ page import="com.entity.Profile" %>
<%@ page import="java.util.List" %>
<%@ page import="com.tinder.LikePageController" %>
<%@ page import="com.entity.impl.LikedProfilesImpl" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="img/tinder.ico">

  <title>Like page</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #f5f5f5;">
<% ProfileImpl profileImpl = new ProfileImpl();
  LikedProfilesImpl likedProfiles=new LikedProfilesImpl();
  List<Profile> profileList = profileImpl.getAll();
  LikePageController likePageController=new LikePageController();
  Profile firstProfile = profileList.get(likePageController.getPictureID());%>
<div class="col-4 offset-4">
  <div class="card">
    <div class="card-body">
      <div class="row">
        <div class="col-12 col-lg-12 col-md-12 text-center">
          <img id="picture" src="<%=firstProfile.getProfile_link()%>"
               alt="" class="mx-auto rounded-circle img-fluid">
          <h3 class="mb-0 text-truncated" ><%
            out.println(firstProfile.getName()+" "+firstProfile.getSurname());
          %> </h3>
          <br>
        </div>
        <div class="col-12 col-lg-6">
          <form action="like-page" method="get">
          <button name="dislikeButton" value="dislike" class="btn btn-outline-danger btn-block"><span class="fa fa-times"></span> Dislike</button>
          </form>
        </div>
        <div class="col-12 col-lg-6">
          <form action="like-page" method="get">
          <button name="likeButton" value="like" class="btn btn-outline-success btn-block" ><span class="fa fa-heart"></span> Like</button>
          </form>
        </div>
        <!--/col-->
      </div>
      <!--/row-->
    </div>
    <!--/card-block-->
  </div>
</div>
</body>
</html>
