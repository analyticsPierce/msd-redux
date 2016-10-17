<?php
         
    // now greet the caller
    header("content-type: text/xml");
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
?>
<Response>
    <Say>Hello and welcome to The Marketing Science Department.</Say>
    <Gather numDigits="1" action="call_handler_sales.php" method="POST">
        <Say>To speak with Business Development, press 1.</Say>
    </Gather>
    <Gather numDigits="2" action="call_handler_tech.php" method="POST">
        <Say>To speak with development and technical support, press 2.</Say>
    </Gather>
    <Gather numDigits="3" action="call_handler_accounting.php" method="POST">
        <Say>To speak with accounting, press 3.</Say>
    </Gather>
</Response>
