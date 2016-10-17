<?php
 
    // if the caller pressed anything but 1 send them back
    if($_REQUEST['Digits'] != '3') {
        header("Location: call_handler_intro.php");
        die;
    }
     
    // the user pressed 1, connect the call to 7196944226 (aem's number)
    header("content-type: text/xml");
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
?>
<Response>
    <Dial>+17196944226</Dial>
    <Say>The accounting department is currently unavailable. Please reach us via email, a e m at marketing science dot c o. Goodbye.</Say>
</Response>
