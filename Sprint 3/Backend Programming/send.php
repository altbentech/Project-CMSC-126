<?php


if (isset($_POST['email']) && isset($_POST['title']) && isset($_POST['author']) && isset($_POST['poem'])){
    include 'db_conn.php';
    
    function validate($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $email = validate($_POST['email']);
    $title = validate($_POST['title']);
    $author = validate($_POST['author']);
    $poem = validate($_POST['poem']);
    
    if (empty($email) || empty($title) || empty($author) || empty($poem)){
         header("Location: makeYours.html");
    }else{
        
        $sql = "INSERT INTO entries(email, title, author, content) VALUES('$email','$title', '$author', '$poem')";
        $res = mysqli_query($conn, $sql);
        
        if ($res){
            echo "Your poem was sent sucessfully!";
        }else{
            echo "Your poem could not be sent!";
        }
    }
    
    
}else{
    header("Location: makeYours.html");
}
