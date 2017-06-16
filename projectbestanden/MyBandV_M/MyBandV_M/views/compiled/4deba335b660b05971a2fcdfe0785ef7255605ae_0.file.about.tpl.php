<?php
/* Smarty version 3.1.30, created on 2017-06-15 17:18:26
  from "C:\wamp\www\MyBandV_M\MyBandV_M\views\about.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5942a54226a5e1_94269040',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4deba335b660b05971a2fcdfe0785ef7255605ae' => 
    array (
      0 => 'C:\\wamp\\www\\MyBandV_M\\MyBandV_M\\views\\about.tpl',
      1 => 1497539898,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5942a54226a5e1_94269040 (Smarty_Internal_Template $_smarty_tpl) {
?>
<content class="wrap">


<section>
    <div class="mainbar">
        <div class="opzij">
    <h1>About</h1>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list_abt']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
        <article>
        <content><?php echo $_smarty_tpl->tpl_vars['article']->value['content'];?>
</content>
        </article><br>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    <h3>Members</h3>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list_member']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
    <article>
        <content><?php echo $_smarty_tpl->tpl_vars['article']->value['rol'];?>
: <?php echo $_smarty_tpl->tpl_vars['article']->value['member'];?>
</content>
    </article>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

            
           <div class="schermmargin"><div class="video-container"><iframe src="https://www.youtube.com/embed/vngiKahrzcs" frameborder="0" allowfullscreen></iframe></div></div>
    
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
