SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `products` (`product_id`, `name`, `stock`, `created`) VALUES
(1, 'example', 0, '2022-01-06');

INSERT INTO `products` (`product_id`, `name`, `stock`, `created`) VALUES
(2, 'example-1', 0, '2022-01-06');

INSERT INTO `products` (`product_id`, `name`, `stock`, `created`) VALUES
(3, 'example-2', 0, '2022-01-06');

INSERT INTO `products` (`product_id`, `name`, `stock`, `created`) VALUES
(4, 'example-3', 0, '2022-01-06');

INSERT INTO `products` (`product_id`, `name`, `stock`, `created`) VALUES
(5, 'example-4', 0, '2022-01-06');

INSERT INTO `products` (`product_id`, `name`, `stock`, `created`) VALUES
(6, 'example-5', 0, '2022-01-06');

INSERT INTO `products` (`product_id`, `name`, `stock`, `created`) VALUES
(7, 'example-6', 0, '2022-01-06');


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);


ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
