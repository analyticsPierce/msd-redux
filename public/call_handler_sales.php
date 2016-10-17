<?php
 
    // if the caller pressed anything but 1 send them back
    if($_REQUEST['Digits'] != '1') {
        header("Location: call_handler_sales.php");
        die;
    }
     
    // the user pressed 1, connect the call to 3038172002 (russel's number)
    header("content-type: text/xml");
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
?>
<Response>
    <Dial>+13038172002</Dial>
    <Say>New business is currently unavailable. Please reach us via email, russell at marketing science dot c o. Goodbye.</Say>
</Response>
