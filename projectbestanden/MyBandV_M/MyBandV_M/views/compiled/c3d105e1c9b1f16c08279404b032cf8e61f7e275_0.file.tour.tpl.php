<?php
/* Smarty version 3.1.30, created on 2017-06-15 17:28:37
  from "C:\wamp\www\MyBandV_M\MyBandV_M\views\tour.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5942a7a590c405_40009289',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c3d105e1c9b1f16c08279404b032cf8e61f7e275' => 
    array (
      0 => 'C:\\wamp\\www\\MyBandV_M\\MyBandV_M\\views\\tour.tpl',
      1 => 1497540513,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5942a7a590c405_40009289 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_truncate')) require_once 'C:\\wamp\\www\\MyBandV_M\\MyBandV_M\\libs\\plugins\\modifier.truncate.php';
?>
<content class="wrap">

    <section>
        <div class="mainbar">
            <div class="opzij">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list_tour']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
                    <div class="mainbar3">
                        <article>
                            <h1><?php echo $_smarty_tpl->tpl_vars['article']->value['Name'];?>
</h1>
                            <h4><?php echo $_smarty_tpl->tpl_vars['article']->value['Date'];?>
</h4>
                            <content><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['article']->value['Place'],1000,'..',true,true);?>
</content>
                            
                        </article><br>
                    </div>
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

</content>

<?php }
}
