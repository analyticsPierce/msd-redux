<?php
 
    // if the caller pressed anything but 2 send them back
    if($_REQUEST['Digits'] != '2') {
        header("Location: call_handler_intro.php");
        die;
    }
     
    // the user pressed 2, connect the call to 7196469245 (jason's number)
    header("content-type: text/xml");
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
?>
<Response>
    <Dial>+17196469245</Dial>
    <Say>Development and technical support is currently unavailable. Please reach us via email, jason at marketing science dot c o. Goodbye.</Say>
</Response>
