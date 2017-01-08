{*
  Including header.template and Setting the page title.
*}
{include file='header.tpl' page_title={$smarty.const.MY_TITLE}}

{* 予約変数(一部) *}
<dl>
  <dt> Current timestamp
  <dd> {$smarty.now}

  <dt> Print the current template file.
  <dd> {$smarty.template}

  <dt> Print the smarty version
  <dd> {$smarty.version}
</dl>

{* variable *}
<p> {$hello}

{* Use method *}
<p> {$today->format('Y-m-d (D)')}

<ul>
{* Print the data of $animal *}
{section name=i loop=$animal step=-1}
    <li> {$animal[i]}
{/section}
</ul>

{* Loop the $address values *}
{section name=i loop=$address}
{assign "memberName" $address[i].name}
<ul>
  <li> name: {$memberName}
  <li> nameUpper: {$memberName|upper}
  <li> countOfWords: {$memberName|count_words}
  <li> home: {$address[i].home}
  <li> cell: {$address[i].cell}
  <li> e-mail: {$address[i].email}
</ul>

{* Sum of two values *}
<dl>
  <dt> X1
  <dd> {$x1}

  <dt> X2
  <dd> {$x2}

  <dt> X1 + X2
  <dd> {$x1 + $x2}
</dl>
{/section}
