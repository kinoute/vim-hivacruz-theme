{foreach $foo as $bar}
  <a href="{$bar.zig}">{$bar.zag}</a>
  <a href="{$bar.zig2}">{$bar.zag2}</a>
  <a href="{$bar.zig3}">{$bar.zag3}</a>
{foreachelse}
  There were no rows found.
{/foreach}

<html>
<head>
  <title>{block name=title}Default Page Title{/block}</title>
</head>
<body>
{block name=body}{/block}
</body>
</html>

 {* this is a comment *}
  {php}echo get_forecast($zipcode);{/php}

{* define the function *}
{function name=menu level=0}
  <ul class="level{$level}">
  {foreach $data as $entry}
    {if is_array($entry)}
      <li>{$entry@key}</li>
      {menu data=$entry level=$level+1}
    {else}
      <li>{$entry}</li>
    {/if}
  {/foreach}
  </ul>
{/function}

{* create an array to demonstrate *}
{$menu = ['item1','item2','item3' => ['item3-1','item3-2','item3-3' =>
['item3-3-1','item3-3-2']],'item4']}

{* run the array through the function *}
{menu data=$menu}
