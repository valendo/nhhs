<?php

$routes['thuc-don/{category}/{id}'] = array(
    'name' => 'product_list_route',
    'controller' => 'PublicController',
    'action' => 'category',
    'page' => ipContent()->getPage(10)
);

$routes['thuc-don/{category}/{product}/{id}'] = array(
    'name' => 'product_detail_route',
    'controller' => 'PublicController',
    'action' => 'product',
    'page' => ipContent()->getPage(10)
);