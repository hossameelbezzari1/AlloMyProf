<?php
    $a = explode('/',$_SERVER['REQUEST_URI']);
    $b = explode('-', end($a));
    define('HEADER_MY_PAGE',implode(' ',$b));
?>
<section class="HeaderPage">
    <h1 class="shadowTitel" ><?php echo mb_strimwidth($b[0], 0, 7, "..");?></h1>
    <div class="BoxInfoHeaderPage">
        <h1><?php echo ucfirst(HEADER_MY_PAGE);?></h1>
    </div>
</section>