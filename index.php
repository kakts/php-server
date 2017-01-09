<?php

require_once 'vendor/autoload.php';

ini_set('date.timezone', 'Asia/Tokyo');
define('MY_TITLE', 'このページのタイトル');

$smarty = new Smarty();

$smarty->assign('hello', 'Hello, world!');
$smarty->assign('today', new DateTime());
$smarty->assign('animal', array('いぬ', 'さる', 'きじ'));
$smarty->assign('address', array(
          array('name' => 'John Smith', 'home' => '555-555-5555',
                'cell' => '666-555-5555', 'email' => 'john@myexample.com', ),
          array('name' => 'Jack Jones', 'home' => '777-555-5555',
                'cell' => '888-555-5555', 'email' => 'jack@myexample.com', ),
          array('name' => 'Jane Munson', 'home' => '000-555-5555',
                'cell' => '123456', 'email' => 'jane@myexample.com', ),
              ));

# Assign integer values
$smarty->assign('x1', 100);
$smarty->assign('x2', 200);

$smarty->display('templates/index.tpl');
