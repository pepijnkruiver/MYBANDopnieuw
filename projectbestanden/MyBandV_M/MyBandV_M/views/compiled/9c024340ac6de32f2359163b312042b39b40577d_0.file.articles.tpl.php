<?php
/* Smarty version 3.1.30, created on 2017-06-14 14:48:38
  from "C:\wamp\www\MyBandV_M\MyBandV_M\views\articles.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_594130a6cc5cd6_14357905',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9c024340ac6de32f2359163b312042b39b40577d' => 
    array (
      0 => 'C:\\wamp\\www\\MyBandV_M\\MyBandV_M\\views\\articles.tpl',
      1 => 1497444517,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_594130a6cc5cd6_14357905 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_truncate')) require_once 'C:\\wamp\\www\\MyBandV_M\\MyBandV_M\\libs\\plugins\\modifier.truncate.php';
?>
<content class="wrap">

    <section>
        <div class="mainbar">
            <div class="opzij">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['result_list']->value, 'article');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
?>
                    <div class="mainbar2">
                        <article>
                            <h1><?php echo $_smarty_tpl->tpl_vars['article']->value['title'];?>
</h1>
                            <content><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['article']->value['content'],150);?>
<button id="<?php echo $_smarty_tpl->tpl_vars['article']->value['id'];?>
" type="button" class="btn btn-info btn-lg modalBtn" data-toggle="modal" data-target="<?php echo $_smarty_tpl->tpl_vars['article']->value['id'];?>
">Open Modal</button></content>
                        </article><br>
                    </div>
                
                    <div class="sidebar2">
                        <img src="images/article/<?php echo $_smarty_tpl->tpl_vars['article']->value['image'];?>
">
                    </div>
                
                <!-- Modaal scherm -->
                    <div id="mymodal<?php echo $_smarty_tpl->tpl_vars['article']->value['id'];?>
" class="modal" role="dialog">
                        <div class="modal-dialog">


                            <div class="modal-content">

                                  <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title"><?php echo $_smarty_tpl->tpl_vars['article']->value['title'];?>
</h4>
                                  </div>

                                  <div class="modal-body">
                                        <div class="modal-beschrijving"><p><p><?php echo $_smarty_tpl->tpl_vars['article']->value['date_created'];?>
</p><p><?php echo $_smarty_tpl->tpl_vars['article']->value['content'];?>
</p></p></div>
                                  </div>

                            </div>

                        </div>
                    </div>
                          <?php echo '<script'; ?>
> 
                                $('.modalBtn').click(function(){
                                    $('#mymodal' + this.id).show();
                                });
                                $('.close').click(function(){
                                    $('.modal').hide();
                                });
                         <?php echo '</script'; ?>
>
            
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
