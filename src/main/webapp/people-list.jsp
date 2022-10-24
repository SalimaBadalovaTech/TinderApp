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
    <link rel="icon" href="img/favicon.ico">

    <title>People list</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<% ProfileImpl profileImpl = new ProfileImpl();
    LikedProfilesImpl likedProfiles=new LikedProfilesImpl();
    List<Profile> profileList = profileImpl.getAll();
    LikePageController likePageController=new LikePageController();
    Profile firstProfile = profileList.get(likePageController.getPictureID());%>
<div class="container">
    <div class="row">
        <div class="col-8 offset-2">
            <div class="panel panel-default user_panel">
                <div class="panel-heading">
                    <h3 class="panel-title">User List</h3>
                </div>
                <div class="panel-body">
                    <div class="table-container">
                        <table class="table-users table" border="0">
                            <tbody>
                            <tr>
                                <td width="10">
                                    <div class="avatar-img">
                                        <img class="img-circle" src="<%=firstProfile.getProfile_link()%>" />  
                                    </div>

                                </td>
                                <td class="align-middle">
                                    out.println(firstProfile.getName()+" "+firstProfile.getSurname());
                                </td>
                                <td class="align-middle">
                                    Builder Sales Agent
                                </td>
                                <td  class="align-middle">
                                    Last Login:  6/10/2017<br><small class="text-muted">5 days ago</small>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
