<?php
if(isset($_POST['submit]))
    {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $text = $name . "," . $email . "," . $message . \n";
    $fp = fopen('accounts.txt', 'a+');

    if(fwrite($fp, $text))  {
        echo 'Saved';
    }
fclose ($fp);
header("Location: http://www.google.com");
die();
}?>
