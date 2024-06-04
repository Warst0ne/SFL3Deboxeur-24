<?php
include_once('database.inc.php');
function test_input($data) {
     
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

function logoutUser(){
    session_destroy();
    header("location: login_page.php");
    exit();
 }
  
if ($_SERVER["REQUEST_METHOD"] == "POST") {
     
    $username = test_input($_POST["username"]);
    $password = test_input($_POST["password"]);
    $stmt = $connexion->prepare("SELECT * FROM user");
    $stmt->execute();
    $users = $stmt->fetchAll();
     
    foreach($users as $user) {
         
        if(($user['username'] == $username) && 
            ($user['password'] == $password)) {
                $_SESSION["user"] = $username;
	            header("location: home.php");
	            exit();
        }
        else {
            echo "<script language='javascript'>";
            echo "alert('WRONG INFORMATION')";
            echo "</script>";
        }
    }
}
?>