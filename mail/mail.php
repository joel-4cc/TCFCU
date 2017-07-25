<?php
if($_POST){
    $name = $_POST['form_name'];
    $email = $_POST['form_email'];
    $message = $_POST['form_msg'];

//send email
    mail("jj@4cc.co", "This is an email from: TCFCU node site email: " .$email, $message);
}
?>