<?php
class Category extends Db{
    public function getAllCategories(){
        $sql = self::$connection->prepare("SELECT * FROM categories");
        $sql->execute();
        $item = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}