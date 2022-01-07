<?php

class Product
{

  public static function getProductsNoStock() {

    require 'db.php';

    $db = new Db();

    $sql = 'SELECT * FROM products WHERE stock = ?';
    $types = 'i';
    $params = [0];
    $key = 'NoStockProducts';

    return $db->fetchAll($sql, $types, $params, $key);

    }
}
