<?php

class Db
{

  protected $connection;
  protected $redis;

	public function __construct() {

    require_once __DIR__ . '/../config/db.php';

		$this->connection = new mysqli($db_host, $db_user, $db_pass, $db_table);

		if ($this->connection->connect_error) {
			$this->error('Failed to connect to MySQL - ' . $this->connection->connect_error);
		}

		$this->connection->set_charset($db_charset);


	}

  public function fetchAll($sql, $types, $params, $key) {

    require_once __DIR__ . '/../config/redis.php';

    $redis = new Redis();
    $redis->connect($rd_host, $rd_port);

    if (!$redis->get($key)) {
      $stmt = $this->connection->prepare($sql);
      $stmt->bind_param($types, ...$params);
      $stmt->execute();
      $result = $stmt->get_result();

      $products = $result->fetch_all(MYSQLI_ASSOC);

      $redis->set($key, serialize($products));
      $redis->expire($key, $rd_expire);

      echo "From databse: \n";

      return $products;

    } else {
      echo "From redis: \n";

      return unserialize($redis->get($key));

    }
  }

}
