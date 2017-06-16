<?php
/* Smarty version 3.1.30, created on 2017-06-16 08:10:53
  from "C:\wamp\www\MyBandV_M\MyBandV_M\views\contact.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5943766d77c144_25895419',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6397db4e2d1f265e0dbae0804893be82145c6c65' => 
    array (
      0 => 'C:\\wamp\\www\\MyBandV_M\\MyBandV_M\\views\\contact.tpl',
      1 => 1497544532,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5943766d77c144_25895419 (Smarty_Internal_Template $_smarty_tpl) {
?>
<content class="wrap">


<section>
    <div class="mainbar">
        <div class="opzij">
    <h1>Contact</h1>
    <h3>Social media</h3>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list_contact1']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
        <article>
        <content><b><?php echo $_smarty_tpl->tpl_vars['article']->value['media'];?>
</b>:<a href="<?php echo $_smarty_tpl->tpl_vars['article']->value['link'];?>
"> Click to visit</a></content>
        </article>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    
    <h3>Personal</h3>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list_contact2']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
    <article>
        <content><b><?php echo $_smarty_tpl->tpl_vars['article']->value['adres'];?>
</b>: <?php echo $_smarty_tpl->tpl_vars['article']->value['info'];?>
</content>
    </article>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    
    </div>
    </div>
    <div class="sidebar">
        <h1>New merch</h1>
        
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list_merch']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
            <img src="images/merch/<?php echo $_smarty_tpl->tpl_vars['article']->value['image'];?>
">
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

        
    </div>
</section>

</content><?php }
}
