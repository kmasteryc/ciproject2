<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function success($str)
{
    $x = '<div class="alert alert-success "><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success! </strong>' . $str . '
</div>';
    return $x;
}

function fail($str)
{
    $x = '<div class="alert alert-danger "><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Error! </strong>' . $str . '
</div>';
    return $x;
}

function warn($str)
{
    $x = '<div class="alert alert-warning "><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Warning! </strong>' . $str . '
</div>';
    return $x;
}

function check_uri($args,$type){
  $return = FALSE;
  foreach ($args as $arg)
  {
    if ($type($arg) === TRUE){
      $return = TRUE;
    }else{
      $return = FALSE;
    }
  }
  return $return;
}

function limit_text($text, $limit) {
    if (str_word_count($text, 0) > $limit) {
        $words = str_word_count($text, 2);
        $pos = array_keys($words);
        $text = substr($text, 0, $pos[$limit]) . '...';
    }
    return $text;
}

function to_array($str){
    return explode(';',$str);
}

function vnd($int){
    return number_format($int,0,',','.'). ' VND';
}
