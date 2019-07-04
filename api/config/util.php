<?php
   /**
   * Returns the JSON encoded POST data, if any, as an object.
   *
   * @return Object|null
   */
  function retrieveJsonPostData()
  {
    // get the raw POST data
    $rawData = file_get_contents("php://input");

    // this returns null if not valid json
    return json_decode($rawData);
  }
?>
